<template>
    <main class="main">
        <div class="container">
            <ArticleList></ArticleList> 
        </div>
    </main>
</template>

<script>

    import ArticleList from '@/components/Blog/ArticleList.vue'

    export default {
        name: 'blog',
        components: {
            ArticleList
        }
    }
</script>

<style scoped>

.main {
    background-color: #1A2922; 
}

@media screen and (max-width: 1200px) {
    .container {
        padding: 0 50px;
    }
}

@media screen and (max-width: 600px) {
    .container {
        padding: 0 10px;
    }
}
</style>

