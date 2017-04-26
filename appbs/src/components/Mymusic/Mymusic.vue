<template lang="html">
  <div class="mymusic">
    <div class="mywrap">
      <div class="myleft"></div>
      <div class="myright">
        <div class="">
          <div class="mytop">
            <div class="mymsg">
              <div class="myzc">
                <div class="myimg"><img src="../../assets/image/zhaolei.png" alt=""><span></span></div>
                <div class="myuser">
                  <div class="myuserpm">
                    <div class="">
                      <i></i>
                      <h2>我喜欢的音乐</h2>
                    </div>
                    <div class="username">
                      <img src="../../assets/image/9k=.jpg" alt="">
                      <span>前端小学生</span>
                      <span>2017-02-22 创建</span>
                    </div>
                    <div class="">
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
                  </div>
                </div>
              </div>
            </div>
            <div class="myhead">
              <h3>歌曲列表</h3>
              <span class="mysong">
                <span>40</span>首歌
              </span>
              <div class="">播放：<i>3</i>次</div>
            </div>
          </div>
          <div class="mymiddle">
            <div class="">
              <div class="">
                <table>
                  <thead>
                    <tr>
                      <th></th>
                      <th><div class="">歌曲标题</div></th>
                      <th><div class="">时长</div></th>
                      <th><div class="">歌手</div></th>
                      <th><div class="">专辑</div></th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>
                        <div class="">
                          <span></span>
                          <span>1</span>
                        </div>
                      </td>
                      <td>
                        <div class="">
                          <div class="">
                            <div class="">
                              <span>
                                <a href="#"><i>成都</i></a>
                              </span>
                            </div>
                          </div>
                        </div>
                      </td>
                      <td>
                        <span class="mytime">05:28</span>
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
                            <a href="#">赵雷</a>
                          </span>
                        </div>
                      </td>
                      <td>
                        <div class="">
                          <a href="#">成都</a>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class=""></div>
            </div>
          </div>
          <div class="mybottom">
            <div class="mytext1">
              <div class="mytext2">
                <h3>评论</h3>
                <span class="mynubcom">共<span>0</span>条评论</span>
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

  </div>



</template>

<script>
export default {
  name: 'Mymusic',
  data() {
    return {


    }
  }
}
</script>

<style lang="scss" scoped>
$tabbg:url('../../assets/image/tablebg.png');

* {
    padding: 0;
    margin: 0;
}
.mymusic {
    height: 386px;
    // overflow-x: hidden;
    // overflow-y: scroll;
    position: relative;
    color: #333;
    font-size: 12px;
    zoom: 1;
    .mywrap:after {
        clear: both;
        content: '.';
        display: block;
        height: 0;
        visibility: hidden;
    }
    .mywrap {
        min-height: 386px;
        background-image: url('../../assets/image/mybg.png');
        width: 980px;
        margin: 1px auto;
        border: 1px solid #d3d3d3;
        border-width: 0 1px;
        .myleft {
            height: 100%;
            padding-bottom: 50px;
            padding-top: 40px;
            float: left;
            width: 240px;
            position:absolute;
            top:0;
            overflow: hidden;
            background-image: url('../../assets/image/myleft.png');
            background-size: contain;
            background-repeat: no-repeat;
        }
    }
    .myright {
        height: 100%;
        float: right;
        width: 740px;
        padding-bottom: 50px;
        position: relative;
        div {
            position: relative;
            .mytop {
                .mymsg {
                    padding: 40px;
                    .myzc:after {
                        clear: both;
                        content: '.';
                        display: block;
                        height: 0;
                        visibility: hidden;
                    }
                    .myzc {
                        .myimg {
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
                            span {
                                width: 208px;
                                height: 208px;
                                background-position: 0 -1285px;
                                top: -4px;
                                left: -4px;
                                position: absolute;
                                background-image: url('../../assets/image/90uon+6gAAAABJRU5ErkJggg==.png');
                            }
                        }
                        .myuser {
                            float: right;
                            width: 100%;
                            .myuserpm {
                                margin-left: 230px;
                                div:first-of-type:after {
                                    clear: both;
                                    content: '.';
                                    display: block;
                                    height: 0;
                                    visibility: hidden;
                                }
                                div:first-of-type {
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
                                .username:after {
                                    clear: both;
                                    content: '.';
                                    display: block;
                                    height: 0;
                                    visibility: hidden;
                                }
                                .username {
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
                                div:last-of-type:after {
                                    clear: both;
                                    content: '.';
                                    display: block;
                                    height: 0;
                                    visibility: hidden;
                                }
                                div:last-of-type {
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
                            }

                        }
                    }
                }
                .myhead:after {
                    clear: both;
                    content: '.';
                    display: block;
                    height: 0;
                    visibility: hidden;
                }
                .myhead {
                    padding: 0 10px 0 32px;
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
                                  background-position: -20px -128px;
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
            .mybottom{
              margin-top: 40px;
              .mytext1{
                .mytext2{
                  padding: 0 10px 0 32px;
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
                  margin-left: 32px;
                  margin-right: 32px;
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
                            width: 600px;
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
</style>
