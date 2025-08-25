<template>
    <section class="main__description" v-for="item in desc">
        <div class="description__decor"><img class="description__img" :src="item.img" alt=""></div>
        <div class="description__info-text">
            <div class="description__title"><span>{{ item.title }}</span></div>
            <div class="description__text"><p>{{ item.text }}</p></div>
        </div>
    </section>
</template>

<script>
import axios from 'axios'

    export default {
        mounted() {
            axios
                .get('http://localhost:3000/main_desc')
                .then((response) => {
                    this.desc = response.data
                })
                .catch(error => console.error('Произошла ошибка при получении данных:', error));
        },
        data() {
            return {
                desc: []
            }
        }
    }
</script>

<style scoped>

section {
    padding: 150px 0;
}

.line {
    width: 27vw;
    border: 2px solid #CCAC7D;
    height: 0px;
}

.main__description {
    padding-top: 200px;
    position: relative;
    z-index: 5;
    display: flex;
    align-items: center;
    width: 100%;
}

    .description__info-text {
    margin-left: 130px;
    color: #fff;
    width: 100%;
}

.description__title {
    font-size: 64px;
    margin-bottom: 60px;
    text-align: center;
}

.description__text {
    font-size: 32px;
}

.description__img {
    width: 27vw;
}

@media screen and (max-width: 1200px) {
    .description__img {
        width: 25vw;
    }

    .description__info-text {
        margin-left: 80px;
    }

    .description__title {
        margin-bottom: 30px;
        font-size: 32px;
        text-align: center;
    }

    .description__text {
        font-size: 22px;
        text-align: center;
    }

    .line {
        width: 25vw;
    }

    @media screen and (max-width: 900px) {
        .description__title {
            font-size: 26px;
        }

        .description__text {
            font-size: 16px;
        }

        .description__img {
            width: 25vw;
        }

        .line {
            width: 20vw;
        }

        .description__info-text {
            margin-left: 50px;
        }
    }

    @media screen and (max-width: 800px) {
        .line {
            border: 1px solid #CCAC7D;
        }
    }

    @media screen and (max-width: 600px) {
        .description__title {
            font-size: 22px;
        }

        .description__text {
            font-size: 14px;
        }

        .description__img {
            display: none;
        }

        .description__info-text {
            margin-left: 0;
        }

        .line {
            border: none;
        }
    }

    @media screen and (max-width: 400px) {
        .description__title {
        font-size: 16px;
        margin-bottom: 15px;
    }

    .description__text {
        font-size: 12px;
    }

    .description__info-text {
        margin-left: 30px;
    }
    }
}
</style>