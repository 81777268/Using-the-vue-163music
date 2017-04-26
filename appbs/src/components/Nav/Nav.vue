<template lang="html">
  <div class="container">
    <div class="nav">
      <h1><router-link to='/'></router-link></h1>
      <ul class="lastul">
        <li class="l1"><span><router-link to='/'><em class="e1">发现音乐</em></router-link></span></li>
        <li><span><router-link to='/Mymusic'><em>我的音乐</em></router-link></span></li>
        <li><span><router-link to='/'><em>朋友</em></router-link></span></li>
        <li><span><a href="#"><em>商城</em></a></span></li>
        <li><span><a href="../../../static/web/index.html" target="_blank"><em>音乐人</em></a></span></li>
        <li class="l6"><span><router-link to='/'><em>下载客户端</em></router-link></span>
        <sup>
        </sup></li>
      </ul>
      <div class="loginbar">
        <a href="#" class="dl">登录</a>
        <div class="regsiter">
          <ul>
            <li><i class="icon iconfont icon-icon"></i><em>手机号登录</em></li>
            <li><i class="icon iconfont icon-weixin"></i><em>微信登录</em></li>
            <li><i class="icon iconfont icon-qq"></i><em>QQ登录</em></li>
            <li><i class="icon iconfont icon-xinlang"></i><em>新浪微博登录</em></li>
            <li><i class="icon iconfont icon-iconfontwangyi"></i><em>网易邮箱账号登录</em></li>
            <li><i class="icon iconfont icon-theme"></i><em>夜间模式</em></li>
          </ul>
          <span></span>
        </div>

      </div>
      <div class="search">
          <input type="text" name="" value="" placeholder="单曲/歌手/专辑/歌单/MV/用户">
      </div>
    </div>
    <div class="navbgr">
      <div>

      </div>
    </div>
    <div class="subnav">
      <ul>
        <li><router-link to='/'><em>推荐</em></router-link></li>
        <li><router-link to='/'><em>排行榜</em></router-link></li>
        <li><router-link to='/'><em>歌单</em></router-link></li>
        <li><router-link to='/'><em>主播电台</em></router-link></li>
        <li><router-link to='/'><em>歌手</em></router-link></li>
        <li><router-link to='/'><em>新碟上架</em></router-link></li>
      </ul>
    </div>
  </div>






</template>

<script>
export default {

}
</script>

<style lang="scss">
@import "../../assets/font_xhb2vvelw8psnhfr/iconfont.css";
$urls: url('../../assets/image/topbar.png');
* {
    padding: 0;
    margin: 0;
}
em {
    font-style: normal;
}
.container{
  height: 100px;
}
.nav {
    height: 68px;
    background-image: $urls;
    background-position: 0 -82px;
    padding-left: 90px;

    .lastul a {
        font-size: 14px;
        // padding: 0 -1px 0 0px;
        overflow: hidden;
        color: #ccc;
        text-shadow: 0 1px 0 #1b1b1b;
        cursor: pointer;
        text-decoration: none;
        text-align: center;
        line-height: 70px;

    }
    .lastul li {
        float: left;
        background-image: $urls;
        background-position: 1px -303px;
        display: inline-block;
        // padding-right: 2px;
        padding-left: 2px;
        margin-right: -2px;
    }
    ul .l1 {
        background-image: $urls;
        background-position: 100px -300px;
    }
    .lastul {
        list-style: none;
        display: inline-block;
        li:hover {
            background-image: $urls;
            background-position: 0 -473px;
        }
        li:nth-child(1) em:hover {
            background-position: -149px -473px;
        }
        li:nth-child(2) em:hover {
            background-position: -149px -473px;
        }
        li:nth-child(3) em:hover {
            background-position: 61px -473px;
            position: relative;
            z-index: 11;
        }
        li:nth-child(4) em:hover {
            background-position: 61px -473px;
            position: relative;
            z-index: 11;
        }
        li:nth-child(5) em:hover {
            background-position: 75px -473px;
            position: relative;
            z-index: 11;
        }
        li:nth-child(6) em:hover {
            background-position: 125px -473px;
        }
        em {
            display: inline-block;
            padding: 0 18px 0 17px;
            color: #ccc;
            cursor: pointer;
            background-image: $urls;
            background-position: 0 -82px;
            background-repeat: no-repeat;

        }
    }

    .l6 em {
        padding-left: 17px;
        padding-right: 40px;
    }
    .l6 {
        position: relative;
    }
    sup {
        display: inline-block;
        position: absolute;
        top: 20px;
        left: 90px;
        width: 28px;
        height: 19px;
        background-image: $urls;
        background-position: -190px 0;
    }
    h1 {
        float: left;
        width: 176px;
        height: 55px;
        display: inline-block;
    }
    h1 a {
        float: left;
        width: 157px;
        height: 33px;
        padding: 20px 20px 0 0;
        background-position: 0 12px;
        background-image: $urls;
        // text-indent: -9999px;
    }
    .dl {
        display: block;
        width: 28px;
        margin-top: 10px;
        color: #787878;
        text-decoration: none;
        font-size: 12px;
    }
    .dl:hover {
        text-decoration: underline;
        color: #ccc;

    }
    .loginbar {
        display: inline-block;
        float: right;
        height: 45px;
        margin: 21px 0 0 19px;
        padding: 0 22px 0 0;
        background-position: right -366px;
        background-image: $urls;
        margin-right: 90px;
    }
    .loginbar:hover .regsiter {
        display: block;
    }
    .loginbar:hover {
        background-position: right -404px;
    }
    .search {
        position: relative;
        display: inline-block;
        float: right;
        margin-top: 20px;
        padding: 0;
        background: transparent;
        font: 11px system-ui;
        position: relative;
        width: 210px;
        height: 31px;
        background-image: $urls;
        background-position: 0 -550px;
        input {
            width: 80%;
            margin: 0;
            padding-left: 30px;
            background: transparent;
            margin-top: 7px;
            border: none;
            outline: none;
            display: inline-block;
        }
    }
    .regsiter {
        border: 1px solid #000;
        border-radius: 4px;
        position: absolute;
        right: 57px;
        top: 56px;
        display: none;
        z-index: 444;
        ul {
            border-radius: 3px;
            border: 1px solid #404040;
            background: #2a2a2a;
        }

        li {
            list-style: none;
            width: 148px;
            height: 38px;
            line-height: 38px;
            text-align: left;
            cursor: pointer;
        }
        li:hover {
            background-color: #353535;
        }
        em,
        li i {
            color: #ccc;
            font-size: 12px;
        }
        li i {
            display: inline-block;
            height: 38px;
            padding: 0 10px 0 14px;
            color: #787878;
            font-size: 16px;
        }
        em {
            padding-right: 5px;
        }
        span {
            position: absolute;
            top: -7px;
            left: 50%;
            width: 16px;
            height: 9px;
            margin-left: -8px;
            background-image: $urls;
            background-position: 52px -25px;
        }

    }

}
.navbgr {
    height: 5px;
    background-image: $urls;
    background-position: 0 -230px;
    background-repeat: repeat-x;
    position: relative;
    // z-index: 90;
    div {
        position: absolute;
        left: 0;
        bottom: -2px;
        width: 100%;
        height: 2px;
        overflow: hidden;
        background-image: url('../../assets/image/navshadow.png');
    }
}
.subnav {
    // display: none;
    height: 35px;
    background-image: $urls;
    background-position: 0 -230px;
    background-repeat: repeat-x;
    position: relative;
    // z-index: 91;
    top: -7px;
    ul {
        width: 911px;
        padding-left: 168px;
        margin: 0 auto;
        position: relative;
    }
    li {
        display: inline;
        margin: 0 17px;
        float: left;
        height: 35px;
        overflow: hidden;
        cursor: pointer;
        text-align: center;

    }
    a {

        list-style: none;
        text-decoration: none;
        line-height: 35px;
        font-size: 12px;
        color: #fff;
        text-shadow: 0 1px 0 #650303;
        padding-left: 12px;
        display: inline-block;
    }
    em{
      padding-right: 12px;
      text-shadow: 0 1px 0 #650303;
      display: inline-block;
    }
    li:hover a{
      background-image: $urls;
      background-position: 0 -267px;
      background-repeat: no-repeat;
    }
    li:hover em{
      background-image: $urls;
      background-position: right -267px;
      background-repeat: no-repeat;
    }
}
</style>
