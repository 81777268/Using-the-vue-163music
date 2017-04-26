<template>



<div id="app">


<div class="master">
  <header>
    <Nav></Nav>
    <!-- 全局头 -->
  </header>


</div>
<router-view></router-view>

<Playmusic></Playmusic>

</div>


</template>

<script>
import Nav from './components/Nav/Nav.vue'
import Playmusic from './components/Playmusic/Playmusic.vue'
export default {
  name: 'app',
  data(){
    return{

    }
  },
  components:{
    Nav,Playmusic
  },
  mounted:function (){
    this.$store.dispatch('getSongs'),
    this.$store.dispatch('getSpecials'),
    this.$store.dispatch('getHotsongs'),
    this.$store.dispatch('getNewsongs'),
    this.$store.dispatch('getMysongs')
  }

}
</script>

<style lang="scss">

</style>
