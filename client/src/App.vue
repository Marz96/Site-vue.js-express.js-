<template>
  <div class="app">
    <template v-if="this.$route.path == '/'">
      <HeaderMainPage :slides="slides"></HeaderMainPage>
    </template>
    <template v-else>
      <Header></Header>
    </template>
    <RouterView/>
    <Footer></Footer> 
  </div>
</template>

<script>
  
  import Footer from './components/Footer.vue';
  import HeaderMainPage from './components/HeaderMainPage.vue';
  import Header from './components/Header.vue';
  import HomePage from './views/HomePage.vue';
  import AboutPage from './views/AboutPage.vue'
  import BlogPage from './views/BlogPage.vue';
  import BookPage from './views/BookPage.vue';
  import PricesPage from './views/PricesPage.vue';

  import home_1 from '@/assets/img/home_1.png';
  import home_2 from '@/assets/img/home_2.png';
  import home_3 from '@/assets/img/home_3.png';

  export default {
    name: 'App',
    components: {
      HeaderMainPage,
      Footer,
      Header,
      AboutPage,
      BlogPage,
      BookPage,
      PricesPage,
      HomePage,
    },
    data() {
      return {
        slides: [
          {img: home_1},
          {img: home_2},
          {img: home_3}
        ],
        
      }
    } 
  }
</script>

<style>

  * {
    margin: 0;
    padding: 0;
  }

  .container {
    padding: 0 100px;
  }

</style>
