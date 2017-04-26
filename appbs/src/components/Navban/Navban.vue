<template lang="html">
<div class="main">
  <div class="maat">
    <div class="left-wrap">
      <div class="left-main">
        <div class="left-text">
          <div class="p1">
            <img :src="navXh[msg].scimage" alt="">
          </div>
          <div class="p2">
            <div class="p2-right">
              <div class="div1">
                <i></i>
                <h2>{{navXh[msg].sc}}</h2>
              </div>
              <div class="div2">
                <img :src="navXh[msg].scimage" alt="">
                <span>{{navXh[msg].scauthor}}</span>
                <span>{{navXh[msg].sctime}}</span>
              </div>
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
                <b>标签：</b>
                <a href="#"><i>{{navXh[msg].scname[1]+navXh[msg].scname[2]}}</i></a>
                <a href="#"><i>{{navXh[msg].scname[4]+navXh[msg].scname[5]}}</i></a>
                <a href="#"><i>{{navXh[msg].scname[7]+navXh[msg].scname[8]}}</i></a>
              </div>
              <p id="album-desc-dot" class="intr f-brk" v-show='show' ref="br" @click="tw">
                {{navXh[msg].sctext}}
              </p>
              <p id="album-desc-more" class="intr f-brk f-hide" v-show='!show'>
                {{navXh[msg].sctext}}
              </p>
              <div class="div5">
                <a href="javascript:;" @click="showBtn" ref="showrefs">展开<i></i></a>
              </div>
            </div>
          </div>
        </div>
        <div class="songlist">
          <div class="myhead">
            <h3>歌曲列表</h3>
            <span class="mysong">
              <span>5</span>首歌
            </span>
            <div class="">播放：<i>3</i>次</div>
          </div>
          <div class="mymiddle">
            <div class="">
              <div class="">
                <table>
                  <thead>
                    <tr >
                      <th></th>
                      <th><div class="">歌曲标题</div></th>
                      <th><div class="">时长</div></th>
                      <th><div class="">歌手</div></th>
                      <th><div class="">专辑</div></th>
                    </tr>
                  </thead>
                  <tbody>
                      <tr v-for="item in specials" :key="item.id" v-show="(item.sc == navXh[msg].sc)">
                        <td>
                          <div class="">
                            <span @click="playmusic(item)"></span>
                            <span>{{index}}</span>
                          </div>
                        </td>
                        <td>
                          <div class="">
                            <div class="">
                              <div class="">
                                <span>
                                  <router-link to="Musiclist" v-on:click.native="btnmusic(item)"><i>{{item.name}}</i></router-link>
                                </span>
                              </div>
                            </div>
                          </div>
                        </td>
                        <td>
                          <span class="mytime">{{item.time}}</span>
                          <div class="myioc">
                            <a href="#"></a>
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                          </div>
                        </td>
                        <td>
                          <div class="">
                            <span>
                              <a href="#" class="author">{{item.author}}</a>
                            </span>
                          </div>
                        </td>
                        <td>
                          <div class="">
                            <a href="#">{{item.special}}</a>
                          </div>
                        </td>
                      </tr>
                  </tbody>
                </table>
              </div>
              <div class=""></div>
            </div>
          </div>
        </div>
        <div class="comment">
          <div class="mytext1">
            <div class="mytext2">
              <h3>评论</h3>
              <span class="mynubcom">共<span>{{msg}}</span>条评论</span>
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
    </div>
  </div>
  <div class="right">
    <div class="">

    </div>
  </div>
</div>





</template>





<script>
import { mapState,mapGetters } from 'vuex'
var s=true;
export default {
  data() {
    return {
      show:true,
      str:"",

    }
  },
  methods:{
    showBtn(){
      this.show=!this.show
      if (s) {
        this.$refs.showrefs.innerHTML="收起<i class='bottom'></i>"
        return s=!s
      }else {
        this.$refs.showrefs.innerHTML="展开<i></i>"
        return s=true
      }
    },
    tw(){
      var str=this.$refs.br.innerHTML

      // str.replace(/\s/g,"&nbsp;").replace(/\r?\n/g,"<br/><br/><br/>");
      // this.$refs.br.innerTest=str
      // this.str=str
      alert(str);
    },
    playmusic(item){
      this.$store.dispatch('getplaymusic', { item:item } )
      //
    },
    btnmusic(item){
      this.$store.dispatch('getbtnmusic',{itemx:item})
    }
  },
  computed:{
  ...mapState([
    'msg','specials'
  ]),
  ...mapGetters([
    'navXh'
  ])

  }
}
</script>








<style lang="scss" scope>
$tabbg:url('../../assets/image/tablebg.png');
* {
    padding: 0;
    margin: 0;
}
.bottom{
  background-image: url('../../assets/image/pipo.png');
  background-position: -45px -520px !important;
}
.main:after {
    clear: both;
    content: '.';
    display: block;
    height: 0;
    visibility: hidden;
}
.main {
    background-image: url('../../assets/image/wrap4.png');
    width: 980px;
    min-height: 700px;
    margin: 0 auto;
    border: 1px solid #d3d3d3;
    border-width: 0 1px;
    font-size: 12px;
    color: #333;
    a{
      cursor: pointer;
      text-decoration: none;
    }
    .maat {
        float: left;
        width: 100%;
        margin-right: -270px;
        .left-wrap {
            margin-right: 271px;
            .left-main {
                padding: 47px 30px 40px 39px;
                .left-text:after{
                  clear: both;
                  content: '.';
                  display: block;
                  height: 0;
                  visibility: hidden;
                }
                .left-text {
                    .p1 {
                        float: left;
                        position: relative;
                        display: inline;
                        margin: 0 -220px 0 0;
                        width: 200px;
                        height: 200px;
                        img {
                            display: block;
                            width: 100%;
                            height: 100%;
                        }
                    }
                    .p2{
                      float: right;
                      width: 100%;
                      .p2-right{
                        margin-left: 230px;
                        .div1:after,.div2:after,.div3:after,.div4:after{
                          clear: both;
                          content: '.';
                          display: block;
                          height: 0;
                          visibility: hidden;
                        }
                        .div1{
                          position: relative;
                          margin: 0 0 12px;
                          line-height: 24px;
                          i {
                              position: relative;
                              top: 3px;
                              float: left;
                              margin-right: 6px;
                              width: 54px;
                              height: 24px;
                              background-image: url('../../assets/image/pipo.png');
                              background-position: 0 -243px;
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
                        .div2{
                          margin: 0 0 20px;
                          line-height: 35px;
                          font-size: 12px;
                          color: #333;
                          img {
                              margin-right: 10px;
                              float: left;
                              width: 35px;
                              height: 35px;
                              cursor: pointer;

                          }
                          span:first-of-type {
                              max-width: 210px;
                              float: left;

                              color: #0c73c2;
                              cursor: pointer;
                          }
                          span:last-of-type {
                              margin-left: 15px;
                              color: #999;
                          }
                        }
                        .div3{
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
                        .div4{
                          margin: 25px 0 5px;
                          line-height: 22px;
                          b{
                            float: left;
                            font-weight: normal;
                            color: #666;
                            line-height: 22px;
                            }
                            a{
                              float: left;
                              margin: 0px 10px 3px 0;
                              padding: 0 10px 0 0;
                              text-shadow: 0 1px #fdfdfd;
                              background-image: url('../../assets/image/wowAPdbSjslSjLSAAAAAElFTkSuQmCC.png');
                              background-position: right -27px;
                              color: #777;
                              text-decoration: none;
                              height: 22px;
                              line-height: 22px;
                              i{
                                position: relative;
                                zoom: 1;
                                padding: 0 3px 0 13px;
                                text-shadow: 0 1px #fdfdfd;
                                background-image: url('../../assets/image/wowAPdbSjslSjLSAAAAAElFTkSuQmCC.png');
                                background-position: 0 0;
                                float: left;
                                height: 22px;
                                line-height: 22px;
                                font-style: normal;
                                text-align: left;
                                font-size: inherit;
                              }
                          }
                        }
                        p{
                          margin-top: 4px;
                          line-height: 18px;
                          color: #666;
                          word-wrap: break-word;
                          word-break: break-word;
                          white-space: normal;
                        }
                        .div5{
                          a{
                              color: #0c73c2;
                              float: right;
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
                .songlist{
                  margin-top: 27px;
                  .myhead:after {
                      clear: both;
                      content: '.';
                      display: block;
                      height: 0;
                      visibility: hidden;
                  }
                  .myhead {
                      height: 33px;
                      border-bottom: 2px solid #c20c0c;
                      h3 {
                          font-size: 20px;
                          line-height: 28px;
                          float: left;
                          font-weight: normal;
                      }
                      .mysong {
                          margin: 9px 0 0 20px;
                          float: left;
                          color: #666;
                          font-size: 12px;
                          span {
                              color: #666;
                          }
                      }
                      div {
                          margin-top: 5px;
                          float: right;
                          color: #666;
                          i {
                              color: #c20c0c;
                              font-style: normal;
                              font-weight: bold;
                          }
                      }
                  }
                  .mymiddle {
                    a{
                          cursor: pointer;
                          text-decoration: none;
                          color: #333;
                    }
                      table {
                          width: 100%;
                          border: 1px solid #d9d9d9;
                          border-collapse: collapse;
                          border-spacing: 0;
                          table-layout: fixed;
                          display: table;
                          font-size: 12px;
                          color: #333;
                          thead {
                              display: table-header-group;
                              vertical-align: middle;
                              border-color: inherit;
                              tr {
                                  display: table-row;
                                  vertical-align: inherit;
                                  border-color: inherit;
                                  th {
                                      height: 38px;
                                      background-color: #f7f7f7;
                                      background-image: $tabbg;
                                      background-repeat: repeat-x;
                                      vertical-align: top;
                                      text-align: left;
                                      font-weight: normal;
                                      display: table-cell;
                                      color: #666;
                                      div{
                                        height: 18px;
                                        line-height: 18px;
                                        padding: 8px 10px;
                                        background-image: $tabbg;
                                        background-position: 0 -56px;
                                        background-repeat: no-repeat;
                                      }
                                  }
                                  th:nth-child(1) {
                                      width: 74px;
                                      div{
                                            background: none;
                                      }
                                  }
                                  th:nth-child(2){
                                    div{

                                    }
                                  }
                                  th:nth-child(3){
                                    width:111px;
                                  }
                                  th:nth-child(4){
                                    width: 14%;
                                  }
                                  th:nth-child(5){
                                    width: 20%;
                                  }
                              }
                          }
                          tbody{
                            display: table-row-group;
                            vertical-align: middle;
                            border-color: inherit;
                            border-collapse: collapse;
                            tr:hover .myioc{
                              display: block !important;
                              width: 111px;
                            }
                            tr:hover td:nth-child(3) .mytime{
                              display: none;
                            }
                            tr{
                              display: table-row;
                              vertical-align: inherit;
                              border-color: inherit;
                              td{
                                background-color: #f7f7f7;
                                padding: 6px 10px;
                                line-height: 18px;
                                text-align: left;
                                background-image:$tabbg;
                              }
                              td:nth-child(1){
                                div{
                                  height: 18px;
                                  span:first-of-type{
                                        float: right;
                                        // background-position: -20px -128px;
                                        background-position: 0 -128px;
                                        width: 17px;
                                        height: 17px;
                                        cursor: pointer;
                                        background-image:$tabbg;
                                        background-repeat: no-repeat;

                                  }
                                  span:last-of-type{
                                    width: 25px;
                                    margin-left: 5px;
                                    color: #999;

                                  }
                                }
                              }
                              td:nth-child(2){
                                div{
                                  div{
                                    float: left;
                                    width: 100%;
                                    div{
                                      height: 18px;
                                      margin-right: 20px;
                                      span{
                                        i{
                                          font-style: normal;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                              td:nth-child(3){
                                .myioc{
                                       display: none;
                                       float: left;
                                       a:hover{
                                         background-position: -22px -700px;
                                       }
                                       a{
                                         float: left;
                                         margin-top: 2px;
                                         width: 13px;
                                         height: 13px;
                                         background-position: 0 -700px;
                                         background-image: url('../../assets/image/pipo.png');
                                       }
                                       span{
                                         float: left;
                                         width: 18px;
                                         height: 16px;
                                         margin: 2px 0 0 4px;
                                         overflow: hidden;
                                         cursor: pointer;
                                         background-image: $tabbg;
                                       }
                                       span:nth-child(2):hover{
                                         background-position: -20px -174px;
                                       }
                                       span:nth-child(2){
                                         background-position: 0 -174px;
                                       }
                                       span:nth-child(3):hover{
                                         background-position: -20px -195px;
                                       }
                                       span:nth-child(3){
                                         background-position: 0 -195px;
                                       }
                                       span:nth-child(4):hover{
                                         background-repeat: no-repeat;
                                         background-position: -104px -174px;
                                       }
                                       span:nth-child(4){
                                         background-position: -81px -174px;
                                       }
                                       span:nth-child(5):hover{
                                         background-position: -140px -217px;
                                       }
                                       span:nth-child(5){
                                         background-position: 0 -217px;
                                       }
                                }
                              }
                              td:nth-child(4){
                                span{
                                  overflow: hidden;
                                  white-space: nowrap;
                                  text-overflow: ellipsis;
                                }
                              }
                            }
                          }
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
        }
    }
}
.author{
  display: inline-block;
  width: 60px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
  word-wrap: normal;
}
.right{
  position: relative;
  float: right;
  width: 270px;
  zoom: 1;
  div{
    cursor: pointer;
    float: right;
    padding: 20px 40px 40px 30px;
    width: 198px;
    height: 570px;
    background-image: url('../../assets/image/zjbg.png');
    background-repeat: no-repeat;
    background-size: contain;
  }
}
</style>
