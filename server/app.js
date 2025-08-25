const express = require('express')
const cors = require('cors')
const bodyParser = require('body-parser')
const db = require('./db')
const nodemailer = require('nodemailer')

const app = express()

app.use(bodyParser.json())
app.use(cors())
app.use(express.json())
app.use(express.static('public'))
app.use(express.urlencoded({ extended: true }))

// Универсальный обработчик запросов к БД
const handleDBQuery = (query, params, res) => {
    db.query(query, params || [], (err, results) => {
        if (err) {
            console.error('Database error:', err)
            return res.status(500).json({ error: 'Database error' })
        }
        res.json(results)
    })
}

// Роуты для получения данных
app.get('/about', (req, res) => handleDBQuery('SELECT * FROM about', null, res))
app.get('/blog', (req, res) => handleDBQuery('SELECT * FROM blog', null, res))
app.get('/prices', (req, res) => handleDBQuery('SELECT * FROM prices', null, res))
app.get('/prices_img', (req, res) => handleDBQuery('SELECT * FROM img_prices', null, res))
app.get('/main_gallery', (req, res) => handleDBQuery('SELECT * FROM main_gallery', null, res))
app.get('/main_desc', (req, res) => handleDBQuery('SELECT * FROM main_desc', null, res))
app.get('/type_of_house', (req, res) => handleDBQuery('SELECT * FROM type_of_house', null, res))
app.get('/home_slider', (req, res) => handleDBQuery('SELECT * FROM home_slider', null, res))
app.get('/articles', (req, res) => handleDBQuery('SELECT * FROM article', null, res))
app.get('/house', (req, res) => handleDBQuery('SELECT * FROM typeHouse', null, res))
app.get('/social_net', (req, res) => handleDBQuery('SELECT * FROM social_net', null, res))

// Роуты для добавления данных
app.post('/book', (req, res) => {
    const { name, date_check_in, type, amount_of_adults, phone, date_check_out, amount_of_rooms, amount_of_children } = req.body
    handleDBQuery(
        'INSERT INTO book (name, date_check_in, type, amount_of_adults, phone, date_check_out, amount_of_rooms, amount_of_children) VALUES (?, ?, ?, ?, ?, ?, ?, ?)',
        [name, date_check_in, type, amount_of_adults, phone, date_check_out, amount_of_rooms, amount_of_children],
        res
    )
})

app.post('/question_form', (req, res) => {
    const { name, email, text } = req.body
    handleDBQuery(
        'INSERT INTO quest_form (name, email, text) VALUES (?, ?, ?)',
        [name, email, text],
        res
    )
})

// Настройка почтового клиента
const transporter = nodemailer.createTransport({
    host: 'smtp.mail.ru',
    port: 465,
    secure: true,
    auth: {
        user: 'cher_anastasia05@mail.ru',
        pass: '71p8a4Gy0zpkQzA7ZF8s'
    }
})

// Роуты для отправки email
app.post('/send_to_email', (req, res) => {
    const mailOptions = {
        from: 'cher_anastasia05@mail.ru',
        to: req.body.email,
        subject: 'Leafy lodge - аренда домов',
        text: `Спасибо за ваш вопрос, ${req.body.name}. Мы свяжемся с вами в ближайшее время.`
    }

    transporter.sendMail(mailOptions, (err, info) => {
        if (err) return res.status(500).json({ error: 'Email sending failed' })
        res.json({ success: true, message: 'Email sent successfully' })
    })
})

app.post('/book_sendMail', (req, res) => {
    const mailOptions = {
        from: 'cher_anastasia05@mail.ru',
        to: 'cher_anastasia05@mail.ru',
        subject: 'Leafy lodge - новый заказ',
        text: `Оформлен заказ:
      Имя: ${req.body.name}
      Дом: ${req.body.type}
      Комнат: ${req.body.amount_of_rooms}
      Взрослых: ${req.body.amount_of_adults}
      Детей: ${req.body.amount_of_children}
      Заезд: ${req.body.date_check_in}
      Выезд: ${req.body.date_check_out}
      Телефон: ${req.body.phone}`
    }

    transporter.sendMail(mailOptions, (err, info) => {
        if (err) return res.status(500).json({ error: 'Email sending failed' })
        res.json({ success: true, message: 'Email sent successfully' })
    })
})

app.listen(process.env.PORT || 3000)