const mysql = require('mysql');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '', // ваш пароль, если установлен
    database: 'house',
    connectionLimit: 10
});

// Тестовое подключение при запуске
pool.getConnection((err, connection) => {
    if (err) {
        console.error('Ошибка подключения:');
        console.error('Код ошибки:', err.code);
        console.error('Сообщение:', err.message);
        return;
    }

    console.log(`Успешное подключение. ID соединения: ${connection.threadId}`);
    connection.release(); // Возвращаем соединение в пул
});

// Обработчик ошибок пула
pool.on('error', (err) => {
    console.error('Ошибка в пуле соединений:', err);
});

module.exports = pool;