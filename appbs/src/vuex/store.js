import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'


Vue.use(Vuex)
const store = new Vuex.Store({
  state: {
    songs: [],//热门推荐
    specials:[],
    specials1:[],//专辑
    specials2:[],
    hotsong:[],
    newsong:[],
    mysong:[],
    msg:'',
    playmusic:'',
    musicmsg:'',
    itemx:'',
    songtext:'',
    nubs:''


  },
  actions: {
    //获取歌单信息
    getSongs({ commit }) {
      axios.get('http://localhost:3000/admin/allsc').then((response) => {
        commit('setSongs', { gdsc: response.data })
      }, (err) => {
        console.log(err)
      })
    },
    //获取歌曲信息
    getSpecials({ commit }){
      axios.get('http://localhost:3000/admin/allmusic')     .then((res)=>{
        commit('setSpecials',{ zjsc:res.data })
      },(err)=>{
        console.log(err);
      })
  },
  //热歌API获取数据
  getHotsongs({ commit }){
    axios.get('http://tingapi.ting.baidu.com/v1/restserver/ting?from=qianqian&version=2.1.0&method=baidu.ting.plaza.getNewSongs&format=json&limit=10')
          .then((res)=>{
            commit('setHotsongs',{hot:res.data.song_list})
          },(err)=>{
            console.log(err);
          })
  },
  //新歌API获取数据
  getNewsongs({ commit }){
    axios.get('http://tingapi.ting.baidu.com/v1/restserver/ting?from=qianqian&version=2.1.0&method=baidu.ting.billboard.billList&format=json&type=1&offset=0&size=10')
          .then((res)=>{
            commit('setNewsongs',{news:res.data.song_list})
          },(err)=>{
            console.log(err);
          })
  },
  //原创API获取数据
  getMysongs({ commit }){
    axios.get('http://tingapi.ting.baidu.com/v1/restserver/ting?from=qianqian&version=2.1.0&method=baidu.ting.plaza.getRecommendAlbum&format=json&offset=0&limit=10')
          .then((res)=>{
            commit('setMysongs',{my:res.data.plaze_album_list.RM.album_list.list})
          },(err)=>{
            console.log(err);
          })
  },
  getzjName({ commit },msg){
    commit('setzjName',msg) //获取专辑名字准备提交
    // console.log(msg);
  },
  getplaymusic({ commit },item){
    commit('setplaymusic',item)
  },
  getmusicmsg({ commit },musicmsg){
    commit('setmusicmsg',musicmsg)
  },
  getbtnmusic({ commit },itemx){
    commit('setbtnmusic',itemx)
  },
  getms({ commit },itemx){
    commit('setms',itemx)
  }

  },
  mutations: {
    setSongs: (state,  { gdsc } ) => {
      state.songs = gdsc
    },
    setSpecials:(state,{ zjsc })=>{
      state.specials1=zjsc
      state.specials2=zjsc
      state.specials=zjsc
    },
    setHotsongs:(state,{ hot })=>{
      state.hotsong= hot
    },
    setNewsongs:(state,{ news })=>{
      state.newsong=news
    },
    setMysongs:(state,{ my })=>{
      state.mysong=my
    },
    setzjName:(state,{ msg })=>{
      state.msg=msg
      console.log(state.msg);
    },
    setplaymusic:(state,{item})=>{
      state.playmusic=item
    },
    setmusicmsg:(state,{ musicmsg })=>{
      state.musicmsg=musicmsg
    },
    setbtnmusic:(state,{ itemx })=>{
      state.itemx=itemx
    },
    setms:(state,{ itemx })=>{
      state.songtext=itemx
    }
  },
  getters: {
    navXh:state=>{
      return state.songs.slice(0,8)
    },
    myXh:state=>{
      return state.songs.slice(-3)
    },
    zjXh1:state=>{
      return state.specials1.slice(-5)
    },
    zjXh2:state=>{
      return state.specials2.slice(-10,-5)
    }
  }
})
export default store
