<template>
    <footer class="footer">
        <div class="container footer__container">
            <div class="footer__contact">
                <div id="map"></div>
                <div class="footer__adress">
                    <div class="adress__item">Екатеринбург, ул. 8 ноября, 5</div>
                    <div class="adress__item">dhdufu@gmail.com</div>
                    <div class="adress__item">84788324785543</div>
                </div>
                <div class="footer__social-networks">
                    <span>Follow us: </span>
                    <ul class="footer__social-networks__list">
                        <li class="footer__social-networks__item" ><img src="@/assets/img/sn1.svg" alt=""></li>
                        <li class="footer__social-networks__item" ><img src="@/assets/img/sn2.svg" alt=""></li>
                        <li class="footer__social-networks__item" ><img src="@/assets/img/sn3.svg" alt=""></li>
                        <li class="footer__social-networks__item" ><img src="@/assets/img/sn4.svg" alt=""></li>
                    </ul>
                </div>
            </div>
            <div class="footer__questions-form">
                <div class="footer__title"><span>Остались вопросы?</span></div>
                <div class="footer__form">
                    <form class="form">
                        <ul class="footer__list">
                            <li class="footer__item"><input class="input" v-model="formData.name" type="text" placeholder="Имя"></li>
                            <li class="footer__item"><input class="input" v-model="formData.email" type="email" placeholder="Email"></li>
                            <li class="footer__item"><textarea class="textarea" v-model="formData.text" cols="24" rows="5" placeholder="Введите ваш вопрос"></textarea></li>
                            <li class="footer__item"><button @click="sendToEmail" class="btn">Отправить</button></li>
                        </ul>
                    </form>
                </div>
            </div>
        </div>
    </footer>
</template>

<script>
import axios from 'axios'

    export default {
        name: 'Footer',
        data() {
            return {
                formData: {
                    name: '',
                    email: '',
                    text: ''
                },
                socialNet: []
            }
        },
        methods: {
            sendToEmail() {
                axios
                    .post('http://localhost:3000/send_to_email', this.formData)
                    .then((response) => {
                        console.log('Данные успешно отправлены')
                    })
                    .catch((error) => {
                        console.log('Ошибка при сохранении данных', error)
                    })
                axios
                    .post('http://localhost:5000/question_form', this.formData)
                    .then((response) => {
                        console.log('Данные успешно отправлены')
                    })
                    .catch((error) => {
                        console.log('Ошибка при сохранении данных', error)
                    })
                axios
                    .post('http://localhost:5000/social_net')
                    .then((response) => {
                        this.socialNet = response.data
                    })
                    .catch((error) => {
                        console.log('Ошибка при сохранении данных', error)
                    })
            }
        }
    }
</script>

<style scoped>

.footer__container {
    background-color: #63493F;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 30px 50px;
}

.ya_map {
	font-family: arial;
	font-size: 10px;
	color: #454545;
}
 
#map {
	width: 660px;
	height: 300px;
    padding-bottom: 40px;
}

.footer__adress {
    margin-bottom: 40px;
    font-size: 28px;
    color: #fff;
}

.adress__item {
    margin-bottom: 25px;
}

.adress__item:last-child {
    margin-bottom: 0px;
}

.footer__title {
    margin-bottom: 20px;
    text-align: center;
}

.footer__title span {
    color: #fff;
    font-size: 44px;
}

.footer__social-networks span {
    font-size: 44px;
    color: #fff;
}

.footer__social-networks__list {
    display: flex;
}

.footer__social-networks__item {
    list-style: none;
    margin-right: 20px;
}

.footer__social-networks__item:last-child {
    margin-right: 0px;
}

.footer__list {
    list-style: none;
}

.footer__form {
    width: 25vw;
    height: 520px;
    background-color: #D4D4D4;
    padding: 25px 35px;
}

.footer__item {
    display: flex;
    justify-content: center;
}

.footer__item:last-child {
    text-align: center;
}

.form {
    display: flex;
    justify-content: center;
}

input {
    width: 25vw;
    height: 80px;
    border-radius: 20px;
    margin-bottom: 35px;
    padding-left: 15px;
    font-size: 24px;
    border: none;
}

textarea {
    width: 25vw;
    border-radius: 20px;
    padding-left: 20px;
    padding-top: 15px;
    font-size: 24px;
    margin-bottom: 35px;
}

.btn {
    width: 200px;
    height: 60px;
    background-color: #CCAC7D;
    border-radius: 30px;
    font-size: 20px;
    color: #fff;
    border: none;
}


@media screen and (max-width: 1200px) {

    #map {
        width: 350px;
    }
    .footer__container {
        padding-top: 30px;
        padding-bottom: 30px;
    }

    .footer__title span {
        font-size: 36px;
    }

    .footer__form {
        height: 440px;
    }

    .textarea {
        font-size: 18px;
    }

    .input {
        font-size: 18px;
        height: 55px;
    }
}

@media screen and (max-width: 900px) {

    #map {
        width: 450px;
    }
    .footer__map {
        width: 50vw;
        height: 240px;
    }

    .footer__title span {
        font-size: 32px;
    }

    .footer__container {
        padding: 50px 0;
        display: flex;
        flex-direction: column;
    }

    .footer__contact {
        margin-bottom: 40px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .adress__item {
        text-align: center;
    }

    .footer__social-networks {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .footer__form {
        height: 420px;
    }

    .input {
        height: 50px;
        font-size: 18px;
    }

    .textarea {
        font-size: 18px;
    }

    .main__column input,
    .select {
        width: 30vw;
        height: 30px;
        font-size: 15px;
    }

    .form__container {
        width: 70vw;
    }

    .btn {
        width: 150px;
        height: 45px;
        font-size: 16px;
    }
}

@media screen and (max-width: 600px) {

    #map {
        width: 300px;
    }
    .container {
        padding: 50px 0;
        display: flex;
        flex-direction: column;
    }

    .footer__contact {
        margin-bottom: 40px;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .footer__questions-form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .adress__item {
        text-align: center;
    }

    .footer__social-networks {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    .footer__form {
        width: 42vw;
        height: 370px;
    }

    .input {
        width: 40vw;
        height: 45px;
        margin-bottom: 25px;
        font-size: 18px;
    }

    .textarea {
        width: 40vw;
        font-size: 18px;
    }

    .btn {
        width: 170px;
        height: 45px;
        font-size: 16px;
    }
}

</style>