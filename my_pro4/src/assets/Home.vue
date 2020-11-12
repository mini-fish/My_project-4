<template>
  <div class="home"
  infinite-scroll-distance="20"
   v-infinite-scroll="loadMore"
   infinite-scroll-disabled="busy"
   infinite-scroll-immediate-check="true">
    <!-- 头 -->
    <mt-header title="芙拉维尔蛋糕鲜花网">
      <div slot="left">
        <mt-button>
          <img src="../../public/icon/ico_02.png" alt slot="icon" />
        </mt-button>
      </div>
      <div slot="right">
        <mt-button>
          <img src="../../public/icon/ico_01.png" alt slot="icon" />
        </mt-button>
      </div>
    </mt-header>
    <!-- 轮播 -->
    <div class="swipe">
      <mt-swipe :auto="4000">
        <mt-swipe-item v-for="(v,k) of carouse" :key="k">
          <img v-lazy="v.src" />
        </mt-swipe-item>
      </mt-swipe>
    </div>
    <!-- 搜索 -->
    <div class="search">
      <router-link to>
        <img src="../assets/index/search_ico.png" />
      </router-link>
    </div>
    <!-- 菜单 -->
    <div class="section">
      <router-link to v-for="(v,i) of lists" :key="i">
        <img v-lazy="v.src" />
        <p>{{v.title}}</p>
      </router-link>
    </div>
    <!-- 消息 -->
    <div class="kb">
      <div>
        <mt-button type="primary">
          <img src="../assets/index/home_zx.png" width="20" alt />在线咨询
        </mt-button>
        <mt-button type="danger">
          <img src="../assets/index/home_phone.png" width="20" alt />12345679
        </mt-button>
      </div>
      <div class="message">
        <img src="../assets/index/rd_w.png" alt />
        保质保量，可货到付款
        <div></div>
      </div>
    </div>
    <!-- 商品 -->
    <!-- 热卖商品 -->
    <div class="re_product">
      <div class="product_title">
        <span class="text">热卖商品</span>
        <!-- 分类跳转链接 -->
        <router-link to>
          <img class="img" src="../assets/index/ico_16.png" alt />
        </router-link>
      </div>
      <!-- 商品详细 -->
      <div class="commodity">
        <div class="box" v-for="(v,i) of products.slice(0,8)" :key="i">
          <!-- 详情跳转链接 -->
          <router-link to="">
            <img class="box_img" v-lazy="v.src" alt />
            <!-- 购物车图标 -->
          <router-link to="" class="cart">
            <img src="../assets/index/cart.png" alt="">
          </router-link>
          <div class="price">¥{{v.price}}</div>
          <div class="title">{{v.title}}</div>
          </router-link>
        </div>
      </div>
    </div>

    <!-- 组合套餐 -->
    <div class="re_product">
      <div class="color"></div>
      <div class="product_title">
        <span class="text">组合套餐</span>
        <!-- 分类跳转链接 -->
        <router-link to>
          <img class="img" src="../assets/index/ico_16.png" alt />
        </router-link>
      </div>
      <!-- 商品详细 -->
      <div class="commodity">
        <div class="box" v-for="(v,i) of products.slice(14,20)" :key="i">
          <!-- 详情跳转链接 -->
          <router-link to="">
            <img class="box_img" v-lazy="v.src" alt />
            <!-- 购物车图标 -->
          <router-link to="" class="cart">
            <img src="../assets/index/cart.png" alt="">
          </router-link>
          <div class="price">¥{{v.price}}</div>
          <div class="title">{{v.title}}</div>
          </router-link>
        </div>
      </div>
    </div>

    <!-- 鲜花 -->
    <div class="re_product">
      <div class="color"></div>
      <div class="product_title">
        <span class="text">鲜花套餐</span>
        <!-- 分类跳转链接 -->
        <router-link to>
          <img class="img" src="../assets/index/ico_16.png" alt />
        </router-link>
      </div>
      <!-- 商品详细 -->
      <div class="commodity">
        <div class="box" v-for="(v,i) of products.slice(8,14)" :key="i">
          <!-- 详情跳转链接 -->
          <router-link to="">
            <img class="box_img" v-lazy="v.src" alt />
            <!-- 购物车图标 -->
          <router-link to="" class="cart">
            <img src="../assets/index/cart.png" alt="">
          </router-link>
          <div class="price">¥{{v.price}}</div>
          <div class="title">{{v.title}}</div>
          </router-link>
        </div>
      </div>
    </div>

    <!-- 底部版权 -->
    <div class="banquan">
      © 2012-2020芙拉维尔蛋糕鲜花网
      &nbsp;&nbsp;版权所有并保留所有权利
    </div>
  </div>
</template>

<style scoped>
/* 底部版权样式 */
.banquan{
  height: 40px;
  line-height: 40px;
  background-color: #eee;
  font-size: 12px;
  text-align: center;
  margin-bottom: 40px;
}
/* -------------------------- */
.mint-header {
  background-color: #84c95b;
}
.mint-header img {
  width: 25px;
}
.swipe {
  width: 100%;
  height: 200px;
  position: relative;
}
.swipe img {
  width: 100%;
}
.home >>> .mint-searchbar {
  background-color: #eee;
}
/* 搜索 */
.search {
  width: 90%;
  height: 30px;
  background-color: #fff;
  margin: 10px auto;
  border-radius: 10px;
  position: absolute;
  top: 180px;
  left: 20px;
}
.search img {
  display: block;
  width: 20px;
  margin: 5px 5px;
}

/*菜单 */
.section {
  display: flex;
  justify-content: space-around;
  padding: 25px 15px;
  margin-bottom: 20px;
}
.section img {
  width: 50px;
  margin-bottom: 10px;
}
.section a {
  color: #000;
  font-size: 12px;
  text-align: center;
}
.section p {
  margin: 0;
}

/* 消息 */
.kb {
  background-color: #eee;
  padding: 10px 0;
}
.kb >>> .mint-button--primary {
  background-color: #66cd66;
}
.kb >>> .mint-button {
  width: 45%;
  margin: 10px 5px;
}
.message {
  height: 40px;
  background-color: #fff;
  line-height: 40px;
}
.message img {
  border-right: 2px solid #eee;
  float: left;
  margin-left: 10px;
}
/* ---------------------------- */
.text {
  display: block;
  margin: 10px;
  font-weight: bolder;
  float: left;
}
.img {
  float: right;
  display: block;
  margin: 10px;
}
.product_title::after {
  display: block;
  content: "";
  clear: both;
}
.product_title {
  border-bottom: 1px solid #eee;
  margin-bottom: 10px;
}
/* ----------------------------- */
.commodity{
  
  display: flex;
  justify-content: space-evenly;
  flex-wrap:wrap;
}
.color{
  width: 100%;
  height: 20px;
  background-color: #eee;
}
.box{
  width: 45%;
  border: 1px solid #eee;
  margin-bottom: 10px;
}
.box .box_img{
  width: 100%;
}
.box .cart>img{
  width: 30px;
}
.box .cart{
  float: right;
  margin-top: 5px;
  margin-right: 5px;
}
.box .price{
  color: #cc0000;
  font-size: 20px;
  font-weight: bold;
  padding: 10px;
}
.box .title{
  margin-bottom: 10px;
}
.box a .title{
  color: #000;
}
</style>

<script>
export default {
  data() {
    return {
      // 存储服务器返回的轮播图
      carouse: [],
      // 存储服务器返回的选项卡
      lists: [],
      // 存储服务器返回的商品详细
      products:[],
      // 用于标识当前服务器在正在空闲，可以处理用户滚动行为所触发的滚动方法
      busy:false,
      search: ""
    };
  },
  mounted() {
    //滚动范围也不再触发滚动方法了    
      this.busy = true;
    // 轮播请求
    this.axios.get("/carousel").then(res => {
      let data = res.data.result;
      // 遍历data数组来实现图片的动态加载
      data.forEach(item => {
        item.src = require("../../public/" + item.src);
        this.carouse.push(item);
      });
    });

    // 菜单请求
    this.axios.get("/lists").then(res => {
      let data = res.data.result;
      // 遍历data数组来实现图片的动态加载
      data.forEach(item => {
        item.src = require("../../public/" + item.src);
        this.lists.push(item);
      });
    });

    // 商品请求
  this.axios.get('/flower').then(res=>{
    let data= res.data;
    // 遍历data数组来实现图片的动态加载
    data.forEach(item=>{
      item.src = require("../../public/" + item.src);
      this.products.push(item)
    })
    
  })
  //真正的作用是：上一次的请求已经处理完成了
          //如果现在再次进行滚动范围，则仍然要触发滚动方法
          this.busy = false;
  }
  
  
};
</script>

