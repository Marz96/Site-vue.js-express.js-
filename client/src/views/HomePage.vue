<template>
    <main class="main">
        <div class="container"> 
            <MainDesc></MainDesc>
            <MainGallery></MainGallery>
            <MaintTypeOfHouse></MaintTypeOfHouse>
            <MainActivities :mainActivities="mainActivities"></MainActivities>
        </div>
    </main>
</template>

<script>
    import MainActivities from '@/components/Home/MainActivities.vue';
    import MainDesc from '@/components/Home/MainDesc.vue';
    import MainGallery from '@/components/Home/MainGallery.vue';
    import MaintTypeOfHouse from '@/components/Home/MainTypeOfHouse.vue';

    import img_activ_1 from '@/assets/img/1_1.jpg'
    import img_activ_2 from '@/assets/img/1_2.jpg'
    import img_activ_3 from '@/assets/img/1_3.jpg'
    import img_activ_4 from '@/assets/img/2.jpg'
    import img_activ_5 from '@/assets/img/3_1.jpg'
    import img_activ_6 from '@/assets/img/3_2.jpg'

    export default {
        name: '/',
        components: {
            MainActivities,
            MainDesc,
            MainGallery,
            MaintTypeOfHouse
        },
        data() {
            return {
                mainActivities: [{
                    group: 'group1',
                    class: 'piknic_velo',
                    imgs: [
                        {
                        img: img_activ_1,
                        cl: 'img-1',
                        subtitle: 'Прокат sub-board',
                        id: 'sub-board'
                        },
                        {
                            img: img_activ_2,
                            cl: 'img-2',
                            subtitle: 'Велопрогулка',
                            id: 'bicycling'
                        },
                        {
                            img: img_activ_3,
                            cl: 'img-3',
                            subtitle: 'Пикник',
                            id: 'piknic'
                        },
                    ] 
                }, 
                {
                    group: 'group2',
                    class: 'mashroom_tracking',
                    imgs: [
                        {
                        img: img_activ_4,
                        cl: 'img-4',
                        subtitle: 'Рыбалка',
                        id: 'fishing',
                        },
                        {
                            img: img_activ_5,
                            subtitle: 'Сбор грибов',
                            cl: 'img-5',
                            id: 'mashroom_picking'
                        },
                        {
                            img: img_activ_6,
                            subtitle: 'Tracking',
                            cl: 'img-6',
                            id: 'tracking'
                        },
                    ] 
                    
                }]
            }
        }        
    }
</script>

<style scoped>
.main {
    width: 100%;
    background-color: #1A2922;
}

.main__bg-img {
    padding: 50px 0;
    position: absolute;
    z-index: 0;
    width: 100%;
} 

.container {
    padding: 0 50px;
}

@media screen and (max-width: 1200px) {
    .main {
        height: auto;
    }       
}

@media screen and (max-width: 900px) {
    section:first-child {
        padding-top: 70px;
    }
    
    section {
        padding-bottom: 70px;
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
}

@media screen and (max-width: 600px) {
    section:first-child {
        padding-top: 60px;
    }
    
    section {
        padding-bottom: 60px;
    }
}

@media screen and (max-width: 400px) {
    .container {
        padding: 0 20px;
    }

    section:first-child {
        padding-top: 50px;
    }
    
    section {
        padding-bottom: 50px;
    }
}

</style>
