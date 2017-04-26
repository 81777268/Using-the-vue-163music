<template lang="html">


<div class="footer">
  <div class="">
    <div class="">
      <a href="#">
        <span>独立音乐人招募计划</span>
        <br>
        <span style="color: #999;">加入我们 即将与超过亿万乐迷互动</span></a>
      <a href="#">
          <span>音乐专辑招募计划</span>
          <br>
          <span style="color: #999;">加入我们 与同道中人交流心得</span></a>
      <div class="copyright">
        <p>
          <i style="padding-right:3px;color: #333;">关于网易-客户服务-服务条款-网站导航</i>
          <i>网易公司版权所有©️1997-2017</i></p>
        <p>
          <i >杭州乐读科技有限公司运营：</i>
          <i style="color: #333;">浙网文[2015]0415-135号</i>
          <i href="#">
            <em></em>
            意见反馈
          </i>
        </p>
      </div>
    </div>
  </div>
</div>


</template>



<script>
export default {
  name:'Footer',
  data(){
    return {
      msg:"hello"

    }
  }
}
</script>





<style scopt lang="scss">
.footer{
    position: relative;
    height: 125px;
    overflow: hidden;
    border-top: 1px solid #d5d5d5;
    background: #f9f9f9;
    i{
      font-style: normal;
    }
    a{

      text-decoration: none;
    }
    p{
      cursor:pointer;
    }
    div{
      width: 980px;
      margin: 0 auto;
      height: 125px;
      div{
        font-size: 12px;
        color: #333;
        a{
          float: left;
          width: 247px;
          height: 46px;
          margin: 29px 0 0 0;
          padding-left: 53px;
          background-image: url('../../assets/image/link.png');
          background-repeat: no-repeat;
          background-position: -400px -80px;
          line-height: 22px;
          span{
            color: #666;
            line-height: 22px;
          }
        }
        a:last-of-type{
          background-position: -400px -125px;
        }
        .copyright{
              float: right;
              width: 382px;
              padding-top: 29px;
              margin-left: -20px;
              line-height: 22px;
              p{
                float: none;
                margin-right: 0;
                line-height: 22px;
                // text-align: left;
                color: #9b9b9b
              }
              p:first-of-type{
                i{
                  margin-right: 0px;
                  float: left;

                }
              }
              p:last-of-type{
                i:last-of-type{
                  float: right;
                  font-size: 12px;
                  color: #333;
                  em{
                    margin-right: 3px;
                    width: 19px;
                    height: 16px;
                    background-image: url('../../assets/image/pipo.png');
                    background-position: 0 -39px;
                    display: inline-block;
                    overflow: hidden;
                    vertical-align: middle;
                  }
                }
              }
        }
      }
    }
}
</style>
