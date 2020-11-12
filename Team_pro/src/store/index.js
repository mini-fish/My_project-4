import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    isLogin: '',
    uname: sessionStorage.getItem('uname'),
    carNumber: 0,
    shopList: []
  },
  mutations: {
    addCar(state, obj) {
      console.log(obj);
      obj.product.num = obj.num

      state.carNumber += obj.num

      state.shopList.push(obj.product)

    },
    logined(state, uname) {
      state.uname = uname
    },
    logout(state, uname) {
      state.uname = uname
      state.carNumber = 0
      sessionStorage.removeItem('uname')
    },
    delAll(state) {
      state.shopList = []
      state.carNumber = 0
    }
  },
  actions: {
  },
  modules: {
  }
})
