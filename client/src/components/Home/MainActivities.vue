<template>
    <section class="main__activities">
                <div class="activities__wrapper">
                    <div class="activities__title">
                        <div class="line"></div>
                        <span>Времяпровождение</span>
                        <div class="line"></div>
                    </div>
                    <div class="activities__img">
                        <template v-for="item in mainActivities">
                            <div :class="item.group">
                                <div :id="item.imgs[0].id">
                                    <img :class="item.imgs[0].cl" :src="item.imgs[0].img" alt="">
                                    <span>{{ item.imgs[0].subtitle }}</span>
                                </div>
                                <div :class="item.class">
                                    <div :id="item.imgs[1].id">
                                        <img :class="item.imgs[1].cl" :src="item.imgs[1].img" alt="">
                                        <span>{{ item.imgs[1].subtitle }}</span>
                                    </div>
                                    <div :id="item.imgs[2].id">
                                        <img :class="item.imgs[2].cl" :src="item.imgs[2].img" alt="">
                                        <span>{{ item.imgs[2].subtitle }}</span>
                                    </div>
                                </div>
                            </div>
                        </template>
                    </div>
                </div>
            </section>
</template>

<script>
    export default {
        props: {
            mainActivities: {
                type: Array
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

.activities__title {
    font-size: 42px;
    text-align: center;
    margin-bottom: 90px;
}

    .activities__wrapper {
    position: relative;
    z-index: 5;
}

.activities__title {
    color: #fff;
    text-align: end;
    margin-bottom: 140px;
    display: flex;
    align-items: center;
    justify-content: space-between;
}

.activities__img {
    display: flex;
    justify-content: center;
    row-gap: 20px;
    column-gap: 10px;
    position: relative;
    z-index: 0;
}

.activities__img span {
    position: absolute;
    right: 25px;
    bottom: 20px;
    color: #fff;
    font-size: 18px;
}

.group1 {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    width: 36%;
}

.group1 div {
    display: flex;
    justify-content: center;
}

.group2 {
    display: flex;
    justify-content: space-around;
    row-gap: 20px;
    width: 55%;
}

.activities__blackout {
    position: absolute;
    z-index: 5;
    background-color: #000;
    opacity: 0.3;
}

#sub-board {
    position: relative;
}

#bicycling {
    position: relative;
}

#piknic {
    position: relative;
}

#fishing {
    position: relative;
    width: 46%;
}

.mashroom_tracking {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

#mashroom_picking {
    position: relative;
}

#tracking {
    position: relative;
}

.img-1 {
    width: 100%;
    height: auto;
    object-fit: contain;
}

.img-2,
.img-3 {
    width: 90%;
    height: auto;
    object-fit: contain;
}

.img-4 {
    width: 25vw;
}

.img-5,
.img-6 {
    width: 21vw;
    height: auto;
    object-fit: contain;
}

@media screen and (max-width: 1920px) {

}

@media screen and (max-width: 1200px) {
    .activities__title {
        font-size: 32px;
    }

    .activities__img span {
        font-size: 18px;
        bottom: 20px;
        right: 15px;
    }

    .activities__blackout {
        width: 100%;
        aspect-ratio: 19/10.3;
    }

    .group1 {
        width: 40%;
    }

    .group2 {
        width: 60%;
        justify-content: space-evenly;
    }

    #fishing {
        width: 50%;
    }

    .mashroom_tracking {
        width: 43%;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
    }

    .activities__img img {
        width: 100%;
        height: auto;
        object-fit: contain;
    }

    .piknic_velo img {
        width: 95%;
    }

    .line {
        width: 25vw;
    }
}

@media screen and (max-width: 900px) {

    .line {
        width: 20vw;
    }
    .activities__img span {
        font-size: 15px;
    }

    .activities__title {
        font-size: 24px;
        text-align: center;
        margin-bottom: 70px;
    }
}

@media screen and (max-width: 800px) {
    .activities__img span {
        font-size: 13px;
        right: 10px;
    }

    .activities__img span {
        font-size: 11px;
        bottom: 10px;
    }

    .line {
        border: 1px solid #CCAC7D;
    }
}

@media screen and (max-width: 600px) {
    .activities__title {
        font-size: 26px;
        text-align: center;
        margin-bottom: 60px;
    }

    .activities__img {
        flex-direction: column;
        align-items: center;
    }

    .group1,
    .group2 {
        width: 80%;
    }

    .group1 {
        row-gap: 20px;
    }

    .group1 div {
        justify-content: center;
    }

    .group2 {
        justify-content: space-around;
    }

    #mashroom_tracking {
        width: 44%;
    }

    .activities__img span {
        font-size: 14px;
    }

    .line {
        border: none;
    }
}

@media screen and (max-width: 400px) {
    .activities__title {
        font-size: 18px;
        margin-bottom: 40px;
    }

    .line {
        border: none;
    }
}
</style>