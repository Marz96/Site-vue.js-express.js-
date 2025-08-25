<template>
    <header class="header">
        <div class="container">
            <div class="header__top">
                <img  @click="click" class="menu-burg display-none" src="../assets/img/menu-burg.svg" alt="menu-burg">
                <router-link to="/"><img class="header__logo-mobile" src="../assets/img/logo.svg" alt="logo"></router-link>
                <div class="side__menu display-none">
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
    export default {
        name: 'Header',   
        methods: {
            click(event) {
                this.$el.querySelector('.side__menu').classList.toggle("display-none");
            }
        }
    }
</script>

<style scoped>

    .display-none {
        display: none;
    }
    .header {
    background-color: #b69b72;
    z-index: 1;
    position: relative;
}

.header__logo-mobile {
    display: none;
}

.header__top {
    display: flex;
    flex-direction: column;
    padding-top: 35px;
    padding-bottom: 20px;
}

.header__menu {
    display: flex;
    justify-content: space-around;
    align-items: center;
}

.header__contact {
    padding-left: 7vw;
}

.header__contact a {
    text-decoration: none;
    color: #fff;
    font-size: 16px;
}

.header__contact div {
    margin-bottom: 20px;
}

.header__contact div:last-child {
    margin-bottom: 0;
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
    width: 30%;
    border-top: 2px solid #fff;
    padding-top: 15px;
}

#logo {
    width: 70px;
}



@media screen and (max-width: 1200px) {

    #logo {
        width: 50px;
    }

    .header__top {
        padding-top: 30px;
        padding-bottom: 15px;
    }

    .header__contact {
        padding-left: 7vw;
    }

    .header__contact a {
        font-size: 14px;
    }

    .header__contact div {
        margin-bottom: 10px;
    }

    .header__menu {
        justify-content: space-evenly;
        margin-top: 10px;
    }

    .list__item a {
        font-size: 22px;
    }
}

@media screen and (max-width: 900px) {

    .container {
        padding: 0px 50px;
    }

    .menu__list1,
    .menu__list2 {
        border-top: 1.5px solid #fff;
    }

    .header__top {
        padding-top: 15px;
    }

    .header__contact a {
        font-size: 10px;
    }

    .header__contact {
        padding-left: 9vw;
    }

    #logo {
        width: 30px;
    }

    .list__item a {
        font-size: 18px;
    }
}

@media screen and (max-width: 600px) {

    .menu-burg {
        display: block;
        z-index: 5;
        width: 8vw;
    }

    .side__menu {
        position: fixed;
        top: 65px;
        left: 0;
        background-color: #b69b72;
        width: 35vw;
        height: 50vh;
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
        width: 8vw;
    }

    .header__top a {
        margin: 0 auto;
    }

    .menu-burg {
        display: block;
        z-index: 5;
        width: 8vw;
    }
    .header__top {
        display: flex;
        flex-direction: row;
        padding: 10px 0;
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