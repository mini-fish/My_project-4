import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import axios from 'axios'
import qs from 'qs'
Vue.prototype.qs=qs
//导入Mint UI
import MintUI from 'mint-ui';
//导入样式文件
import 'mint-ui/lib/style.min.css';
//注册为Vue的插件
Vue.use(MintUI);
//导入vant
import Vant from 'vant';
import 'vant/lib/index.css';
//注册为Vue的插件
Vue.use(Vant);
//页脚组件
import MyFooter from './components/MyFooter'
Vue.component("my-footer",MyFooter)
axios.defaults.baseURL = 'http://127.0.0.1:3000'
Vue.prototype.axios = axios;
Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
