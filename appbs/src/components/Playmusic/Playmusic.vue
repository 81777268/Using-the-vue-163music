<template lang="html">
  <div class="">
    <audio :src='modle.src' controls ref="audio" @loadedmetadata="loadedmetaData" preload="metadata" id="volume" @timeupdate="timeupDate" style="display:none" autoplay></audio>



<div class="playbor">
  <div class="playmain" ref="playmain"  @mouseleave="mouseout">
    <div class="pl1">
      <div class="pl1stop">
        <a></a>
      </div>
      <div class="pl1r">

      </div>
    </div>
    <div class="pl2"></div>
    <div class="pl3" @mouseenter="mousego"></div>
    <div class="pl4">
      <div class="play-btn">
        <a href="javascript:;">前
        </a>
        <a href="javascript:;" @click="playMusic" ref="a_play">开停
        </a>
        <a href="javascript:;">后
        </a>
      </div>
      <div class="play-head">
        <img :src='modle.cover'>
        <router-link to="VipMusic" style="cursor:pointer" v-on:click.native="submitMusic(modle)"></router-link>
      </div>
      <div class="play-con">
        <div class="playmsg">
          <a>{{modle.name}}</a>
          <a></a>
          <a>{{modle.author}}</a>
          <a></a>
        </div>
        <div class="playbar" @click="btn">
          <!-- <div class="inbar">
            <div></div>
            <div>
              <span>
                <i></i>
              </span>
            </div>
          </div> -->
          <vue-slider class="vue-slider1" v-bind="slider1" v-model='plan'></vue-slider>
          <span class="bartime" ref="musictime">
            <em>{{this.gotime}}</em> / {{this.time}}
          </span>
        </div>
      </div>
      <div class="play-add">
        <a href="javascript:;">收藏</a>
        <a href="javascript:;">分享</a>
      </div>
      <div class="play-list">
        <div class="volume" v-if="!muteds">
          <div class="vo1"></div>
          <!-- <div class="vo2">
            <div></div>
            <span></span>
          </div> -->
          <vue-slider  class="vue-slider2" v-bind="slider2" ref="slider2" v-model="volume"></vue-slider>
        </div>
        <a href="javascript:;" class="bg-s bg" @click="muted"></a>
        <a href="javascript:;" class="bg-x bg"></a>
        <span>
          <a href="javascript:;" >20</a>
        </span>
        <div ></div>
      </div>
    </div>
    <div class="pl5">

    </div>
  </div>
</div>






   </div>
</template>





<script>

import { mapState } from 'vuex'
import vueSlider from 'vue-slider-component'
var s=true;
export default {
  name: 'Playmusic',
  data() {
    return {
      name:'Playmusic',
      time:'00:00',
      gotime:'00:00',
      muteds:true,
      slider1:{
        tooltip:false,
        processStyle:{
        'max-width':'477px',
        'position': 'absolute',
        'top': '0',
        'left': '0',
        'background-image': 'url("http://on3qzhhgk.bkt.clouddn.com/statbar.png")',
        'background-position': 'left -66px',
        'background-color': 'rgba(0, 0, 0, 0)',
      },
        clickable: true,
        speed: 0.2,
        bgStyle:{
          'height':'8px',
          'background-color': 'rgb(0, 0, 0)'
        },
        sliderStyle:{
          'position': 'absolute',
          'width': '22px',
          'height': '24px',
          'background-image': 'url("http://on3qzhhgk.bkt.clouddn.com/iconall.png")',
          "background-position": "-3px -253px"
        }
      },
      slider2:{
        processStyle:{
        'width':'10px',
        'position': 'absolute',
        'top': '0',
        'left': '0',
        'background-image': 'url("http://on3qzhhgk.bkt.clouddn.com/playbar.png")',
        'background-position': '-40px bottom',
        'background-color': 'rgba(0, 0, 0, 0)',
        },
        sliderStyle:{
          'position': 'absolute',
          'width': '22px',
          'height': '24px',
          'background-image': 'url("http://on3qzhhgk.bkt.clouddn.com/iconall.png")',
          "background-position": "-3px -253px"
        },
        bgStyle:{
          'background-color': 'rgb(0, 0, 0)',
          'left':'6px'
        },
      tooltip:false,
      direction:'vertical',
      width:5,
      height:110,
      reverse: true
    },
      volume: 20,
      plan:"",
      modle:''
    }
  },
  components:{
    vueSlider
  },
  methods:{
    mousego(){
      // alert('123');
      this.$refs.playmain.style.top="-53px";
    },
    mouseout(){
      let self= this;
      setTimeout(function () {
        self.$refs.playmain.style.top="-9px";
      },1000)
    },
    playMusic(){ //播放／暂停
      if (this.$refs.audio.paused) {
        this.$refs.audio.play()
        this.$refs.a_play.style.backgroundPosition='0 -204px';
      } else {
        this.$refs.audio.pause(),
        this.$refs.a_play.style.backgroundPosition='0 -165px';

      }
    },
    loadedmetaData(){ //从元数据得到时长

    if (Math.floor(this.$refs.audio.duration/60)<10) {
      var time='0'+Math.floor(this.$refs.audio.duration/60)+":"+((this.$refs.audio.duration)%60/100).toFixed(2).slice(-2)
    }
      this.time=time

    },
    muted(){ //点击显示隐藏声音控制台
      this.muteds=!this.muteds
    },
    timeupDate(){ //进度条同步播放时间
      const currentTime=this.$refs.audio.currentTime
      const duration=this.$refs.audio.duration
      this.plan =  currentTime* 100/ duration
      if (Math.floor(currentTime/60)<10) {
      var gotime='0'+Math.floor(currentTime/60)+":"+((currentTime)%60/100).toFixed(2).slice(-2)
      }
      this.gotime=gotime
    },
    btn(){
      const currentTime=this.$refs.audio.currentTime
      const duration=this.$refs.audio.duration;
      this.$refs.audio.currentTime  =  (this.plan/100)*this.$refs.audio.duration
    },
    submitMusic(modle){
      this.$store.dispatch('getmusicmsg',{musicmsg:modle})
    }
  },
  computed:{
    ...mapState([
    'playmusic','songtext','nubs'
  ])
  // playmusic () {
  //   return this.modle=this.$store.state.playmusic
  // }
  // items () {
  //   return this.modle=this.$store.state.items
  // }

},
watch:{
  volume: function (s) {  //声音控制
    this.$refs.audio.volume = s /100
  },
  playmusic: {
      handler() {
          this.modle = this.playmusic
      },
      deep: true
  },
  songtext: {
      handler() {
          this.modle = this.songtext
      },
      deep: true
  }
}

}

</script>




<style lang="scss">
$playbg : url('../../assets/image/playbar.png');
$statbar : url('../../assets/image/statbar.png');
*{
  margin: 0;
  padding: 0;
}
// .pl3:hover.playmain{
//   top:10px;
// }
.playbor{
      position:fixed;
      bottom: 0;
      left: 0;
      right: 0;
      height: 0;
      width: 100%;
      z-index: 9999999;
      a{
        cursor:pointer;
        text-decoration: none;
        font-size: 12px;
        color: #333;
      }
      .playmain{
            top: -11px;
            position: relative;
            left: 0;
            width: 100%;
            height: 53px;
            margin: 0 auto;
            transition: top 0.5s;
            .pl1{
              position: relative;
              z-index: 11;
              .pl1stop{
                position: absolute;
                top: -14px;
                right: 15px;
                width: 52px;
                height: 67px;
                background-image: $playbg;
                background-position: 0 -380px;
                float: left;
                a{
                  background-image: $playbg;
                  background-position: -80px -380px;
                  display: block;
                  width: 18px;
                  height: 18px;
                  margin: 6px 0 0 17px;
                  cursor: pointer;
                }
              }
              .pl1r{
                position: absolute;
                top: -1px;
                right: 0;
                width: 15px;
                height: 54px;
                float: left;
                background-image: $playbg;
                background-position: -52px -393px;
                pointer-events: none;
              }
            }
            .pl2{
              height: 53px;
              zoom: 1;
              margin-right: 67px;
              background-position: 0 0;
              background-image: $playbg;
              background-repeat: repeat-x;
            }
            .pl3{
              position: absolute;
              top: -10px;
              width: 100%;
              height: 20px;
              cursor: pointer;
            }
            .pl4{
              margin-left: -490px;
              position: absolute;
              left: 50%;
              top: 6px;
              width: 980px;
              height: 47px;
              .play-btn{
                width: 137px;
                padding: 6px 0 0 0;
                float: left;
                a{
                  display: block;
                  float: left;
                  width: 28px;
                  height: 28px;
                  margin-right: 8px;
                  margin-top: 5px;
                  text-indent: -9999px;
                  background-image: $playbg;
                }
                a:nth-child(1){
                  background-position: 0 -130px;
                }
                a:nth-child(2){
                  width: 36px;
                  height: 36px;
                  margin-top: 0;
                  background-position: 0 -204px;
                }
                a:nth-child(3){
                  background-position: -80px -130px;
                }
              }
              .play-head{
                position: relative;
                margin: 6px 15px 0 0;
                width: 34px;
                height: 34px;
                float: left;
                img{
                  width: 34px;
                  height: 34px;
                }
                a{
                  position: absolute;
                  top: 0px;
                  left: 0px;
                  display: block;
                  width: 34px;
                  height: 35px;
                  background-position: 0 -80px;
                  background-image: $playbg;
                }
              }
              .play-con{
                position: relative;
                width: 608px;
                float: left;
                .playmsg{
                  height: 28px;
                  overflow: hidden;
                  color: #e8e8e8;
                  text-shadow: 0 1px 0 #171717;
                  line-height: 28px;
                  a:{
                    overflow: hidden;
                    text-overflow: ellipsis;
                    white-space: nowrap;
                    word-wrap: normal;
                  }
                  a:nth-child(1){
                    max-width: 300px;
                    color: #e8e8e8;
                    float: left;
                  }
                  a:nth-child(2){
                    width: 19px;
                    height: 17px;
                    margin: 6px 0 0 3px;
                    float: left;
                    background-image: $playbg;
                    background-position: 0 -57px;
                  }
                  a:nth-child(3){
                    max-width: 220px;
                    margin-left: 15px;
                    color: #9b9b9b;
                    overflow: hidden;
                    text-overflow: ellipsis;
                    white-space: nowrap;
                    word-wrap: normal;
                    float: left;
                  }
                  a:nth-child(4){
                    float: left;
                    width: 14px;
                    height: 15px;
                    margin: 7px 0 0 13px;
                    background-image: $playbg;
                    background-position: -110px -103px;
                  }
                }
                .playbar{
                  width: 493px;
                  position: relative;
                  top:-6px;
                  cursor:pointer;
                  .inbar{
                      //这是总bar
                    height: 9px;
                    background-position: right 0;
                    width: 493px;
                    background-image: $statbar;
                    div:first-of-type{
                      //下面第一个div是缓存bar
                          width: 0%;
                          background-image: $statbar;
                          background-position: right -30px;
                          height: 9px;
                    }
                    div:last-of-type{
                      //下面第二个div是进度bar
                      span{
                        position: absolute;
                        top: -7px;
                        right: -13px;
                        width: 22px;
                        height: 24px;
                        margin-left: -11px;
                        background-image: url('../../assets/image/iconall.png');
                        background-position: 0 -250px;
                        cursor: pointer;
                      }
                    }
                  }
                  .bartime{
                    font-size: 12px;
                    position: absolute;
                    top: 3px;
                    right: -89px;
                    color: #797979;
                    text-shadow: 0 1px 0 #121212;
                    em{
                      color: #a1a1a1;
                      font-style: normal;
                    }
                  }
                }
              }
              .play-add{
                    width: 60px;
                    float: left;
                    a{
                      float: left;
                      width: 25px;
                      height: 25px;
                      margin: 11px 2px 0 0;
                      text-indent: -9999px;
                      background-image: $playbg;
                    }
                    a:first-of-type{
                          background-position: -88px -163px;
                    }
                    a:last-of-type{
                          background-position: -114px -163px;
                    }
              }
              .play-list{
                position: relative;
                z-index: 10;
                width: 113px;
                padding-left: 13px;
                background-image: $playbg;
                background-position: -147px -238px;
                background-repeat: no-repeat;
                float: left;
                .volume{
                  position: absolute;
                  top: -113px;
                  left: 9px;
                  clear: both;
                  width: 32px;
                  height: 113px;
                  .vo1{
                    position: absolute;
                    top: 0;
                    left: 0;
                    width: 32px;
                    height: 113px;
                    background-position: 0 -503px;
                    background-image: $playbg;
                  }
                  .vo2{
                    padding: 4px 0;
                    top: 7px;
                    position: absolute;
                    left: 14px;
                    width: 4px;
                    height: 93px;
                    div{
                      height: 0;
                      top: auto;
                      bottom: 4px;
                      left: 0;
                      background-image: $playbg;
                      background-position: -40px bottom;
                      position: absolute;
                      overflow: hidden;
                    }
                    span{
                          top: 81px;
                          position: absolute;
                          left: -7px;
                          display: block;
                          width: 18px;
                          height: 20px;
                          background-image: url('../../assets/image/iconall.png');
                          background-position: -40px -250px;
                          cursor: pointer;
                    }
                  }
                }
                .bg{
                  float: left;
                  width: 25px;
                  height: 25px;
                  margin: 11px 2px 0 0;
                  text-indent: -9999px;
                  background-image: $playbg;
                  background-repeat: no-repeat;
                  cursor: pointer;
                }
                .bg-s{
                  background-position: -2px -248px;;
                }
                .bg-x{
                  background-position: -3px -344px;
                }
                span{
                  float: left;
                  width: 59px;
                  height: 36px;
                  position: relative;
                  a{
                    display: block;
                    float: none;
                    width: 38px;
                    padding-left: 21px;
                    background-position: -42px -68px;
                    line-height: 27px;
                    text-align: center;
                    color: #666;
                    text-shadow: 0 1px 0 #080707;
                    text-indent: 0;
                    text-decoration: none;
                    margin: 11px 2px 0 0;
                    background-image: $playbg;
                    background-repeat: no-repeat;
                  }
                }
              }

            }
      }
}






</style>
