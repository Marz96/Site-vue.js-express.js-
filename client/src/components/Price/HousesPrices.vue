<template>
    <div class="main__container">
                <div class="main__item" v-for="house in houses">
                    <div class="item__top">
                            <img class="item__img" :src="house.img">
                        <router-link to="/book" class="item__btn"><div><span>Забронировать</span></div></router-link>
                    </div>
                    <div class="item__bottom">
                        <div class="item__name">
                            <span class="item__title">{{ house.type }}</span>
                            <div class="title__info">
                                <span>Мест: {{ house.seats }}</span>
                                <span>Дополнительных мест: {{ house.addit }}</span>
                                <span>Площадь: {{ house.square }}м<small><sup>2</sup></small></span>
                            </div>
                        </div>
                        <div class="img__list">
                            <img v-for="item in images" :src="item.img" alt="">
                        </div>
                        <div class="item__desc">
                            <p>
                                {{ house.description }}
                            </p>
                        </div>
                        <div class="item__schedule">
                            <span>{{ house.schedule1 }}</span>
                            <span>{{ house.schedule2 }}</span>
                        </div>
                    </div>
                </div>
    </div>
</template>

<script>
    import axios from 'axios'
    export default {
        created() {
            axios
                .get('http://localhost:3000/prices')
                .then((response) => {
                    this.houses = response.data
                })

            axios
                .get('http://localhost:3000/prices_img')
                .then((response) => {
                    this.images = response.data
                })  
        },
        data() {
            return {
                houses: [],
                images: []
            }
        }
    }
</script>

<style scoped>
    .main__container {
    display: grid;
    grid-template-rows: repeat(4, auto);
    width: 100%;
    border: 2px solid #CCAC7D;
}

.main__item {
    display: flex;
    border-bottom: 2px solid #CCAC7D;
    padding: 40px 30px;
}

.title__info span {
    font-size: 16px;
    font-weight: bold;
    color: #CCAC7D;
}

.title__info {
    display: flex;
    width: 100%;
    justify-content: space-between;
    margin-bottom: 25px;
    margin-top: 60px;
}

.item__title {
    font-size: 32px;
    font-weight: bold;
    color: #fff;
}

.item__img {
    width: 85%;
} 

.item__top {
    width: 55%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    justify-content: space-between;
}

.item__name {
    text-align: center;
}

.img__list img {
    width: 2vw;
}

.item__btn {
    width: 50%;
    height: 70px;
    border-radius: 10px;
    border: none;
    font-size: 28px;
    color: #fff;
    background-color: #CCAC7D;
    margin-top: 50px;
    text-decoration: none;
    display: flex;
    justify-content: center;
    align-items: center;
}

.item__bottom {
    width: 45%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.item__schedule {
    display: flex;
    flex-direction: column;
    font-size: 24px;
    font-weight: bold;
    color: #CCAC7D;
    text-align: center;
}

.img__list {
    display: grid;
    grid-template-rows: 1fr 1fr;
    grid-template-columns: repeat(8, 1fr);
    row-gap: 10px;
    width: 30vw;
    background-color: #D9D9D9;
    padding: 15px 0;
    justify-items: center;
    margin: 0 auto;
    margin-bottom: 30px;
}

.item__desc p {
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 30px;
    color: #fff;
    text-align: center;
}

@media screen and (max-width: 1200px) {

.main__item {
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 40px 30px;
}

.maim__top {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.item__img {
    width: 50vw;
}

.item__btn {
    width: 22vw;
    margin: 40px 0;
    height: 55px;
    font-size: 18px;
}

.item__bottom {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.item__name {
    text-align: center;
}

.item__title {
    font-size: 32px;
}

.title__info {
    width: 40vw;
    margin: 25px 0;
}

.title__info span {
    font-size: 16px;
}

.img__list {
    width: 40vw;
    margin: 0;
    margin-bottom: 30px;
}

.img__list img {
    width: 3vw;
}

.item__desc p {
    text-align: center;
    font-size: 18px;
    width: 55vw;
}

.item__schedule {
    font-size: 22px;
    width: 60vw;
    text-align: center;
}
}

@media screen and (max-width: 900px) {

.main__item {
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 40px 30px;
}

.maim__top {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.item__img {
    width: 50vw;
}

.item__btn {
    width: 25vw;
    height: 45px;
    font-size: 14px;
    margin: 40px 0;
}

.item__bottom {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.item__name {
    text-align: center;
}

.item__title {
    font-size: 26px;
}

.title__info {
    width: 40vw;
    margin: 25px 0;
}

.title__info span {
    font-size: 15px;
}

.img__list {
    width: 40vw;
    margin-bottom: 40px;
}

.img__list img {
    width: 3vw;
}

.item__desc p {
    font-size: 16px;
    width: 55vw;
}

.item__schedule {
    font-size: 18px;
    width: 60vw;
    text-align: center;
}
}

@media screen and (max-width: 600px) {
    .main__item {
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 40px 30px;
}

.maim__top {
    width: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
}

.item__img {
    width: 50vw;
}

.item__btn {
    width: 25vw;
    height: 35px;
    font-size: 11px;
    margin: 30px 0;
}

.item__bottom {
    display: flex;
    flex-direction: column;
    align-items: center;
}

.item__name {
    text-align: center;
}

.item__title {
    font-size: 22px;
}

.title__info {
    width: 40vw;
    margin: 25px 0;
}

.title__info span {
    font-size: 12px;
}

.img__list {
    width: 40vw;
    margin-bottom: 30px;
}

.img__list img {
    width: 3vw;
}

.item__desc p {
    font-size: 14px;
    width: 55vw;
}

.item__schedule {
    font-size: 14px;
    width: 60vw;
    text-align: center;
}

.main__column input,
.select {
    width: 22vw;
    height: 23px;
    font-size: 11px;
}
}

</style>