<template>
    <section class="main__type-of-house">
        <div class="type-of-house__title">
            <div class="line"></div>
            <span>Варианты размещения</span>
            <div class="line"></div>
        </div>
        <div class="type-of-house__img">
                <div class="type-of-house__item" v-for="item in houses" :key="item.id">
                    <div class="type-of-house__info">
                        <div>{{ item.type }}</div>
                        <div class="details">
                            <RouterLink class="details__link" :to="`/home/${item.id}`">подробнее
                                <svg width="51" id="details__arrow" height="9" viewBox="0 0 51 9" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path id="details-arrow" d="M50.3548 4.94943C50.5485 4.75261 50.5459 4.43604 50.3491 4.24235L47.1417 1.08601C46.9449 0.892317 46.6283 0.894858 46.4346 1.09168C46.2409 1.2885 46.2434 1.60508 46.4403 1.79876L49.2913 4.6044L46.4857 7.45544C46.292 7.65226 46.2945 7.96883 46.4913 8.16252C46.6882 8.35621 47.0047 8.35367 47.1984 8.15685L50.3548 4.94943ZM0.00401274 5.49998L50.0024 5.09871L49.9944 4.09874L-0.00401274 4.50002L0.00401274 5.49998Z" fill="white"/>
                                </svg>
                            </RouterLink>
                        </div>
                    </div>
                    <div class="type-of-house__blackout"></div>
                    <img :src="item.img"  alt="">
                </div>
        </div>
    </section>
</template>

<script>
import axios from 'axios'
export default {
    mounted() {
        axios
            .get('http://localhost:3000/type_of_house')
            .then((response) => {
                this.houses = response.data
            })
            .catch(error => console.error('Произошла ошибка при получении данных:', error));
    },
    data() {
        return {
            houses: []
        }
    }
}
     
</script>

<style scoped>

section {
    padding-bottom: 150px;
}

.line {
    width: 27vw;
    border: 2px solid #CCAC7D;
    height: 0px;
}

.type-of-house__title {
    font-size: 42px;
    text-align: center;
    margin-bottom: 90px;
}

    .main__type-of-house {
    position: relative;
    z-index: 5;
}

.type-of-house__item img {
    width: 30vw;
}

.type-of-house__title {
    color: #fff;
    text-align: end;
    margin-bottom: 140px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.type-of-house__img {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    row-gap: 70px;
    column-gap: 90px;
}

.type-of-house__info {
    position: absolute;
    height: 100px;
    width: 30vw;
    bottom: 30px;
    display: flex;
    justify-content: space-evenly;
    color: #fff;
    font-size: 26px;
    z-index: 5;
}

.details {
    align-self: flex-end;
    font-size: 16px;
    text-decoration: none;
}

.details__link {
    display: flex;
    align-items: center;
    text-decoration: none;
    color: #fff;
}

.details__link:hover {
    color: #CCAC7D;
}

.details__link:hover svg  #details-arrow{
    fill: #CCAC7D;
}

#details__arrow {
    padding-left: 6px;
}

.type-of-house__item {
    position: relative;
}

.type-of-house__blackout {
    width: 30vw;
    position: absolute;
    background-color: #000;
    opacity: 0.5;
    height: 180px;
    bottom: 0;
}

@media screen and (max-width: 1200px) {
    .line {
        width: 25vw;
    }

    .type-of-house__title {
        font-size: 32px;
    }

    .type-of-house__img {
        display: grid;
        grid-template-rows: 1fr 1fr;
        grid-template-columns: 1fr 1fr;
        justify-items: center;
        column-gap: 0;
    }

    .type-of-house__info {
        align-items: center;
        font-size: 22px;
        width: 30vw;
    }

    .type-of-house__blackout {
        height: 120px;
    }

    .details {
        font-size: 14px;
    }

    svg {
        width: 35px;
    }

    .type-of-house__item img,
    .type-of-house__blackout {
        width: 30vw;
    }
}

@media screen and (max-width: 900px) {
    .line {
        width: 20vw;
    }

    .type-of-house__img {
        row-gap: 50px;
    }

    .type-of-house__info {
        justify-content: space-evenly;
        font-size: 18px;
        width: 35vw;
    }

    .details__link {
        font-size: 12px;
    }
    .type-of-house__item img,
    .type-of-house__blackout {
        width: 35vw;
    }

    svg {
        width: 30px;
    }

    .type-of-house__title {
        font-size: 24px;
        text-align: center;
        margin-bottom: 70px;
    }
}

@media screen and (max-width: 800px) {
    .type-of-house__info {
        font-size: 16px;
    }

    .details__link {
        font-size: 12px;
    }

    .line {
        border: 1px solid #CCAC7D;
    }
}

@media screen and (max-width: 600px) {
    .type-of-house__title {
        font-size: 26px;
        text-align: center;
        margin-bottom: 60px;
    }

    .type-of-house__item img,
    .type-of-house__blackout {
        width: 60vw;
    }

    .type-of-house__blackout {
        height: 100px;
    }

    .type-of-house__info {
        font-size: 20px;
        bottom: 10px;
        flex-direction: column;
        width: 56vw;
        bottom: 0;
    }

    .details__link {
        font-size: 12px;
    }

    .details__arrow {
        width: 33vw;
    }

    .type-of-house__img {
        grid-template-columns: 1fr;
        grid-template-rows: repeat(4, 1fr);
    }

    .main__type-of-house__item img {
        width: 40vw;
    }

    .line {
        border: none;
    }
}

@media screen and (max-width: 400px) {
    .type-of-house__img {
        row-gap: 30px;
    }

    .type-of-house__item img {
        width: 40vw;
    }

    .type-of-house__info {
        height: 70px;
        font-size: 12px;
        width: 37vw;
    }

    .type-of-house__blackout {
        height: 70px;
        width: 40vw;
    }

    .line {
        border: none;
    }

    .details__link {
        font-size: 8px;
    }

    svg {
        width: 20px;
    }

    .type-of-house__title {
        font-size: 18px;
        margin-bottom: 40px;
    }
}

</style>