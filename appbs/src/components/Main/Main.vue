<template lang="html">
<div class="wrap-list">
  <div class="content">
    <div class="llist">
      <div class="llist-main">
        <div class="llist-1">
          <div class="llist-1-head">
            <a href="#" class="hot">热门推荐</a>
            <div class="">
              <a class="submenu"href="#">华语</a>
              <a class="submenu"href="#">|</a>
              <a class="submenu"href="#">流行</a>
              <a class="submenu"href="#">|</a>
              <a class="submenu"href="#">摇滚</a>
              <a class="submenu"href="#">|</a>
              <a class="submenu"href="#">民谣</a>
              <a class="submenu"href="#">|</a>
              <a class="submenu"href="#">电子</a>
            </div>
            <span>
              <a href="#">更多</a>
              <em> </em>
            </span>
          </div>
          <ul>
            <li v-for="(item,index) in navXh">
              <div class="">
                <img v-bind:src='item.scimage' alt="">
                <router-link  class="submenu" v-on:click.native="btnn(index)" to="Navban"></router-link>
                <div class="btn">
                  <a href="javascript:;" class="playbtn"></a>
                  <span class="slogo"></span>
                  <span class="snub">{{item.scnub}}</span>
                </div>
              </div>
              <p ref="zjname">{{item.sc}}</p>
            </li>
          </ul>
        </div>
        <div class="llist-2">
          <div class="llist-2-head">
            <span class="l2t">个性化推荐</span>
          </div>
            <ul>
              <li class="dateli">
                <a href="#" class="datea">
                  <span class="s1">星期一</span>
                  <span class="s2">27</span>
                  <span class="s3"></span>
                </a>
                <p class="p1">
                  <a href="#">每日歌曲推荐</a>
                </p>
                <p class="p2">
                  根据你的口味生成，
                  <br />
                  每天6:00更新
                </p>
              </li>
              <li class="moudleli" v-for='item in myXh'>
                <div>
                  <img :src='item.scimage' alt="">
                  <a href="#" class="submenu"></a>
                  <div class="btn">
                    <a href="javascript:;" class="playbtn"></a>
                    <span class="slogo"></span>
                    <span class="snub">{{item.scnub}}</span>
                  </div>
                </div>
                <p><a href="#">{{item.sc}}</a></p>
                <p class="getmsg"><em>根据你喜欢的单曲《你还要我怎样》推荐</em><a href="#"></a></p>
              </li>
            </ul>
        </div>
        <div class="llist-3">
          <div></div>
        </div>
        <div class="llist-4">
          <div class="hot">
              <a href="#" class="">新碟上架</a>
              <span>
                <a href="#">更多</a>
                <em></em>
              </span>
          </div>


          <div class="column">
            <a href="###" class="xa la" @click="Back"></a>
            <a href="###" class="xa ra" @click="Next"></a>
            <div class="innbor">

              <div class="wrapcolumn" ref="wrapcolumn">
                <ul class="tipsone tipstwo cl4" id="tipstwo">
                  <li v-for="clms in zjXh2">
                    <div>
                      <img :src='clms.cover' alt="">
                      <a href="#" class="fa"></a>
                      <a href="#" class="la"></a>
                    </div>
                    <p>{{clms.name}}</p>
                    <p>{{clms.author}}</p>
                  </li>
                </ul>
                <ul class="tipsone cl1" id="tipsone">
                  <li v-for="clm in zjXh1">
                    <div>
                      <img :src='clm.cover' alt="">
                      <a href="#" class="fa"></a>
                      <a href="#" class="la"></a>
                    </div>
                    <p>{{clm.name}}</p>
                    <p>{{clm.author}}</p>
                  </li>
                </ul>
                <ul class="tipsone tipstwo cl2" id="tipstwo">
                  <li v-for="clms in zjXh2">
                    <div>
                      <img :src='clms.cover' alt="">
                      <a href="#" class="fa"></a>
                      <a href="#" class="la"></a>
                    </div>
                    <p>{{clms.name}}</p>
                    <p>{{clms.author}}</p>
                  </li>
                </ul>
                <ul class="tipsone cl3" id="tipsone">
                  <li v-for="clm in zjXh1">
                    <div>
                      <img :src='clm.cover' alt="">
                      <a href="#" class="fa"></a>
                      <a href="#" class="la"></a>
                    </div>
                    <p>{{clm.name}}</p>
                    <p>{{clm.author}}</p>
                  </li>
                </ul>
              </div>

            </div>
          </div>


        </div>
        <div class="llist-5">
          <div class="hot">
              <a href="#" class="">榜单</a>
              <span>
                <a href="#">更多</a>
                <em></em>
              </span>
          </div>
          <div class="llist-5-body">
            <dl>
              <dt>
                <div class="dttop">
                  <img src="static/image/00f.png" alt="">
                  <a href="#"></a>
                </div>
                <div class="dtr">
                  <h3>云音乐飙升榜</h3>
                  <div class="">
                    <a href="#"></a>
                    <a href="#"></a>
                  </div>
                </div>
              </dt>
              <dd>
                <ol>
                  <li v-for="(nubs,index) in hotsong">
                    <span>{{index+1}}</span>
                    <a href="###" class="name">{{nubs.album_title}}</a>
                    <div class="ico">
                      <a href="#"></a>
                      <a href="#" class="moddle"></a>
                      <a href="#"></a>
                    </div>
                  </li>
                </ol>
                <div class="more">
                  <a href="###">查看全部></a>
                </div>
              </dd>
            </dl>
            <dl>
              <dt>
                <div class="dttop">
                  <img src="static/image/0f0.png" alt="">
                  <a href="#"></a>
                </div>
                <div class="dtr">
                  <h3>云音乐新歌榜</h3>
                  <div class="">
                    <a href="#"></a>
                    <a href="#"></a>
                  </div>
                </div>
              </dt>
              <dd>
                <ol>
                  <li v-for="(nubs,index) in newsong">
                    <span>{{index+1}}</span>
                    <a href="###" class="name">{{nubs.title}}</a>
                    <div class="ico">
                      <a href="#"></a>
                      <a href="#" class="moddle"></a>
                      <a href="#"></a>
                    </div>
                  </li>
                </ol>
                <div class="more">
                  <a href="###">查看全部></a>
                </div>
              </dd>
            </dl>
            <dl>
              <dt>
                <div class="dttop">
                  <img src="static/image/f00.png" alt="">
                  <a href="#"></a>
                </div>
                <div class="dtr">
                  <h3>网易原创歌曲榜</h3>
                  <div class="">
                    <a href="#"></a>
                    <a href="#"></a>
                  </div>
                </div>
              </dt>
              <dd>
                <ol>
                  <li v-for="(nubs,index) in mysong">
                    <span>{{index+1}}</span>
                    <a href="###" class="name">{{nubs.title}}</a>
                    <div class="ico">
                      <a href="#"></a>
                      <a href="#" class="moddle"></a>
                      <a href="#"></a>
                    </div>
                  </li>
                </ol>
                <div class="more">
                  <a href="###">查看全部></a>
                </div>
              </dd>
            </dl>
          </div>
        </div>

      </div>
    </div>
    <div class="rsidebar"></div>
  </div>
  <div class="rlist">
    <div class="rlist-top">
      <p>登录网易云音乐，可以享受无限收藏的乐趣，并且无限同步到手机</p>
      <a href="#">用户登录</a>
    </div>
    <div class="rlist-middle">
      <h3>
        <span>入驻歌手</span>
        <a href="#">查看全部 ></a>
      </h3>
      <ul>
        <li v-for="bgx in bgs">
          <a href="#">
            <div class=""><img :src="bgx.bg" alt=""></div>
            <div class="">
              <h4>{{bgx.user}}</h4>
              <p>{{bgx.msgs}}</p>
            </div>
          </a>
        </li>
      </ul>
      <div class="">
        <a href="#">
          <i>申请成为网易音乐人</i>
        </a>
      </div>
    </div>
    <div class="rlist-down">
      <h3>热门DJ</h3>
      <ul>
        <li v-for='hots in hotdj'>
          <a href="#"><img :src="hots.por" alt=""></a>
          <div class="">
            <p>
              <a href="#">{{hots.names}}</a>
              <sup></sup>
            </p>
            <p>{{hots.ids}}</p>
          </div>
        </li>
      </ul>
    </div>
  </div>
</div>
</template>


<script>
import { mapGetters,mapState,mapActions } from 'vuex'
var index=1,
    moveWidth=645;
export default {
  name: 'Main',
  data() {
    return {
      imgs:[
        {imgx:'static/image/00f.png'},
        {imgx:'static/image/0f0.png'},
        {imgx:'static/image/f00.png'}
      ],
      bgs:[
        {bg:'static/image/11.jpg',user:'李志',msgs:'个人音乐人李志'},
        {bg:'static/image/22.jpg',user:'尚雯婕',msgs:'原创电子制作人'},
        {bg:'static/image/33.jpg',user:'羽泉组合',msgs:'国内知名演唱组合 羽泉'},
        {bg:'static/image/44.jpg',user:'马頔麻油叶',msgs:'民谣音乐人'},
        {bg:'static/image/55.jpg',user:'张惠妹aMEI',msgs:'台湾歌手张惠妹'}
      ],
      hotdj:[
        {por:'static/image/z1.jpg',names:'许亮',ids:'前端小学生'},
        {por:'static/image/z2.jpg',names:'DJ苏晓',ids:'独立DJ，CRI环球旅游广播特邀DJ'},
        {por:'static/image/z3.jpg',names:'DJ艳秋',ids:'著名音乐节目主持人'},
        {por:'static/image/z4.png',names:'国家大剧院古典音乐频道',ids:'国家大剧院古典音乐官方'},
        {por:'static/image/z5.jpg',names:'谢谢收听',ids:'南京电台主持人王馨'},
      ],
      msg:"123"




    }
  },
  methods:{

    Next(){
      var list=this.$refs.wrapcolumn;
      var uls=list.getElementsByTagName('ul');
      index++;
      list.style.transform='translate3d(-'+(index*moveWidth)+'px,0,0)';
      list.style.transition='all 1s ease-out';
      if (index==(uls.length)-1) {
          setTimeout(function () {
            index=1;
            list.style.transform='translate3d(-' + (index * moveWidth) + 'px,0,0)';
            list.style.transition='all 0s ease-out'
          },1000)
      }
},
  Back(){
    var list=this.$refs.wrapcolumn;
    var uls=list.getElementsByTagName('ul');
    index--;
    list.style.transform='translate3d(-'+(index*moveWidth)+'px,0,0)';
    list.style.transition="all 1s ease-out";
    if (index==0) {
      setTimeout(function () {
        index=uls.length-2;
        list.style.transform='translate3d(-'+(index*moveWidth)+'px,0,0)';
        list.style.transition="all 0s"
      },1000)
    }
  },
btnn(msg){
  this.$store.dispatch('getzjName', { msg:msg } )
}
},


computed:{
  ...mapGetters([
    'navXh','myXh','zjXh1','zjXh2'
  ]),
...mapState([
  'hotsong','newsong','mysong'
])

}




}

</script>





<style scope lang="scss">
$bgi: url('../../assets/image/CzAAYFdu06jEVr4AAAAASUVORK5CYII=.png');
* {
    padding: 0;
    margin: 0;
}
.wrap-list:after{
  clear: both;
  content: '.';
  display: block;
  height: 0;
  visibility: hidden;
}
.wrap-list{
      width: 980px;
      height: 1733px;
      min-height: 700px;
      margin: 0 auto;
      border: 1px solid #d3d3d3;
      border-width: 0 1px;
      background-image: url('../../assets/image/manbg.png');
      border: 1px solid #d3d3d3;
.content {
  float: left;
  width: 100%;
  margin-right: -250px;
    .llist {
        margin-right: 251px;
        .llist-main {
            padding: 20px 20px 40px;
            display: block;
            .llist-1 {
                .llist-1-head {
                    height: 33px;
                    padding: 0 10px 0 34px;
                    background-position: -225px -156px;
                    border-bottom: 2px solid #C10D0C;
                    background-image: $bgi;
                    background-repeat: no-repeat;
                    .hot {
                        float: left;
                        font-size: 20px;
                        line-height: 28px;
                        text-decoration: none;
                        cursor: pointer;
                        color: #333;
                    }
                    div {
                        float: left;
                        margin: 4px 0 0 20px;
                        a {
                            color: #666;
                            text-decoration: none;
                            cursor: pointer;
                            font-size: 12px;
                            margin: 0 5px;
                        }
                    }
                    span {
                        float: right;
                        margin-top: 4px;
                        a {
                            color: #666;
                            cursor: pointer;
                            text-decoration: none;
                            font-size: 12px;
                        }
                        a:hover {
                            text-decoration: underline;
                        }
                        em {
                            float: right;
                            display: inline-block;
                            width: 12px;
                            height: 20px;
                            text-align: left;
                            background-image: $bgi;
                            background-position: 0 -240px;
                            margin-top: 4px;
                            margin-left: 4px;
                        }
                    }
                }

                ul {
                    margin: 20px 0 0 -42px;
                    li {
                        width: 140px;
                        height: 204px;
                        padding-left: 42px;
                        float: left;
                        display: inline-block;
                        overflow: hidden;
                        padding: 0 0 30px 42px;
                        line-height: 1.4;
                        list-style: none;
                        margin: 0;
                        div {
                            width: 140px;
                            height: 140px;
                            position: relative;
                            display: block;
                            img {
                                display: block;
                                width: 100%;
                                height: 100%;
                                line-height: 1.4;
                            }
                            .submenu {
                                background-position: 0 0;
                                position: absolute;
                                top: 0;
                                left: 0;
                                width: 100%;
                                height: 100%;
                                background-image: url('../../assets/image/90uon+6gAAAABJRU5ErkJggg==.png');
                                cursor: pointer;
                                text-decoration: none;
                                color: #333;
                            }
                            .btn {
                                position: absolute;
                                bottom: 0;
                                left: 0;
                                width: 100%;
                                height: 27px;
                                background-image: url('../../assets/image/90uon+6gAAAABJRU5ErkJggg==.png');
                                background-position: 0 -537px;
                                color: #ccc;
                                .playbtn {
                                    position: absolute;
                                    right: 10px;
                                    bottom: 5px;
                                    width: 16px;
                                    height: 17px;
                                    background-image: url('../../assets/image/iconall.png');
                                    background-position: 0 0;
                                    display: inline-block;
                                    cursor: pointer;
                                    text-decoration: none;
                                }
                                .playbtn:hover {
                                    background-position: 0 -60px;
                                }
                                .slogo {
                                    float: left;
                                    width: 14px;
                                    height: 11px;
                                    background-position: 0 -24px;
                                    margin: 9px 5px 9px 10px;
                                    display: inline-block;
                                    background-image: url('../../assets/image/iconall.png');
                                }
                                .snub {
                                    float: left;
                                    margin: 7px 0 0;
                                    color: #ccc;
                                    font-size: 12px;
                                }

                            }
                        }
                        p {
                            margin: 8px 0 3px;
                            font-size: 14px;
                            width: 100%;
                            display: block;
                            vertical-align: middle;
                            font-size: 14px;
                        }
                    }
                }
                ul:after {
                    clear: both;
                    content: '.';
                    display: block;
                    height: 0;
                    visibility: hidden;
                }
            }
            .llist-2 {
                .llist-2-head {
                    height: 33px;
                    padding: 0 10px 0 34px;
                    background-position: -225px -156px;
                    border-bottom: 2px solid #C10D0C;
                    background-image: url('../../assets/image/CzAAYFdu06jEVr4AAAAASUVORK5CYII=.png');
                    background-repeat: no-repeat;
                }
                .l2t {
                    float: left;
                    font-size: 20px;
                    font-weight: normal;
                    line-height: 28px;
                }
                ul {
                    display: table;
                    margin-bottom: 4px;
                    line-height: 0;
                    margin: 20px 0 0 -42px;
                    li {
                        list-style: none;
                    }
                    .dateli {
                        display: table-cell;
                        height: auto;
                        width: 140px;
                        float: left;
                        overflow: hidden;
                        padding: 0 0 30px 42px;
                        line-height: 1.4;
                        .datea {
                            position: relative;
                            display: block;
                            width: 140px;
                            height: 140px;
                            background-position: 0 0;
                            background-image: url('../../assets/image/QKUoCncDHataAgSDYBAMJfQfAQYASKdH9cFVw+4AAAAASUVORK5CYII=.png');
                            cursor: pointer;
                            text-decoration: none;
                            .s1 {
                                display: block;
                                height: 33px;
                                line-height: 33px;
                                color: #fed9d9;
                                font-size: 14px;
                                text-shadow: 0 -1px #962626;
                                text-align: center;
                            }
                            .s2 {
                                display: block;
                                line-height: 102px;
                                text-align: center;
                                font-size: 94px;
                                font-family: Arial, Helvetica, sans-serif;
                                font-weight: bold;
                                color: #202020;
                            }
                            .s3 {
                                position: absolute;
                                top: 33px;
                                left: 0;
                                width: 142px;
                                height: 107px;
                                background-image: url('../../assets/image/QKUoCncDHataAgSDYBAMJfQfAQYASKdH9cFVw+4AAAAASUVORK5CYII=.png');
                                background-position: 0 -150px;
                            }
                        }
                        .p1 {
                            margin: 8px 0 3px;
                            font-size: 14px;
                            a {
                                text-decoration: none;
                                color: #000;

                            }
                        }
                        .p2 {
                            color: #999;
                            margin-top: 3px;
                            font-size: 12px;

                        }
                    }
                }
                ul:after {
                    clear: both;
                    content: '.';
                    display: block;
                    height: 0;
                    visibility: hidden;
                }
                .moudleli {
                    width: 140px;
                    height: 204px;
                    float: left;
                    display: inline-block;
                    overflow: hidden;
                    padding: 0 0 30px 42px;
                    line-height: 1;
                    list-style: none;
                    margin: 0;
                    div {
                        width: 140px;
                        height: 140px;
                        position: relative;
                        display: block;
                        img {
                            display: block;
                            width: 100%;
                            height: 100%;
                            line-height: 1.4;
                        }
                        .submenu {
                            background-position: 0 0;
                            position: absolute;
                            top: 0;
                            left: 0;
                            width: 100%;
                            height: 100%;
                            background-image: url('../../assets/image/90uon+6gAAAABJRU5ErkJggg==.png');
                            cursor: pointer;
                            text-decoration: none;
                            color: #333;
                        }
                        .btn {
                            position: absolute;
                            bottom: 0;
                            left: 0;
                            width: 100%;
                            height: 27px;
                            background-image: url('../../assets/image/90uon+6gAAAABJRU5ErkJggg==.png');
                            background-position: 0 -537px;
                            color: #ccc;
                            .playbtn {
                                position: absolute;
                                right: 10px;
                                bottom: 5px;
                                width: 16px;
                                height: 17px;
                                background-image: url('../../assets/image/iconall.png');
                                background-position: 0 0;
                                display: inline-block;
                                cursor: pointer;
                                text-decoration: none;
                            }
                            .playbtn:hover {
                                background-position: 0 -60px;
                            }
                            .slogo {
                                float: left;
                                width: 14px;
                                height: 11px;
                                background-position: 0 -24px;
                                margin: 9px 5px 9px 10px;
                                display: inline-block;
                                background-image: url('../../assets/image/iconall.png');
                            }
                            .snub {
                                float: left;
                                margin: 7px 0 0;
                                color: #ccc;
                                font-size: 12px;
                            }

                        }
                    }
                    p {
                        a {
                            margin: 7px 0 1px;
                            font-size: 14px;
                            width: 100%;
                            display: inline-block;
                            vertical-align: middle;
                            font-size: 14px;
                            color: #000;
                            text-decoration: none;
                            max-height: 36px;
                            height: out;
                            line-height: 1.4;
                        }
                    }
                    p {
                        margin-top: 3px;
                        em {
                            color: #999;
                            margin-top: 3px;
                            font-size: 12px;
                            line-height: 1;
                        }
                    }
                }
            }
            .llist-3{
              position: relative;
              margin: 0 0 35px;
            }
            .llist-4{
              .hot{
                height: 33px;
                padding: 0 10px 0 34px;
                background-position: -225px -156px;
                border-bottom: 2px solid #C10D0C;
                background-image: $bgi;
                background-repeat: no-repeat;
              }
              a {
                float: left;
                font-size: 20px;
                line-height: 28px;
                text-decoration: none;
                cursor: pointer;
                color: #333;
              }
                span {
                    float: right;
                    margin-top: 4px;
                    a {
                        color: #666;
                        cursor: pointer;
                        text-decoration: none;
                        font-size: 12px;
                    }
                    a:hover {
                        text-decoration: underline;
                    }
                    em {
                        float: right;
                        display: inline-block;
                        width: 12px;
                        height: 12px;
                        text-align: left;
                        background-image: $bgi;
                        background-position: 0 -240px;
                        margin-top: 8px;
                        margin-left: 4px;
                    }

              }
              .column{
                position: relative;
                zoom: 1;
                height: 186px;
                margin: 20px 0 37px;
                border: 1px solid #d3d3d3;
                z-index: 999;
                background: #f5f5f5;
                .xa{
                  position: absolute;
                  top: 71px;
                  width: 17px;
                  height: 17px;
                  background-image: $bgi;
                  text-decoration: none;
                  cursor: pointer;
                }
                .la{
                  left:4px;
                  background-position: -260px -75px;
                }
                .ra{
                  right: 4px;
                  background-position: -300px -75px;
                }
                .innbor{
                  margin-left: 21px;
                  position: relative;
                  height: 184px;
                  width: 645px;
                  overflow: hidden;
                  .wrapcolumn{
                    overflow: hidden;
                    width: 9999px;
                    transform: translate3d(-645px,0,0);
                    transition: all 1s ease;
                    ul{
                      float: left;
                      width: 645px;
                      height: 184px;
                      margin: 28px 0 0 0;
                      li{
                        float: left;
                        display: inline;
                        width: 118px;
                        height: 150px;
                        margin-left: 11px;
                        background-position: -260px 100px;
                        list-style: none;
                        background-image: $bgi;
                        background-repeat: no-repeat;
                        div{
                            margin-bottom: 7px;
                            width: 100px;
                            height: 100px;
                            position: relative;
                              img{
                                    display: block;
                                    width: 100px;
                                    height: 100px;
                              }
                              .fa{
                                top: 0;
                                left: 0;
                                width: 118px;
                                height: 100px;
                                background-position: 0 -570px;
                                position: absolute;
                                cursor: pointer;
                                background-image: url('../../assets/image/90uon+6gAAAABJRU5ErkJggg==.png');
                              }
                              .la{
                                    display: none;
                                    position: absolute;
                                    right: 10px;
                                    bottom: 5px;
                                    left: 72px;
                                    width: 22px;
                                    height: 22px;
                                    background-position: 0 -85px;
                                        cursor: pointer;
                                            text-decoration: none;
                                            background-image: url('../../assets/image/iconall.png');
                              }
                        }
                        div:hover .la{
                          display: block;
                        }
                        p{
                          width: 90%;
                          line-height: 18px;
                          overflow: hidden;
                          text-overflow: ellipsis;
                          white-space: nowrap;
                          word-wrap: normal;
                          display: block;
                          font-size: 12px;
                          line-height: 18px;
                          cursor:pointer;
                        }
                        p:hover{
                          text-decoration: underline;
                        }
                        p:last-of-type{
                          color:#666;

                        }
                      }
                    }
                    ul:after{
                      clear: both;
                      content: '.';
                      display: block;
                      height: 0;
                      visibility: hidden;
                    }
                    .tipstwo{

                    }
                  }
                }
              }

            }
            .llist-5{
              .hot{
                height: 33px;
                padding: 0 10px 0 34px;
                background-position: -225px -156px;
                border-bottom: 2px solid #C10D0C;
                background-image: $bgi;
                background-repeat: no-repeat;
              }
              a {
                float: left;
                font-size: 20px;
                line-height: 28px;
                text-decoration: none;
                cursor: pointer;
                color: #333;
              }
                span {
                    float: right;
                    margin-top: 4px;
                    a {
                        color: #666;
                        cursor: pointer;
                        text-decoration: none;
                        font-size: 12px;
                    }
                    a:hover {
                        text-decoration: underline;
                    }
                    em {
                        float: right;
                        display: inline-block;
                        width: 12px;
                        height: 12px;
                        text-align: left;
                        background-image: $bgi;
                        background-position: 0 -240px;
                        margin-top: 8px;
                        margin-left: 4px;
                    }

              }
              .llist-5-body{
                height: 472px;
                margin-top: 20px;
                padding-left: 1px;
                background-image: url('../../assets/image/hot.png');
                  dl{
                    float: left;
                    width: 229px;
                    dt{
                      height: 100px;
                      padding: 20px 0 0 19px;
                      .dttop{
                        width: 80px;
                        height: 80px;
                        position: relative;
                        float: left;
                        img{
                          display: block;
                          width: 100%;
                          height: 100%;
                        }
                        a{
                          position: absolute;
                          top: 0;
                          left: 0;
                          width: 100%;
                          height: 100%;
                          background-image: url('../../assets/image/coverall.png');
                          background-position: -145px -57px;
                        }
                      }
                      .dtr{
                        float: left;
                        width: 116px;
                        margin: 6px 0 0 10px;
                        h3{
                          padding: 0;
                          margin: 0;
                          font-size: 14px;
                        }
                        div{
                            margin-top: 10px;
                            a{
                              float: left;
                              width: 22px;
                              height: 22px;
                              background-image: $bgi;
                              outline: none;
                              cursor:pointer;
                              margin-right: 10px;
                            }
                            a:first-of-type{
                              background-position: -267px -205px;
                            }
                            a:first-of-type:hover{
                              background-position: -267px -235px;
                            }
                            a:last-of-type{
                              background-position: -300px -205px;
                            }
                            a:last-of-type:hover{
                              background-position: -300px -235px;
                            }
                        }
                      }
                    }
                    dd{
                      ol{
                        height: 319px;
                        margin-left: 50px;
                        line-height: 32px;
                        display: block;
                        li{
                          height: 32px;
                          list-style: none;
                          span{
                            float: left;
                            position: relative;
                            width: 35px;
                            height: 32px;
                            margin-left: -35px;
                            text-align: center;
                            color: #666;
                            font-size: 16px;
                            line-height: 32px;
                            margin-top: 0;
                          }
                          .name{
                            float: left;
                            width: 170px;
                            height: 32px;
                            cursor: pointer;
                            text-decoration: none;
                            font-size: 12px;
                            line-height: 32px;
                            overflow: hidden;
                            text-overflow: ellipsis;
                            white-space: nowrap;
                            word-wrap: normal;
                          }
                          div{
                            display: none;
                            float: right;
                            width: 82px;
                            margin-top: 7px;
                            a{
                              float: left;
                              width: 17px;
                              height: 17px;
                              margin-right: 10px;
                              vertical-align: middle;
                              outline: none;
                              cursor: pointer;
                              background-image:$bgi;
                            }
                            a:first-of-type{
                              background-position: -267px -268px;
                            }
                            .moddle{
                              margin: 2px 6px 0 0;
                              background-image: url('../../assets/image/pipo.png');
                              background-position: 0 -700px;
                            }
                            a:last-of-type{
                              background-position: -297px -268px;
                            }
                          }
                        }
                        li:hover .name{
                          width: 97px;
                          text-decoration: underline;
                        }
                        li:hover .ico{
                          display: block;
                        }
                      }
                      .more{
                        clear: both;
                        height: 32px;
                        margin-right: 32px;
                        text-align: right;
                        line-height: 32px;
                        a{
                              cursor: pointer;
                              text-decoration: none;
                              text-align: right;
                              line-height: 32px;
                              font-size: 12px;
                              float: none;
                        }
                      }
                    }
                  }
              }
            }
        }
    }
}
    .rlist{
      position: relative;
      float: right;
      width: 250px;
      border: 1px solid #red;
      .rlist-top{
        height: 126px;
        padding-top: 0;
        background-image: $bgi;
        font-size: 12px;
        p{
          width: 205px;
          margin: 0 auto;
          padding: 16px 0;
          line-height: 22px;
          color: #666;
        }
        a{
          margin: 0 auto;
          display: block;
          width: 100px;
          height: 31px;
          line-height: 31px;
          text-align: center;
          color: #fff;
          text-shadow: 0 1px 0 #8a060b;
          background-image: $bgi;
          background-position: 0 -195px;
          text-decoration: none;
          cursor: pointer;
        }
      }
      .rlist-middle{
        margin-top: 15px;
        h3{
          position: relative;
          height: 23px;
          margin: 0 20px;
          border-bottom: 1px solid #ccc;
          color: #333;
          font-size: 12px;
          span{
            float: left;
            font-weight: bold;
          }
          a{
            float: right;
            font-weight: normal;
            cursor: pointer;
            text-decoration: none;
            color: #666;
          }
        }
        ul{
          margin: 6px 0 14px 20px;
          font-size: 12px;
          li{
            margin-top: 14px;
            float: left;
            width: 210px;
            height: 62px;
            background: #fafafa;
            list-style: none;
            display: list-item;
            a{
              float: left;
              width: 210px;
              height: 62px;
              background: #fafafa;
              text-decoration: none;
              cursor: pointer;
              div:first-of-type{
                float: left;
                width: 62px;
                height: 62px;
              }
              div:last-of-type{
                float: left;
                width: 133px;
                height: 60px;
                padding-left: 14px;
                border: 1px solid #e9e9e9;
                border-left: none;
                h4{
                  margin-top: 8px;
                  width: 90%;
                  font-size: 14px;
                  color: #333;
                }
                p{
                  width: 90%;
                  margin-top: 8px;
                  color: #666;
                  overflow: hidden;
                  text-overflow: ellipsis;
                  white-space: nowrap;
                  word-wrap: normal;
                }
              }
            }
          }
          li:hover div:last-of-type{
            background: #F4F4F4;
          }
        }
        ul:after{
          clear: both;
          content: '.';
          display: block;
          height: 0;
          visibility: hidden;
        }
        div{
          a{
            margin-left: 20px;
            border-radius: 4px;
            color: #333;
            background-position: right -100px;
            text-decoration: none;
            padding: 0 5px 0 0;
            background-image: url('../../assets/image/wowAPdbSjslSjLSAAAAAElFTkSuQmCC.png');
            display: inline-block;
            height: 31px;
            line-height: 31px;
            overflow: hidden;
            i{
              width: 170px;
              background-image: url('../../assets/image/wowAPdbSjslSjLSAAAAAElFTkSuQmCC.png');
              background-position: 0 -59px;
              padding: 0 15px 0 20px;
              display: inline-block;
              vertical-align: top;
              text-align: center;
              cursor: pointer;
              font-style: normal;
              font-size: 12px;
              font-weight: bold;
            }
          }
          a:hover i{

            background-position: 0 -140px;
          }
          a:hover{
            background-position: right -181px;
          }
        }
      }
      .rlist-down{
        margin-top: 30px;
        h3{
          position: relative;
          height: 23px;
          margin: 0 20px;
          border-bottom: 1px solid #ccc;
          color: #333;
        }
        ul{
          margin: 20px 0 0 20px;
          li{
            float: left;
            width: 210px;
            height: 50px;
            display: list-item;
            list-style: none;
            a{
              float: left;
              margin-right: 10px;
              cursor: pointer;
              text-decoration: none;
            }
            div{
              font-size: 12px;
              p:first-of-type{
                a{
                  display: inline-block;
                  max-width: 88%;
                  vertical-align: middle;
                  overflow: hidden;
                  text-overflow: ellipsis;
                  white-space: nowrap;
                  word-wrap: normal;
                  text-decoration: none;
                  color: #333;
                }
                sup{
                  margin-top: -1px;
                  width: 11px;
                  height: 13px;
                  background-image: url('../../assets/image/pipo.png');
                  background-position: 0 1px;
                  font-size: 100%;
                  font-style: normal;
                  display: inline-block;
                  overflow: hidden;
                  vertical-align: middle;
                }
              }
              p:last-of-type{
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                word-wrap: normal;
                color: #666;
                margin-top: 5px;
                // display: inline-block;
                // line-height: 12px;
              }
            }
          }
        }

      }


}
}
</style>
