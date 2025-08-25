import { createRouter, createWebHistory } from 'vue-router'
import HomePage from '../views/HomePage.vue'
import AboutPage from '../views/AboutPage.vue'
import BlogPage from '../views/BlogPage.vue'
import BookPage from '../views/BookPage.vue'
import PricesPage from '../views/PricesPage.vue'
import Article from '../components/Blog/Article.vue'
import House from '../components/Home/House.vue'

const routes = [
    {
        path: '/',
        name: 'home',
        component: HomePage
    },
    {
        path: '/about',
        name: 'about',
        component: AboutPage
    },
    {
        path: '/book',
        name: 'book',
        component: BookPage
    },
    {
        path: '/blog',
        name: 'blog',
        component: BlogPage
    },
    {
        path: '/prices',
        name: 'prices',
        component: PricesPage
    },
    {
        path: '/blog/:id',
        name: 'article',
        component: Article,
        props: true
    },
    {
        path: '/home/:id',
        name: 'house',
        component: House,
        props: true
    }
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
})

export default router