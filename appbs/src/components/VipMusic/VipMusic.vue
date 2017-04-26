<template lang="html">

  <div class="main">
    <div class="left">
      <div class="left-ma">
        <div class="left-pa">
          <div class="top">
            <div class="text">
              <div class="image">
                <div class="">
                  <img :src="musicmsg.cover" alt="">
                  <span></span>
                </div>
                <h5>生成外链播放器</h5>
              </div>
              <div class="msg">
                <div class="div1">
                  <i></i>
                  <h2>{{musicmsg.name}}</h2>
                </div>
                <p class="p1">歌手：<span>{{musicmsg.author}}</span></p>
                <p class="p2">
                  所属专辑：<a>{{musicmsg.special}}</a>
                </p>
                <div class="div3">
                  <a href="#" class="myplay">
                    <i>
                      播放<em></em>
                    </i>
                  </a>
                  <a href="#" class="myadd"><i></i></a>
                  <a href="#" class="mybtn mycollect"><i>收藏</i></a>
                  <a href="#" class="mybtn mygive"><i>分享</i></a>
                  <a href="#" class="mybtn mydown"><i>下载</i></a>
                  <a href="#" class="mybtn mycomment"><i>评论</i></a>
                </div>
                <div class="div4">
                  作曲 : 薛之谦<br>作词 : 薛之谦<br><br>简单点说话的方式简单点<br><br>递进的情绪请省略<br>你又不是个演员<br>别设计那些情节<br><br>没意见我只想看看你怎么圆<br><br>你难过的太表面 像没天赋的演员<br>观众一眼能看见<br>
                  <div id="flag_more" class="f-hide" ><br>该配合你演出的我演视而不见<br>在逼一个最爱你的人即兴表演<br>什么时候我们开始收起了底线<br>顺应时代的改变看那些拙劣的表演<br>可你曾经那么爱我干嘛演出细节<br>我该变成什么样子才能延缓厌倦<br>原来当爱放下防备后的这些那些<br>才是考验<br><br>没意见你想怎样我都随便<br><br>你演技也有限<br>又不用说感言<br>分开就平淡些<br><br>该配合你演出的我演视而不见<br>别逼一个最爱你的人即兴表演<br>什么时候我们开始没有了底线<br>顺着别人的谎言被动就不显得可怜<br>可你曾经那么爱我干嘛演出细节<br>我该变成什么样子才能配合出演<br>原来当爱放下防备后的这些那些<br>都有个期限<br><br>其实台下的观众就我一个<br>其实我也看出你有点不舍<br>场景也习惯我们来回拉扯<br>还计较着什么<br><br>其实说分不开的也不见得<br>其实感情最怕的就是拖着<br>越演到重场戏越哭不出了<br>是否还值得<br><br>该配合你演出的我尽力在表演<br>像情感节目里的嘉宾任人挑选<br>如果还能看出我有爱你的那面<br>请剪掉那些情节让我看上去体面<br>可你曾经那么爱我干嘛演出细节<br>不在意的样子是我最后的表演<br>是因为爱你我才选择表演 这种成全<br>
                  </div>
                  <div class="crl">
                    <a id="flag_ctrl" href="javascript:void(0)" class="s-fc7" @click="show">展开
                      <i class="u-icn u-icn-69"></i>
                    </a>
                  </div>
                </div>
              </div>
            </div>
            <div class="err">
              <p>报错</p>
            </div>
          </div>
          <div class="comment">
            <div class="mytext1">
              <div class="mytext2">
                <h3>评论</h3>
                <span class="mynubcom">共<span>12</span>条评论</span>
              </div>
              <div class="mymax">
                <div class="ma2">
                  <div class="myimghead"><img src="../../assets/image/9k=.jpg" alt=""></div>
                  <div class="text-area">
                    <div class="">
                      <div class="mytexteaar">
                        <div class="con1">
                          <textarea name="name" placeholder="评论" maxlength="140"></textarea>
                        </div>
                        <div class="con2">
                          <i></i>
                          <i></i>
                          <a href="#">评论</a>
                          <span>140</span>
                        </div>
                        <div class="con3">
                          <em>◆</em>
                          <span>◆</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class=""></div>
                <div class=""></div>
              </div>
            </div>
          </div>
        </div>
        <div class="images">
          <!-- <img src="../../assets/image/shouye.png" alt=""> -->
        </div>
      </div>
    </div>
    <div class="rights">
      <div class="rima">
        <div class="uls">
          <h3>网易云音乐多端下载</h3>
          <ul class="">
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
            <li><a href="#"></a></li>
          </ul>
          <p>同步歌单，随时畅听320k好音乐</p>
        </div>
      </div>
    </div>
  </div>
</template>


<script>
import { mapState } from 'vuex'
export default {
  name: 'VipMusic',
  data() {
    return {

    }
  },
  computed:{
    ...mapState([
      'musicmsg'
    ])
  }
}
</script>






<style scoped lang="scss">
$tabbg:url('../../assets/image/tablebg.png');
* {
    padding: 0;
    margin: 0;
}
.main:after,
.text:after,
.div3:after {
    clear: both;
    content: '.';
    display: block;
    height: 0;
    visibility: hidden;
}
.main {
    width: 980px;
    min-height: 700px;
    margin: 0 auto;
    border: 1px solid #d3d3d3;
    border-width: 0 1px;
    background-image: url('../../assets/image/wrap4.png');
    font-size: 12px;
    color: #333;
    a {
        cursor: pointer;
        text-decoration: none;
    }
    .left {
        float: left;
        width: 100%;
        margin-right: -270px;
        .left-ma {
            margin-right: 271px;
            .left-pa {
                padding: 47px 30px 40px 39px;
                .top {
                    margin-top: -10px;
                    .text {
                        .image {
                            float: left;
                            width: 206px;
                            margin-right: -226px;
                            position: relative;
                            zoom: 1;
                            div {
                                width: 198px;
                                height: 198px;
                                position: relative;
                                float: left;
                                img {
                                    width: 130px;
                                    height: 130px;
                                    margin: 34px;
                                }
                                span {
                                    width: 206px;
                                    height: 205px;
                                    top: -4px;
                                    left: -4px;
                                    background-position: -140px -580px;
                                    position: absolute;
                                    background-image: url('http://s2.music.126.net/style/web2/img/coverall.png?625918c61060ccf2e047345fa2ec5555');
                                }
                            }
                            h5 {
                                color: #0c73c2;
                                float: left;
                                margin: 30px 0 0 58px;
                            }
                        }
                        .msg {
                            float: right;
                            width: 414px;
                            .div1 {
                                position: relative;
                                margin: 0 0 12px;
                                line-height: 24px;
                                i {
                                    position: relative;
                                    top: 1px;
                                    float: left;
                                    margin-right: 6px;
                                    width: 54px;
                                    height: 24px;
                                    background-image: url('../../assets/image/pipo.png');
                                    background-position: 0 -463px;
                                    display: inline-block;
                                    overflow: hidden;
                                    vertical-align: middle;
                                    font-style: normal;
                                    text-align: left;
                                    font-size: inherit;
                                    line-height: 24px;
                                }
                                h2 {
                                    line-height: 24px;
                                    font-size: 20px;
                                    font-weight: normal;
                                    overflow: hidden;
                                    text-overflow: ellipsis;
                                    white-space: nowrap;
                                    word-wrap: normal;
                                }
                            }
                            .p1 {
                                margin: 10px 0;
                                color: #999;
                                span {
                                    color: #0c73c2;
                                }
                            }
                            .p2 {
                                margin: 10px 0;
                                color: #999;
                                a {
                                    color: #0c73c2;
                                }
                            }
                            .div3 {
                                margin-bottom: 25px;
                                margin-right: -10px;
                                font-size: 12px;
                                color: #333;
                                a {
                                    text-decoration: none;
                                }
                                .myplay {
                                    float: left;
                                    color: #fff;
                                    background-image: url('../../assets/image/wowAPdbSjslSjLSAAAAAElFTkSuQmCC.png');
                                    background-position: right -428px;
                                    padding: 0 5px 0 0;
                                    display: inline-block;
                                    height: 31px;
                                    line-height: 31px;
                                    overflow: hidden;
                                    vertical-align: top;
                                    text-align: center;
                                    cursor: pointer;
                                    i:hover {
                                        background-position: 0 -469px;
                                    }
                                    i:hover em {
                                        background-position: -28px -1622px;
                                    }
                                    i {
                                        padding: 0 7px 0 8px;
                                        color: #fff;
                                        background-image: url('../../assets/image/wowAPdbSjslSjLSAAAAAElFTkSuQmCC.png');
                                        background-position: 0 -387px;
                                        display: inline-block;
                                        height: 31px;
                                        line-height: 31px;
                                        overflow: hidden;
                                        vertical-align: top;
                                        text-align: center;
                                        cursor: pointer;
                                        font-style: normal;
                                        line-height: 31px;
                                        em {
                                            float: left;
                                            width: 20px;
                                            height: 18px;
                                            margin: 6px 2px 2px 0;
                                            background-image: url('../../assets/image/wowAPdbSjslSjLSAAAAAElFTkSuQmCC.png');
                                            background-position: 0 -1622px;
                                            overflow: hidden;
                                            font-style: normal;
                                        }
                                    }

                                }
                                .myadd:hover {
                                    background-position: -40px -1588px;
                                }
                                .myadd {
                                    margin-right: 5px;
                                    width: 31px;
                                    margin-left: -3px;
                                    padding-right: 0;
                                    background-image: url('../../assets/image/wowAPdbSjslSjLSAAAAAElFTkSuQmCC.png');
                                    background-position: 0 -1588px;
                                    padding: 0 5px 0 0;
                                    float: left;
                                    height: 31px;
                                    line-height: 30px;
                                    min-width: 23px;
                                }
                                .mybtn {
                                    margin-right: 6px;
                                    padding: 0 5px 0 0;
                                    float: left;
                                    height: 31px;
                                    line-height: 30px;
                                    background-image: url('../../assets/image/wowAPdbSjslSjLSAAAAAElFTkSuQmCC.png');
                                    background-position: right -1020px;
                                    i {
                                        padding-right: 2px;
                                        padding-left: 28px;
                                        line-height: 30px;
                                        float: left;
                                        height: 31px;
                                        color: #333;
                                        font-style: normal;
                                        background-image: url('../../assets/image/wowAPdbSjslSjLSAAAAAElFTkSuQmCC.png');
                                    }
                                }
                                .mycollect {
                                    background-position: right -1192px;
                                    cursor: default;
                                    i {
                                        background-position: 0 -1354px;
                                        color: #bebebe;
                                    }
                                }
                                .mygive {
                                    i:hover {
                                        background-position: 0 -1268px;
                                    }
                                    i {
                                        background-position: 0 -1225px;
                                    }
                                }
                                .mydown {
                                    i:hover {
                                        background-position: 0 -2805px;
                                    }
                                    i {
                                        background-position: 0 -2761px;
                                    }
                                }
                                .mycomment {
                                    i:hover {
                                        background-position: 0 -1508px;
                                    }

                                    i {
                                        background-position: 0 -1465px;
                                    }
                                }
                            }
                            .div4 {
                                margin-top: 13px;
                                line-height: 23px;
                                .f-hide{
                                  height: 0;
                                  overflow: hidden;
                                  text-overflow: ellipsis;
                                  white-space: nowrap;
                                  word-wrap: normal;
                                }
                                .crl{
                                      margin-top: 5px;
                                      line-height: 23px;
                                      a{
                                        color: #0c73c2;
                                        i{
                                          width: 11px;
                                          height: 8px;
                                          background-image: url('../../assets/image/pipo.png');
                                          background-position: -65px -520px;
                                          display: inline-block;
                                          overflow: hidden;
                                          vertical-align: middle;
                                        }
                                      }
                                }
                            }
                        }
                    }
                    .err{
                      text-align: right;
                      margin-top: 48px;
                      line-height: 30px;
                      p{
                        color: #999;
                        text-align: right;
                        line-height: 30px;
                      }
                    }
                }
                .comment{
                  margin-top: 40px;
                  .mytext1{
                    .mytext2{
                      // padding: 0 10px 0 32px;
                      height: 33px;
                      border-bottom: 2px solid #c20c0c;
                      h3{
                        font-size: 20px;
                        line-height: 28px;
                        float: left;
                        font-style: normal;
                      }
                      .mynubcom{
                          margin: 9px 0 0 20px;
                          float: left;
                              color: #666;
                              font-size: 12px;
                              span{
                                color: #666;
                                font-size: 12px;
                              }
                      }
                    }
                    .mymax{
                      margin-top: 20px;
                      .ma2{
                        margin-bottom: 20px;
                        .myimghead{
                          float: left;
                          width: 50px;
                          height: 50px;
                          margin-right: -100px;
                          img{
                            float: left;
                            width: 50px;
                            height: 50px;
                            margin-right: -100px;
                          }
                        }
                        .text-area{
                          .mytexteaar{
                            margin-left: 62px;
                            position: relative;
                            .con1{
                              position: relative;
                              padding-right: 14px;
                              textarea{
                                height: 50px;
                                width: 568px;
                                margin-right: -20px;
                                margin: 0;
                                padding: 5px 6px 6px;
                                border: 1px solid #cdcdcd;
                                border-radius: 2px;
                                line-height: 19px;
                                resize: none;
                                outline: none;
                              }
                            }
                            .con2:after{
                              clear: both;
                              content: '.';
                              display: block;
                              height: 0;
                              visibility: hidden;
                            }
                            .con2{
                              clear: both;
                              padding-top: 10px;
                              position: relative;
                              i{
                                              float: left;
                                              margin: 3px 10px 0 0;
                                              cursor: pointer;
                                              width: 18px;
                                              height: 18px;
                                              background-image: url('../../assets/image/pipo.png');
                                              display: inline-block;
                                              overflow: hidden;
                                              vertical-align: middle;
                                            }
                                            i:first-of-type{
                                              background-position: -40px -490px;
                                            }
                                            i:last-of-type{
                                              background-position: -60px -490px;
                                            }
                                            a{
                                                  float: right;
                                                  width: 46px;
                                                  height: 25px;
                                                  background-image: url('../../assets/image/text.png');
                                                  background-position: -84px -64px;
                                                  color: #fff;
                                                  text-align: center;
                                                  line-height: 25px;
                                                  display: inline-block;
                                                  cursor: pointer;
                                                  text-decoration: none;
                                            }
                                            span{
                                              float: right;
                                              margin-right: 10px;
                                              line-height: 25px;
                                              color: #999;
                                            }
                            }
                            .con3{
                              position: absolute;
                              top: 11px;
                              left: -7px;
                              width: 13px;
                              height: 14px;
                              overflow: hidden;
                              em{
                                color: #cdcdcd;
                                display: block;
                                font-size: 15px;
                                font-style: normal;
                                height: 10px;
                              }
                              span{
                                margin: -10px 0 0 1px;
                                color: #fff;
                                display: block;
                                font-size: 15px;
                                font-style: normal;
                                height: 10px;
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  }
            }
            .images{
              // img{
              //   width: 710px;
              // }
              background-image: url('../../assets/image/shouye.png');
              background-repeat: no-repeat;
              background-size: cover;
              height: 870px;
              width: 700px;
            }
        }
    }
    .rights{
      position: relative;
      float: right;
      width: 270px;
      zoom: 1;
      font-size: 12px;
      color: #333;
      .rima{
        padding: 20px 40px 40px 30px;
        .uls{
          margin: 20px 0;
          padding-bottom: 20px;
          h3{
            position: relative;
            height: 23px;
            margin-bottom: 20px;
            border-bottom: 1px solid #ccc;
            color: #333;
            // float: left;
          }
          ul:after{
            clear: both;
            content: '.';
            display: block;
            height: 0;
            visibility: hidden;
          }
          ul{
            height: 65px;
            margin-bottom: 10px;
            background-image: url('../../assets/image/link.png');
            background-repeat: no-repeat;
            background-position: 0 -392px;
            li{
              list-style: none;
              float: left;
              a{
                display: block;
                text-indent: -9999px;
                cursor: pointer;
                background-image: url('../../assets/image/link.png');
                background-repeat: no-repeat;
              }
            }
            li:nth-child(1){
              a{
                width: 42px;
                height: 48px;
                background-position: 0 -392px;
              }
              a:hover{
                background-position: 0 -472px;
              }
            }
            li:nth-child(2){
              a{
                width: 60px;
                height: 48px;
                margin: 0 26px 0 30px;
                background-position: 60px -392px;
              }
              a:hover{
                background-position: -72px -472px;
              }
            }
            li:nth-child(3){
              a{
                width: 42px;
                height: 48px;
                background-position: 60px -392px;
              }
              a:hover{
                background-position: -158px -472px;
              }
            }
          }
          p{
            color: #999;
          }
        }
      }
    }
}
</style>
