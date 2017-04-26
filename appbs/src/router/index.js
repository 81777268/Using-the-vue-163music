import Vue from 'vue'
import Router from 'vue-router'
import Findmusic from '@/components/Findmusic/Findmusic'
import Mymusic from '@/components/Mymusic/Mymusic'
import Navban from '@/components/Navban/Navban'
import VipMusic from '@/components/VipMusic/VipMusic'
import Musiclist from '@/components/Musiclist/Musiclist'


Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Findmusic',
      component: Findmusic
    },
    {
      path: '/Mymusic',
      name: 'Mymusic',
      component: Mymusic
    },
    {
      path: '/Navban',
      name: 'Navban',
      component: Navban
    },
    {
      path: '/VipMusic',
      name: 'VipMusic',
      component: VipMusic
    },
    {
      path: '/Musiclist',
      name: 'Musiclist',
      component: Musiclist
    }
  ]
})
