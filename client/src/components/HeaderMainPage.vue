<template>
    <header class="header">
        <div class="header__blackout"></div>
        <img :src="slides[this.currentIndex].img" class="img"  alt="">
        <div class="container">
            <div class="header__top">
                <img  @click="click" class="menu-burg display-none" src="../assets/img/menu-burg.svg" alt="menu-burg"> 
                <router-link to="/"><img class="header__logo-mobile " src="../assets/img/logo.svg" alt="logo"></router-link>
                <div class="display-none side__menu">
                    <ul class="side__list">
                        <li class="side__item"><router-link to="/about">о нас</router-link></li>
                        <li class="side__item"><router-link to="/book">бронь</router-link></li>
                        <li class="side__item"><router-link to="/blog">блог</router-link></li>
                        <li class="side__item"><router-link to="/prices">цены</router-link></li>
                    </ul>
                </div>
                <div class="header__contact">
                    <div><a href="tel:+72749364162">+72749364162</a></div>
                    <div><a href="mailto:zakat_solnza@gmail.com">zakat_solnza@gmail.com</a></div>
                </div>
                <div class="header__menu">
                    <ul class="list menu__list1">
                        <li class="list__item"><router-link to="/book">бронь</router-link></li>
                        <li class="list__item"><router-link to="/about">о нас</router-link></li>
                    </ul>
                    <li class="header__logo"><router-link to="/"><img id="logo" src="../assets/img/logo.svg" alt="logo"></router-link></li>
                    <ul class="list menu__list2">
                        <li class="list__item"><router-link to="/blog">блог</router-link></li>
                        <li class="list__item"><router-link to="/prices">цены</router-link></li>
                    </ul> 
                </div>
            </div>
        </div>
    </header>
</template>

<script>
import axios from 'axios';

    export default {
        name: 'HeaderMainPage',
        props: {
            slides: {
                type: Array
            }
        },
        data() {
            return {
                currentIndex: 0,
            }
        },
        mounted() {

                this.startAutoSlide();
            
        },
        methods: {
            click(event) {
                this.$el.querySelector('.side__menu').classList.toggle("display-none");
            },
            startAutoSlide() {
      setInterval(() => {
        this.currentIndex = (this.currentIndex + 1) % this.slides.length;
      }, 3000);
        },
    },
    created() {
        
    }
    }   
</script>

<style scoped>

.display-none {
    display: none;
}

    .header__logo-mobile {
    display: none;
}
    .header {
        position: relative;
        background-color: transparent;
        z-index: 1;
        width: 100%;
        aspect-ratio: 17/10;
    }

    .header__menu {
    display: flex;
    justify-content: space-around;
    align-items: center;
    width: 100%;
    }

    .slide {
        display: none;
        position: relative;
        background-color: white;
    }

    @keyframes slide {
        0% {opacity: 0; display: flex}
        100% {opacity: 0; display: flex}
    }

    .slide.active {
        display: flex;
        animation: slide 1s ease;
    }

    .slide.leave{
        animation: slide 1s ease;
        animation-direction: revert;
    }

    .header__blackout {
        position: absolute;
        width: 100%;
        background-color: #000;
        opacity: 0.6;
        height: -webkit-fill-available;
        z-index: 5;
    }

    .header__contact {
    padding-left: 8vw;
    z-index: 5;
}

.header__contact a {
    text-decoration: none;
    color: #fff;
    font-size: 18px;
}

.header__contact div {
    margin-bottom: 20px;
}

.header__contact div:last-child {
    margin-bottom: 0;
}

.img {
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 100%;
}

.list__item,
.header__logo  {
    list-style: none;
    z-index: 5;
    position: relative;
}

.list__item a {
    text-decoration: none;
    color: #fff;
    font-size: 24px;
}

.menu__list1,
.menu__list2 {
    display: flex;
    justify-content: space-around;
    width: 26vw;
    border-top: 2px solid #fff;
    padding-top: 15px;
    z-index: 5;
}

#logo {
    width: 80px;
}

@media screen and (max-width: 1200px) {
    #logo {
        width: 70px;
    }

    .header__top {
        padding-top: 35px;
    }

    .header__contact {
        padding-left: 11vw;
    }

    .header__contact a {
        font-size: 14px;
    }

    .header__contact div {
        margin-bottom: 10px;
    }

    .header__menu {
        justify-content: space-evenly;
    }

    .list__item a {
        font-size: 24px;
    }

    .menu__list1,
    .menu__list2 {
        width: 25vw;
    }
}

@media screen and (max-width: 900px) {
    .header__top {
        padding-top: 15px;
    }

    .header__contact div {
        margin-bottom: 3px;
    }

    .header__contact a {
        font-size: 9px;
    }

    .menu__list1,
    .menu__list2 {
        border-top: 1.5px solid #fff;
    }

    #logo {
        width: 50px;
    }

    .list__item a {
        font-size: 20px;
    }
}

@media screen and (max-width: 600px) {
    .header .container {
        padding: 0 20px;
    }
    .side__menu {
        z-index: 10;
        position: fixed;
        top: 0;
        left: 0;
        background-color: #000;
        opacity: 0.5;
        width: 35vw;
        height: 63vh;
        text-align: center;
    }

    .side__list {
        list-style: none;
        width: 100%;
        height: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .side__item {
        padding-top: 10px;
    }

    .side__item a {
        color: #fff;
        text-decoration: none;
        font-size: 28px;

    }
    .container {
        padding-top: 5px;
        padding-bottom: 5px;
    }

    .header__logo-mobile {
        display: block;
        position: relative;
        width: 8vw;
        z-index: 15;
    }

    .header__top a {
        margin: 0 auto;
    }

    .menu-burg {
        position: relative;
        z-index: 15;
        display: block;
        width: 8vw;
    }
    .header__top {
        display: flex;
        flex-direction: row;
        padding: 10px 0;
    }

    #logo {
        width: 35px;
    }

    .header__contact,
    .header__menu {
        display: none;
    }

    .header__contact div {
        margin-bottom: 3px;
    }

    .header__contact a {
        font-size: 6px;
    }

    .list__item a {
        font-size: 12px;
    }
}



</style>