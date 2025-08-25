<template>
    <main class="main">
        <div class="container">
            <MainText :text="text"></MainText>
            <Employees></Employees>
        </div>
    </main>
</template>

<script>

    import MainText from '@/components/About/MainText.vue';
    import Employees from '@/components/About/Employees.vue';

    export default {
        name: 'about',
        components: {
            MainText,
            Employees
        },
        data() {
            return {
                text: 'Здравствуйте, мы компания Leafy Lodge. Мы специализируемся на аренде домов в лесу, где вы сможете насладиться тишиной и уединением, подышать свежим воздухом и увидеть прекрасные виды. Наша территория расположена в живописном месте, где вы сможете отдохнуть от городской суеты. Наша компания основана в 2015 году. Тогда мы еще не предполагали, как желание посторить дом в необычном стиле может перерасти в столь удачное направление. Наша небольшая, на то время, команда испытала перемены: она росла и развивалась, чтобы создавать такие прекрасные и удачные дома.'
            }
        }
    }
</script>

<style scoped>
.main {
    background-color: #1A2922;
    padding: 100px 0;
    display: flex;
    justify-content: center;
}

@media screen and (max-width: 1200px) {
    .container {
        padding: 0 30px;
    }    
}

@media screen and (max-width: 600px) {
    .container {
        padding: 0;
    }
}

</style>