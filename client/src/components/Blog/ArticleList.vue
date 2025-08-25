<template>
    <section class="main__list-article">
        <article class="main__item-article" v-for="article in articles">
            <div class="main__container">
                <img :src="article.img" alt="">
                <div class="main__read">
                    <p>{{ article.text }}</p>
                    <RouterLink :to="`/blog/${article.id}`"><span>читать</span></RouterLink>
                </div>
                <div class="main__blackout"></div>
            </div>
        </article>
    </section>
</template>

<script>
    import axios from 'axios'
    export default {
        mounted() {
            axios
                .get('http://localhost:3000/blog')
                .then((response) => {
                    this.articles = response.data
                })
                .catch(error => console.error('Произошла ошибка при получении данных:', error));
        },
        data() {
            return {
                articles: []
            }
        }
    }
</script>

<style scoped>
.main__list-article {
    width: inherit;
    justify-content: center;
    display: grid;
    row-gap: 60px;
    column-gap: 50px;
    padding: 100px 0;
    grid-template-columns: 1fr 1fr 1fr;
    grid-template-rows: auto, auto;
    width: 100%;
}

.main__item-article img {
    position: absolute;
    z-index: 1;
    height: 100%;
    right: 0;
    aspect-ratio: 16/23;
}
.main__blackout {
    position: absolute;
    z-index: 1;
    background-color: #000;
    opacity: 0.6;
    bottom: 0;
    height: 200px;
    width: 100%;
    border-bottom-right-radius: 15px;
    border-bottom-left-radius: 15px;
}

.main__read {
    position: absolute;
    z-index: 5;
    bottom: 20px;
    color: #fff;
    padding: 5px 20px;
}

.main__read p {
    font-size: 24px;
    margin-bottom: 20px;
}

.main__read span:hover {
    color: #CCAC7D;
}

.main__read span {
    font-size: 18px;
    color: #fff;
}

.main__read a {
    text-decoration: none;
}

.main__container {
    position: relative;
    height: 400px;
    border: 1px solid #000;
    border-radius: 20px;
    margin: 0 auto;
    aspect-ratio: 16/23;
}

@media screen and (max-width: 1200px) {
    .main__container {
        height: 300px;
    }

    .main__list-article {
        column-gap: 50px;
        row-gap: 60px;
    }

    .main__read p {
        font-size: 20px;
    }

    .main__read span {
        font-size: 16px;
    } 

    .main__blackout {
        height: 160px;
    }
}

@media screen and (max-width: 900px) {

    .main__item-article img {
        aspect-ratio: 16/23;
    }
    .main__container {
        height: 350px;
    }

    .main__list-article {
        column-gap: 30px;
        row-gap: 40px;
    }

    .main__read p {
        font-size: 20px;
    }

    .main__read span {
        font-size: 16px;
    }

    .main__blackout {
        height: 150px;
    }

    .main__list-article {
        grid-template-columns: 1fr 1fr;
        grid-template-rows: auto, auto, auto;
    }
}

@media screen and (max-width: 600px) {
    .main__list-article {
        column-gap: 30px;
        row-gap: 40px;
    }

    .main__read p {
        font-size: 16px;
    }

    .main__read span {
        font-size: 12px;
    }

    .main__blackout {
        height: 130px;
    }

    .main__list-article {
        grid-template-columns: 1fr;
        grid-template-rows: auto, auto, auto, auto;
    }
    .main__list-article {
        justify-items: center;
    }
}

@media screen and (max-width: 400px) {

article {
    height: 35vh;
}

.main__container {
    height: 100%;
}
.main__read p {
    font-size: 14px;
}

.main__read span {
    font-size: 10px;
}
}
</style>