<template>
<div>
    <mt-tabbar v-model="tabbar" fixed>
      <mt-tab-item id="index">
        首页
        <img src="../assets/index1.png" slot="icon" v-if="tabbar == 'index'" />
        <img src="../assets/index.png" slot="icon" v-else />
      </mt-tab-item>
      <mt-tab-item id="calssify">
        分类
        <img src="../assets/classify1.png" slot="icon" v-if="tabbar == 'calssify'" />
        <img src="../assets/classify.png" slot="icon" v-else />
      </mt-tab-item>
      <mt-tab-item id="calssify">
        客服
        <img src="../assets/service.png" slot="icon" />
      </mt-tab-item>
      <mt-tab-item id="calssify">
        购物车
        <img src="../assets/cart1.png" slot="icon" v-if="tabbar == 'checkout'" />
        <img src="../assets/cart.png" slot="icon" v-else />
      </mt-tab-item>
      <mt-tab-item id="calssify">
        会员中心
        <img src="../assets/member1.png" slot="icon" v-if="tabbar == 'login'" />
        <img src="../assets/member.png" slot="icon" v-else />
      </mt-tab-item>
    </mt-tabbar>
  </div>
</template><!--  -->
<script>
export default {
    data(){
      return{
        // tabbar:'index'
      }
      
    },
  //   watch: {
  //   //监听底部选项卡,可以带有两个参数,参数1代表新值,参数2代表旧值
  //   tabbar(value) {
  //     if (value == "index") {
  //       this.$router.push("/index").catch(e => {});
  //     }
  //     if (value == "classify") {
  //       this.$router.push("/calssify").catch(e => {});
  //     }
  //     if (value == "checkout") {
  //       this.$router.push("/checkout").catch(e => {});
  //     }
  //     if (value == "login") {
  //       this.$router.push("/login").catch(e => {});
  //     }
  //   }
  // }
}
</script>

