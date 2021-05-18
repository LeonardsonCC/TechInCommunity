import Vue from 'vue'
import Router from 'vue-router'

Vue.use(Router)

export default new Router({
  mode: 'hash',
  base: process.env.BASE_URL,
  routes: [
    {
      name: 'Login',
      path: '/login',
      component: () => import('@/views/pages/Login'),
    },
    {
      name: 'CriarContaMercado',
      path: '/criar-conta-mercado',
      component: () => import('@/views/pages/CriarContaMercado'),
    },
    {
      name: "dashboard",
      path: '/',
      redirect: 'dashboard/basic-dashboard',
      component: () => import('@/layouts/Layout'),
      children: [
        // Components
        {
          name: 'Categorias',
          path: 'pages/categories',
          component: () => import('@/views/pages/Categoria'),
        },
        {
          name: 'Produtos',
          path: 'pages/products',
          component: () => import('@/views/pages/Produtos'),
        },

        {
          name: 'Profile',
          path: 'pages/profile',
          component: () => import('@/views/pages/Profile'),
        },

      ]
    },

  ],
})
