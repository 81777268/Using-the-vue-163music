<template>

<div class="master">

  <section>
    <Slider></Slider>
  </section>
  <section class="main">
    <Main></Main>
  </section>
  <footer>
    <Footer></Footer>
  </footer>
    <!-- top监听块 -->
</div>

  <!-- <router-view></router-view> -->

</template>

<script>


import Slider from '../Slider/Slider.vue'
import Main from '../Main/Main.vue'
import Footer from '../Footer/Footer.vue'

export default {
  name: 'app',
  data(){
    return {
    }
  },
components:{
  Slider,Main,Footer
}

}
</script>

<style lang="scss">
*{
  padding: 0px;
  margin: 0px;
}
body{
  min-width: 982px;
  background: #f5f5f5;
}
.main{
  width: 980px;
  height: 1733px;
  margin: 0 auto;
}


</style>
