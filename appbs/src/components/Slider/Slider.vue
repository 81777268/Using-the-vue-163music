<template>
<div class="wrap">
  <div class="max">
    <div class="banner" v-bind:style="{backgroundImage:urls[this.index]}" id="btnList" ref="image_list">
      <div class="imageList" ref="image_list" @mouseenter="stop" @mouseleave="start">
        <img src="../../assets/image/1.jpg" />
        <img src="../../assets/image/2.jpg" />
        <img src="../../assets/image/3.jpg" />
        <img src="../../assets/image/4.jpg" />
        <img src="../../assets/image/5.jpg" />
        <img src="../../assets/image/6.jpg" />
        <img src="../../assets/image/7.jpg" />
        <img src="../../assets/image/8.jpg" />
        <ul class="btnList" ref="btn_list">
          <li v-for="(item,i) in pages" @click="scrollTop(i);" :class="{'active':i === index}">
            <a href="javascript:void(0);" v-if="!numberPage"></a>
            <a href="javascript:void(0);" v-if="numberPage">{{i + 1}}</a>
          </li>
        </ul>
        <a href="javascript:void(0);" v-if="arrow" class="arrow left-arrow" @click="prev"></a>
        <a href="javascript:void(0);" v-if="arrow" class="arrow right-arrow" @click="next"></a>

        <div class="download">
          <a href="#"></a>
          <p>PC 安卓 iPhone WP iPad Mac 六大客户端</p>
          <span class="bgl"></span>
          <span class="bgr"></span>
        </div>
      </div>
    </div>

  </div>
</div>
</template>

<script>
import Vue from "vue";
export default {
  mounted() {
    this.scrollImage();
  },
  data() {
    return {
      imageList: null,
      interval: null,
      index: 0,
      status: 0,
      current: 0,
      pages: '',
      urls: [
        'url(http://on3qzhhgk.bkt.clouddn.com/1=.jpg)',
        'url(http://on3qzhhgk.bkt.clouddn.com/2=.jpg)',
        'url(http://on3qzhhgk.bkt.clouddn.com/3=.jpg)',
        'url(http://on3qzhhgk.bkt.clouddn.com/4=.jpg)',
        'url(http://on3qzhhgk.bkt.clouddn.com/5=.jpg)',
        'url(http://on3qzhhgk.bkt.clouddn.com/6=.jpg)',
        'url(http://on3qzhhgk.bkt.clouddn.com/7=.jpg)',
        'url(http://on3qzhhgk.bkt.clouddn.com/8=.jpg)'
      ]
    }
  },
  props: {
    speed: {
      type: Number,
      default: 10
    },
    spend: {
      type: Number,
      default: 4000
    },
    numberPage: {
      type: Boolean,
      default: false
    },
    arrow: {
      type: Boolean,
      default: true
    }
  },
  methods: {
    scrollImage() {
      this.init();
      this.start();
    },
    init() {
      this.imageList = this.$refs.image_list.getElementsByTagName('img');
      this.pages = this.imageList.length;
      this.imageList[0].style.opacity = '1';
    },
    getStyle(obj, attr) {
      var styleList = getComputedStyle(obj, false) || obj.currentStyle;
      return styleList[attr];
    },
    scrollTop(index) {
      var current = index;
      if (this.index == 0) {
        this.index = this.pages;
      }
      if (this.index == this.pages) {
        this.index = 0;
      }
      if (this.index == current) {
        return;
      }
      this.index = current;
      this.animation(this.imageList[this.current], 200);
      this.animation(this.imageList[this.index], 0);
      this.animation(this.bgArray[this.current], 200);
      this.animation(this.bgArray[this.index], 0);
      this.current = current;
    },
    start() {
      var self = this;
      self.interval = setInterval(function() {
        self.index++;
        if (self.index >= self.pages) {
          self.index = 0;
        }
        var current = self.index;
        self.animation(self.imageList[self.current], 0);
        self.animation(self.imageList[self.index], 300);
        self.current = current;
      }, self.spend);
    },
    animation(obj, offset) {
      var self = this;
      clearInterval(obj.interVal);
      obj.interVal = setInterval(function() {
        var value = Math.round(parseFloat(self.getStyle(obj, 'opacity') * 100));
        var step = (parseFloat(offset) - value) / self.speed;
        step = step > 0 ? Math.ceil(step) : Math.floor(step);
        if (value == offset) {
          clearInterval(obj.interVal);
        } else {
          obj.style.opacity = (value + step) / 100;
        }
      }, 100);

    },
    stop() {
      clearInterval(this.interval);
    },
    prev() {
      this.scrollTop(--this.index);
    },
    next() {
      this.scrollTop(++this.index);
    }
  }
};
</script>


<style scoped lang="scss">
* {
    margin: 0;
    padding: 0;
}
.max {
    position: relative;
}
.banner {
    height: 337px;
    a {
        color: black;
        text-decoration: none;
    }
    .imageList {
        position: relative;
        margin: 0 auto;
        width: 982px;
        height: 336px;
        // overflow: hidden;
        top: 1px;
    }
    .imageList img {
        position: absolute;
        display: block;
        opacity: 0;
        width: 730px;
        height: 336px;
        overflow: hidden;
    }
    .btnList {
        position: absolute;
        bottom: 5px;
        left: 246px;

    }
    .btnList li {
        float: left;
        list-style: none;
    }
    .btnList li {
        // margin: 0 3px 0 5px;
        border-radius: 50%;
        text-align: center;
        background-image: url('../../assets/image/lbbg.png');
        background-position: 5px -343px;
    }
    .btnList li a {
        display: block;
        text-align: center;
        width: 20px;
        height: 20px;
        line-height: 10px;
        font-size: 12px;
    }
    .btnList li.active,
    .btnList li:hover {
        background-position: 24px -343px;
    }
    .arrow {
        display: block;
        width: 20px;
        height: 20px;
        position: absolute;
        top: 50%;
        margin-top: -10px;
    }
    .left-arrow {
        background-image: url("../../assets/image/lbbg.png");
        background-repeat: no-repeat;
        background-position: 0 -360px;
        display: block;
        position: absolute;
        top: 50%;
        margin-top: -31px;
        left: -68px;
        width: 37px;
        height: 63px;
        z-index: 99;
    }
    .right-arrow {
        background: url("../../assets/image/lbbg.png") no-repeat;
        right: -68px;
        background-position: 0 -508px;
        display: block;
        position: absolute;
        top: 50%;
        margin-top: -31px;
        width: 37px;
        height: 63px;
        z-index: 99;
    }
    .left-arrow:hover {
        background-position: 0 -423px;
    }
    .right-arrow:hover {
        background-position: 0 -571px;
    }
}
.download {
    position: absolute;
    top: -2px;
    z-index: 20;
    right: -1px;
    width: 252px;
    height: 336px;
    border: 1px solid #000;
    background-image: url('../../assets/image/downloadbg.png');
    a {
        display: block;
        width: 215px;
        height: 56px;
        margin: 212px 0 0 19px;
        background-position: -19px 192px;
        text-indent: -9999px;
        background-image: url('../../assets/image/downloadbg.png');
    }
    a:hover {
        background-position: 0 64px;
    }
    p {
        margin: 10px auto;
        text-align: center;
        color: #8d8d8d;
        font-size: 12px;
        padding-bottom: 10px;
    }
    .bgl {
        display: block;
        position: absolute;
        top: 0;
        left: -20px;
        width: 20px;
        height: 336px;
        background-position: -1px 0;
        background-image: url('../../assets/image/lbbg.png');
    }
    .bgr{
        right: -20px;
        background-image: url('../../assets/image/lbbg.png');
        background-position: -20px 0;
				display: block;
        top: 0;
        position: absolute;
        width: 20px;
        height: 336px;

    }
}
</style>
