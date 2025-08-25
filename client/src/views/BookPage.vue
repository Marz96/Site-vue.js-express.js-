<template>
    <main class="main">
        <div class="container">
            <BookForm></BookForm>
        </div>
    </main>
</template>

<script>
    import BookForm from '@/components/Book/BookForm.vue'

    export default {
        name: 'book',
        components: {
            BookForm
        }
    }
</script>

<style scoped>

.main {
    background-color: #1A2922;
    padding: 150px 0;
}

@media screen and (max-width: 1200px) {
    .container {
        padding: 0 50px;
    }
    .main {
        padding: 150px 0;
    }
}

@media screen and (max-width: 900px) {
    .main {
        padding: 120px 0;
    }
}

@media screen and (max-width: 600px) {
    .main {
        padding: 90px 0;
    }
}

</style>