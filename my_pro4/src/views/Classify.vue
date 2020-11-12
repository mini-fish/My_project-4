<template>
  <div>
    <!-- 顶部导航开始 -->
    <header class="header">
      <mt-header>
        <span slot="left" class="img1">
          <router-link to>
            <img @click="$router.back(-1)" src="../assets/back.png" />
          </router-link>
        </span>
        <span slot="right" class="header_right">
          <input type="text" class="search" placeholder="请输入商品名称" />
          <img src="../assets/Search.png" class="search_img">
        </span>
      </mt-header>
    </header>
    <!-- 顶部导航结束 -->
    <div>
      <van-sidebar class="sidebar" v-model="activeKey">
        <van-sidebar-item :class="{red:red0}" title="蛋糕分类" />
        <van-sidebar-item :class="{red:red1}" title="鲜花分类" />
        <van-sidebar-item :class="{red:red2}" title="浪漫组合" />
        <van-sidebar-item :class="{red:red3}" title="巧克力" />
        <van-sidebar-item :class="{red:red4}" title="开业花篮" />
      </van-sidebar>
      <div class="classify" v-if="activeKey==0">
        <div class="classify_title">进入蛋糕分类频道 ></div>
        <router-link :to="this.url0">
          <div v-for="(classify,index) of classifyOne" :key="index" class="classdetails">
            <img v-lazy="classify.src" alt />
            <div>{{classify.title}}</div>
          </div>
        </router-link>
      </div>
      <div class="classify" v-else-if="activeKey==1">
        <div class="classify_title">进入鲜花分类频道 ></div>
        <router-link :to="this.url1">
          <div v-for="(classify,index) of classifyTwo" :key="index" class="classdetails">
            <img v-lazy="classify.src" alt />
            <div>{{classify.title}}</div>
          </div>
        </router-link>
      </div>
      <div class="classify" v-else-if="activeKey==2">
        <div class="classify_title">进入浪漫组合频道 ></div>
        <router-link :to="this.url2">
          <div v-for="(classify,index) of classifyThree" :key="index" class="classdetails">
            <img v-lazy="classify.src" alt />
            <div>{{classify.title}}</div>
          </div>
        </router-link>
      </div>
      <div class="classify" v-else-if="activeKey==3">
        <div class="classify_title">进入巧克力频道 ></div>
        <router-link :to="this.url3">
          <div v-for="(classify,index) of classifyFour" :key="index" class="classdetails">
            <img v-lazy="classify.src" alt />
            <div>{{classify.title}}</div>
          </div>
        </router-link>
      </div>
      <div class="classify" v-else-if="activeKey==4">
        <div class="classify_title">进入开业花篮频道 ></div>
        <router-link :to="this.url4">
          <div v-for="(classify,index) of classifyFive" :key="index" class="classdetails">
            <img v-lazy="classify.src" alt />
            <div>{{classify.title}}</div>
          </div>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      activeKey: 0,
      red0: true,
      red1: false,
      red2: false,
      red3: false,
      red4: false,
      classifyOne: [],
      classifyTwo: [],
      classifyThree: [],
      classifyFour: [],
      classifyFive: [],
      url0: "",
      url1: "",
      url2: "",
      url3: "",
      url4: ""
    };
  },
  mounted() {
    let fid = this.$route.params.fid;
    this.activeKey = fid;
    this.axios.get("/classifyOne").then(res => {
      this.classifyOne = res.data.result;
      console.log(this.classifyOne);
      this.url0 = "/details/" + this.classifya[0].fid;
    });
    this.axios.get("/classifyTwo").then(res => {
      this.classifyTwo = res.data.result;
      this.url1 = "/details/" + this.classifyb[0].fid;
    });
    this.axios.get("/classifyThree").then(res => {
      this.classifyThree = res.data.result;
      this.url2 = "/details/" + this.classifyc[0].fid;
    });
    this.axios.get("/classifyFour").then(res => {
      this.classifyFour = res.data.result;
      this.url3 = "/details/" + this.classifyd[0].fid;
    });
    this.axios.get("/classifyFive").then(res => {
      this.classifyFive = res.data.result;
      this.url4 = "/details/" + this.classifye[0].fid;
    });
  },
  watch: {
    activeKey() {
      if (this.activeKey == 0) {
        this.red0 = true;
        this.red1 = false;
        this.red2 = false;
        this.red3 = false;
        this.red4 = false;
      } else if (this.activeKey == 1) {
        this.red0 = false;
        this.red1 = true;
        this.red2 = false;
        this.red3 = false;
        this.red4 = false;
      } else if (this.activeKey == 2) {
        this.red0 = false;
        this.red1 = false;
        this.red2 = true;
        this.red3 = false;
        this.red4 = false;
      } else if (this.activeKey == 3) {
        this.red0 = false;
        this.red1 = false;
        this.red2 = false;
        this.red3 = true;
        this.red4 = false;
      } else if (this.activeKey == 4) {
        this.red0 = false;
        this.red1 = false;
        this.red2 = false;
        this.red3 = false;
        this.red4 = true;
      }
    }
  }
};
</script>

<style scoped>
/* 顶部导航 */
.header {
  background-color: #84c95b;
  height: 50px;
}
.header .img1 {
  float: left;
  width: 48px;
  height: 48px;
}
.header .img1 img {
  width: 32px;
  height: 32px;
  margin-top: 8px;
}
.header_right{
  position: relative;
}
.search {
  width: 300px;
  height: 32px;
  background-color: #fff;
  border: 0;
  margin-top: 9px;
  border-radius: 20px;
  padding-left: 15px;
  font-size: 14px;
}
.search_img{
  position: absolute;
  right: 8px;
  top:0px
}
/* 顶部导航结束 */

.red {
  color: #84c95b;
}
.classdetails > div:nth-child(3) {
  color: #ec232b;
  font-weight: bold;
  margin: 10px 0 10px 10px;
}
.classdetails > div:nth-child(2) {
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
  font-size: 12px;
  color: #666666;
}
.classdetails img {
  width: 70px;
  height: 70px;
}
.classdetails {
  width: 89px;
  height: 100px;
  font-size: 14px;
  float: left;
  margin-top: 30px;
}
.classify {
  margin-bottom: 50px;
  background-color: #fff;
  position: absolute;
  top: 54px;
  left: 95px;
}
.classify_title {
  display: block;
  width: 100%;
  height: 35px;
  background: #84c95b;
  font-size: 14px;
  line-height: 35px;
  text-align: center;
  margin: auto;
  color: #fff;
  margin-bottom: 10px;
  border-radius: 3px;
  margin-top: 10px;
}
.sidebar {
  width: 95px;
  height: 80%;
  padding-top: 74px;
  position: fixed;
  background-color: #f7f8fa;
}
</style>
