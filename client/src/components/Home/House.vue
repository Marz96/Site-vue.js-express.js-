<template>
    <section class="house">
        <div class="container">
            <div class="house__view">
                <img :src="currentHouse.img" class="house__img" alt="">
                <div class="house__info">
                    <span class="house__title">{{ currentHouse.title }}</span>
                    <p class="house__text">{{ currentHouse.text }}</p>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
import axios from 'axios'
    export default {
        name: 'house',
        data() {
            return {
                houseList: [],
                currentHouse: {img: '', title: '', text: ''}
            }
        },
        mounted() {
                axios.get('http://localhost:3000/house')
                .then(response => {
                    this.houseList = response.data;
                    if (this.houseList.length > 0) {
                        this.currentHouse = this.houseList.find((post) => this.$route.params.id == post.id);
                        console.log(this.currentHouse)
                    } else {
                        console.log('Данные еще не загружены');
                    }
                })
                .catch(error => console.error('Ошибка загрузки данных:', error));
        }
    }
</script>
    
<style scoped>

.house{
    width: 100%;
    height: 100%;
    background-color: #1A2922;
    padding: 100px 0;
}

.container {
    padding: 0 100px;
}

.house__view {
    background-color: #fff;
    padding: 30px 50px;
    border-radius: 30px;
    border: 5px solid #CCAC7D;
    display: flex;
}

.house__img {
    width: 40%;
}

.house__info {
    display: flex;
    flex-direction: column;
    padding-left: 3vw;
}

.house__title {
    font-size: 48px;
    text-align: center;
    font-weight: 700;
}

.house__text {
    font-size: 26px;
    text-align: center;
    padding-top: 3vh;
}

@media screen and (max-width: 1600px) {

    .house__img {
        width: 35%;
    }
    .house__title {
        font-size: 42px;
        text-align: center;
        font-weight: 700;
    }

    .house__text {
        font-size: 22px;
        text-align: center;
        padding-top: 3vh;
    }
}

@media screen and (max-width: 1200px) {
    .house__img {
        width: 30%;
    }
    .house__title {
        font-size: 32px;
        text-align: center;
        font-weight: 700;
    }

    .house__text {
        font-size: 16px;
        text-align: center;
        padding-top: 3vh;
    }
}

@media screen and (max-width: 900px) {

    .house__view {
        padding: 20px 30px;
    }

    .house__img {
        display: none;
    }
    .house__title {
        font-size: 22px;
        text-align: center;
        font-weight: 700;
    }

    .house__text {
        font-size: 12px;
        text-align: center;
        padding-top: 3vh;
    }
}

@media screen and (max-width: 600px) {

    .house__title {
        font-size: 15px;
        text-align: center;
        font-weight: 700;
    }

    .house__text {
        font-size: 8px;
        text-align: center;
        padding-top: 3vh;
    }
}

@media screen and (max-width: 400px) {
    .house__view {
        padding: 10px 20px;
    }

    .house__title {
        font-size: 10px;
        text-align: center;
        font-weight: 700;
    }

    .house__text {
        font-size: 7px;
        text-align: center;
        padding-top: 3vh;
    }
}

</style>