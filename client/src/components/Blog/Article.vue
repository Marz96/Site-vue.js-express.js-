<template>
    <section class="article">
        <div class="container">
            <div class="article__view">
                <img class="article__img" :src="current.img" alt="">
                <div class="article__info">
                    <span class="article__title">{{ current.title }}</span>
                    <p class="article__text">{{ current.text }}</p>
                </div>
            </div>
            
        </div>
    </section>
</template>

<script>
import axios from 'axios';
    export default {
        name: 'articles',
        data() {
            return {
                articleList: [],
                current: {img: '', title: '', text: ''}
            }
        },
        mounted() {
                axios.get('http://localhost:3000/articles')
                .then(response => {
                    this.articleList = response.data;
                    if (this.articleList.length > 0) {
                        this.current = this.articleList.find((post) => this.$route.params.id == post.id);
                        console.log(this.current)
                    } else {
                        console.log('Данные еще не загружены');
                    }
                })
                .catch(error => console.error('Ошибка загрузки данных:', error));
        }
    }
</script>

<style scoped>

.article{
    width: 100%;
    height: 100%;
    background-color: #1A2922;
    padding: 100px 0;
}

.container {
    padding: 0 100px;
}

.article__view {
    background-color: #fff;
    padding: 50px 70px;
    border-radius: 30px;
    border: 5px solid #CCAC7D;
    display: flex;
}

.article__img {
    width: 25vw;
}

.article__info {
    display: flex;
    flex-direction: column;
    padding-left: 3vw;
}

.article__title {
    font-size: 48px;
    text-align: center;
    font-weight: 700;
}

.article__text {
    font-size: 26px;
    text-align: center;
    padding-top: 3vh;
}

@media screen and (max-width: 1600px) {

    .article__img {
        width: 22vw;
    }
    .article__title {
        font-size: 42px;
        text-align: center;
        font-weight: 700;
    }

    .article__text {
        font-size: 22px;
        text-align: center;
        padding-top: 3vh;
    }
}

@media screen and (max-width: 1200px) {
    .article__img {
        width: 18vw;
    }
    .article__title {
        font-size: 32px;
        text-align: center;
        font-weight: 700;
    }

    .article__text {
        font-size: 16px;
        text-align: center;
        padding-top: 3vh;
    }
}

@media screen and (max-width: 900px) {

    .article__view {
        padding: 20px 30px;
    }

    .article__img {
        display: none;
    }
    .article__title {
        font-size: 22px;
        text-align: center;
        font-weight: 700;
    }

    .article__text {
        font-size: 12px;
        text-align: center;
        padding-top: 3vh;
    }
}

@media screen and (max-width: 600px) {

    .article__title {
        font-size: 15px;
        text-align: center;
        font-weight: 700;
    }

    .article__text {
        font-size: 8px;
        text-align: center;
        padding-top: 3vh;
    }
}

@media screen and (max-width: 400px) {
    .article__view {
        padding: 10px 20px;
    }

    .article__title {
        font-size: 10px;
        text-align: center;
        font-weight: 700;
    }

    .article__text {
        font-size: 7px;
        text-align: center;
        padding-top: 3vh;
    }
}

</style>