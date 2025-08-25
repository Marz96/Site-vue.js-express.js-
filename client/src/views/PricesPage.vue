<template>
    <main class="main">
        <div class="container">
            <HousesPrices :imgs="imgs"></HousesPrices>
        </div>
    </main>
</template>

<script>
    import HousesPrices from '@/components/Price/HousesPrices.vue'

    export default {
        name: 'prices',
        components: {
            HousesPrices
        },
    }
</script>

<style scoped>
    
    .main {
    background-color: #1A2922;
    padding: 40px 0;
}

@media screen and (max-width: 600px) {
.container {
    padding: 0 50px;
}

}

</style>