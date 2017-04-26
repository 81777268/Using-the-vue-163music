##第一次使用Vuex 记一次心得   
###1.本地安装依赖 使用npm   
###2.创建Vuex.js本地文件 文件内配置如下：   
```
import Vue from 'vue'
//因为Vuex是Vue组件 所以需要先引入它
import Vuex from 'vuex'   

Vue.use(Vuex)
//中间件使用方法 告诉我使用Vuex了

const state={};
//state里面就是存放的各个组件共同或是关联的状态
const mutations={};
//mutations就是存放如何更改状态---必须得通过commit来提交mutation
const getters={};
//getters就是从state中派生出状态，比如将state中的某个状态进行过滤然后获取新的状态
const actions={};
//actions就是mutation的加强版，它可以通过commit mutations中的方法来改变状态，最重要的是它可以进行异步操作
const moudles={}
//modules顾名思义，就是当用这个容器来装这些状态还是显得混乱的时候，我们就可以把容器分成几块，把状态和管理规则分类来装。这和我们创建js模块是一个目的，让代码结构更清晰。

export default new Vuex.Store({
  state,
  mutations,
  getters,
  actions,
  moudles
})
//最后抛出 --可以提前 个人习惯
```
###3.入口文件配置 以Vue2为例 入口文件为main.js：
```
import Vue from 'vue'
import App from './App'
import router from './router'
import Store from './vuex/Store' //进入引来

new Vue({
  el: '#app',
  router,
  Store,								//注册
  template: '<App/>',
  components: { App }
})
```
###4.使用前先学习一下HTML5的Web储存--Storage

HTML5 提供了两种在客户端存储数据的新方法：

     localStorage - 没有时间限制的数据存储
     sessionStorage - 针对一个 session 的数据存储     
     
     
  一：localStorage    
 
 * 简单使用 栗子：   
 
 ```
 localStorage.msg="hello";   
 console.log(localStorage.msg);
```    

* 进阶   
  					**localStorage.pagecount 访问数量**
  - 是否支持

		  ```
		  if (window.localStorage) {
		    alert('This browser supports localStorage');
		} else {
		    alert('This browser does NOT support');
		}
		  ```
  - 有什么限制   
    localStorage 的存储格式都是**字符串**，任何其他类型都会转成字符串存储。
    
 - 功能（增）   
 
 		```
 		localStorage.a = 1；//注意存储的值为'1'
localStorage['a'] = 1；
	//直接赋值法
		
		```
		
		```
		//localStorage本身也有存值的方法setItem

		localStorage.setItem('a','1');
		```
 	
 - 功能 （删）
 		
 		```
 		localStorage.removeItem('a');//清除a的值
localStorage.clear(); // 一无所有了所有数据都会干掉
		```	
		
 - 功能（查找）		

      ```
      var a1 = localStorage['a'];//获取a的值
var a2 = localStorage.a;//获取a的值
var a3 = localStorage.getItem('a');//获取a的值
		```		
		
 - 功能 遍历
 		
 		```
 		function showStorage(){
    for(var i=0;i<localStorage.length;i++){
        //key(i)获得相应的键，再用getItem()方法获得对应的值
        console.log(localStorage.key(i),
                localStorage.getItem(
                        localStorage.key(i)));
    }
}
	```
 		
          
二：sessionStorage   
 
* sessionStorage 方法针对一个 session 进行数据存储。当用户关**闭浏览器窗口后，数据会被删除**。
* 用法基本与localStorage相同。

PS：使用Vuex组件间传值使用，一般会用到本地保存，所以需要HTML的本次储存Storage。

##5.理解Vue中的几种选项   
1. computed 是在dom加载后马上执行的。
2. methods 则必须要有一定的触发条件。
3. watch 带有监听效果：   

```
var v_assetManage_controller = new Vue({  
    el: '.LSee-index',  
    data: {  
        trendQueryTimeCtr: {  
            startTime: '',  
            endTime: ''  
        }  
    },  
    ready: function() {  
        //  
    },  
    methods: {  
        queryTrendData: function(){  
            //do some here  
        }  
    },  
    watch: {  
        'trendQueryTimeCtr.startTime': 'queryTrendData',  
        'trendQueryTimeCtr.endTime': 'queryTrendData'  
    }  
  
}); 
```
##6.开始将Vuex以组件的形式插入Vue之中


   1. 然后在 main.js 文件中我们需要将该 Store 实例添加到构造的 Vue 实例中：
  	
   	``` 
   		import store from './store'

		new Vue({
		  template: `
		  <div>
		    <navbar />
		    <section class="section">
		      <div class="container is-fluid">
		        <router-view></router-view>
		      </div>
		    </section>
		  </div>
		  `,
		  router,
		  store,
		  components: {
		    navbar
		  }
		}).$mount('#app')
		
	```
2. 引入axios 通过npm安装在本地 在store.js中引入：

	```
		import axios from 'axios'
		
	```	  

##7.在本次项目上Vuex管理状态（重点）
* state--初始状态 建立对象 songs:[ ]；
* actions--管理状态 

	```
			actions: {
			    getSongs({ commit }) {
			      axios.get('http://localhost:3000/admin/			allmusic').then((response) => {
			        commit('setSongs', { list: 			response.data })
			      }, (err) => {
			        console.log(err)
			      })
			    }
			  }
			  
	```		
	- 建立管理函数 getSongs 传参 commit 
	- axios请求 箭头函数 提交任务setSongs 传参list 请求回来的数据
	- 报错观察
	 
* mutations--对状态state唯一拥有更改权利

	```
	  mutations: {
    setSongs: (state,  {list} ) => {
      state.songs = list
    }
  }
  ```	
  - 函数内执行修改
 
* 容器组件中执行：

	```
	 	   mounted:function (){
    this.$store.dispatch('getSongs')
  }
  	```
  	- mounted vue钩子函数 对异步函数进行删选 生命周期 自执行
  	- Vuex中，向mutation提交的两种方式：   
  			- dispatch／commit  
  			- 一个异步操作与同步操作的区别。   
  			- 当你的操作行为中含有异步操作，比如向后台发送请求获取数据，就需要使用action的dispatch去完成了。   
  			- commit是actions去触发mutations用的方法。
  			
* 前端页面通过糖函数进行渲染：   
	- 首先引用
	```
	 import { mapState } from 'vuex'   	
	```		
	- 使用 
	
	```
		computed: mapState([
	    'songs'
	  ])
  ```
  直接调用即可：
  
  ```
 		 <ul>
            <li v-for="item in songs">
              <div class="">
                <img v-bind:src='item.cover' alt="">
                <a href="#" class="submenu"></a>
                <div class="btn">
                  <a href="javascript:;" class="playbtn"></a>
                  <span class="slogo"></span>
                  <span class="snub">{{item.id}}</span>
                </div>
              </div>
              <p>{{item.name}}</p>
            </li>
          </ul>
          
  ```
  - 并不难懂 它是缩写 全部如下：
  
  ```
  computed: {
  projects () {
    return this.$store.state.projects
  }
}
```
* vue补充：过滤器

```
	 {{ msg | uppercase  }}

  // 'abc' => 'ABC'
  
  全局方法 Vue.filter() 注册一个自定义过滤器.
```
	
