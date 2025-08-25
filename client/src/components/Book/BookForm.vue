<template>
    <span class="main__title">Забронировать</span>
                <div class="main__container">
                    <form action="" class="form__container">
                        <div class="form__book">
                            <div class="main__column">
                                <label for="name">имя и фамилия</label>
                                <input id="name" v-model="formData.name" type="text">
                                <label for="name">дата заезда</label>
                                <input id="name" v-model="formData.date_check_in" type="date" placeholder="dd/mm/yyyy">
                                <label for="name">тип дома</label>
                                <select name="" class="select" v-model="formData.type">
                                    <option value="hytte">Hytte</option>
                                    <option value="a-frame">A-frame house</option>
                                    <option value="summer">Summer house</option>
                                    <option value="barn">Barn house</option>
                                </select>
                                <label for="name">количество взрослых</label>
                                <input id="name" v-model="formData.amount_of_adults" type="number">
                            </div>
                            <div class="main__column">
                                <label for="name">телефон</label>
                                <input id="name" v-model="formData.phone" type="number">
                                <label for="name">дата выезда</label>
                                <input id="name" v-model="formData.date_check_out" type="date" placeholder="dd/mm/yyyy">
                                <label for="name">количество комнат</label>
                                <select name="" class="select" v-model="formData.amount_of_rooms">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                </select>
                                <label for="name">количество детей</label>
                                <input id="name" v-model="formData.amount_of_children" type="number">
                            </div>
                        </div>
                        <div class="main__btn"><button @click="saveToDB">Забронировать</button></div>
                    </form>
                </div>
</template>

<script>
import axios from 'axios'

    export default {
        data() {
            return {
                formData: {
                    name: '',
                    date_check_in: '',
                    type: '',
                    amount_of_adults: '',
                    phone: '',
                    date_check_out: '',
                    amount_of_rooms: '',
                    amount_of_children: ''
                }
            }
        },
        methods: {
            saveToDB() {
                axios
                    .post('http://localhost:3000/book', this.formData)
                    .then((response) => {
                        console.log('Данные успешно отправлены')
                    })
                    .catch((error) => {
                        console.log('Ошибка при сохранении данных', error)
                    })

                axios
                    .post('http://localhost:5000/book_sendMail', this.formData)
                    .then((response) => {
                        console.log('Данные успешно отправлены')
                    })
                    .catch((error) => {
                        console.log('Ошибка при сохранении данных', error)
                    })
            }
        }
    }
</script>

<style scoped>
    .main__title {
    display: flex;
    justify-content: center;
    color: #fff;
    font-size: 56px;
    margin-bottom: 80px;
}

.form__container {
    display: flex;
    padding: 0 20px;
    flex-direction: column;
    justify-content: center;
    background-color: #D4D4D4;
    width: 60vw;
}

.form__book {
    padding: 40px 0;
    display: flex;
    justify-content: center;
    column-gap: 30px;
}

.main__column {
    display: flex;
    flex-direction: column;
}

label {
    margin-bottom: 5px;
    font-size: 20px;
}

.main__column input,
.select {
    border: 2px solid #2B4439;
    width: 25vw;
    height: 40px;
    margin-bottom: 20px;
    font-size: 20px;
    color: #ACACAC;
}

.main__column input:last-child {
    margin-bottom: 0;
}

.main__container {
    width: 100%;
    display: flex;
    justify-content: center;
}

.main__btn {
    align-self: center;
    margin-bottom: 40px;
}

.main__btn button {
    background-color: #2B4439;
    color: #fff;
    width: 15vw;
    height: 50px;
    border: none;
    font-size: 20px;
    padding: 0 5px;
}

@media screen and (max-width: 1200px) {

    .main__column input,
    .select {
        font-size: 16px;
    }
    .main__title {
        margin-bottom: 130px;
    }

    .main__btn button {
        font-size: 20px;
        width: 20vw;
    }

    .menu__list1,
    .menu__list2 {
        width: 30%;
        padding-top: 10px;
        justify-content: space-around;
        border-top: 2px solid #fff;
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
    .main__column input,
    .select {
        width: 30vw;
        height: 30px;
        font-size: 15px;
    }

    .form__container {
        width: 70vw;
    }

    label {
        font-size: 14px;
    }

    .main__btn {
        margin-bottom: 25px;
    }

    .main__btn button {
        font-size: 15px;
    }

    .main__title {
        font-size: 38px;
        margin-bottom: 70px;
    }
}

@media screen and (max-width: 600px) {
    .main__btn button {
        font-size: 20px;
        width: 20vw;
    }

    .main__column input,
    .select {
        width: 100%;
        height: 23px;
        font-size: 11px;
    }

    .main__column input:last-child,
    .main__column input {
        margin-bottom: 20px;
    }

    label {
        font-size: 12px;
    }

    .main__btn button {
        width: 55vw;
        height: 40px;
        font-size: 14px;
    }

    .main__btn {
        margin-bottom: 30px;
    }

    .main__title {
        font-size: 32px;
        margin-bottom: 40px;
    }

    .menu__list1,
    .menu__list2 {
        padding-top: 3px;
        border-top: 1.5px solid #fff;
    }

    .form__container {
        width: 55vw;
    }

    .form__book {
        display: flex;
        flex-direction: column;
        padding-bottom: 0;
        padding-top: 20px;
    }
}
</style>