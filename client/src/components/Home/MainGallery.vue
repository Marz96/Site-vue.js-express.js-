<template>
    <section class="main__gallery">
        <div class="gallery__title">
            <div class="line"></div>
            <span>Галерея домов</span>
            <div class="line"></div>
        </div>
        <div class="gallery__img">
            <img v-for="item in gallery" :class="item.class" :src="item.img" alt="">
           
        </div>
    </section>
</template>

<script>
import axios from 'axios'

    export default {
        mounted() {
            axios
                .get('http://localhost:3000/main_gallery')
                .then((response) => {
                    this.gallery = response.data
                })
                .catch(error => console.error('Произошла ошибка при получении данных:', error));
        },
        data() {
            return {
                gallery: []
            }
        }
    }
</script>

<style scoped>

section:first-child {
    padding-top: 150px;
}

section {
    padding-bottom: 150px;
}


.line {
    width: 27vw;
    border: 2px solid #CCAC7D;
    height: 0px;
}

.gallery__title {
    font-size: 42px;
    text-align: center;
    margin-bottom: 90px;
}

.main__gallery {
    position: relative;
    z-index: 5;
}

.img-30 {
    width: 30vw;
}

.img-40 {
    width: 45vw;
}

.gallery__title {
    color: #fff;
    text-align: end;
    margin-bottom: 140px;
    display: flex;
    align-items: center;
    justify-content: space-around;
}

.gallery__img {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    row-gap: 55px;
    column-gap: 55px;
}

@media screen and (max-width: 1200px) {
    .gallery__title {
        font-size: 32px;
        justify-content: space-around;
    }

    .gallery__img {
        justify-content: center;
        row-gap: 40px;
        column-gap: 40px;
    } 

    .img-30 {
        width: 30vw;
    }

    .img-40 {
        width: 40vw;
    }

    .line {
        width: 25vw;
    }
}

@media screen and (max-width: 900px) {
    .gallery__title {
        font-size: 24px;
        text-align: center;
        margin-bottom: 70px;
    }

    .line {
        width: 20vw;
    }

    .gallery__img {
        row-gap: 20px;
        column-gap: 20px;
    }
}

@media screen and (max-width: 800px) {
    .line {
        border: 1px solid #CCAC7D;
    }
}

@media screen and (max-width: 600px) {
    .gallery__title {
        font-size: 26px;
        text-align: center;
        margin-bottom: 60px;
    }

    .line {
        border: none;
    }
}

@media screen and (max-width: 400px) {
    .gallery__title {
        font-size: 18px;
        margin-bottom: 40px;
    }

    .line {
        border: none;
    }

    .gallery__img {
        row-gap: 10px;
        column-gap: 10px;
    }
}

</style>