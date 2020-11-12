<template>
  <div>
    <mt-header title="商品详情" class="header">
      <div slot="left" class="shortcut">
        <router-link to="javascript:history.go(-1)" class="icon_10"></router-link>
      </div>
    </mt-header>
    <div class="carousel">
      <div class="banner">
        <swiper class="swiper" :options="swiperOption">
          <swiper-slide>
            <img :src="imags[0].carousel_pics1" alt />
          </swiper-slide>
          <swiper-slide>
            <img :src="imags[0].carousel_pics2" alt />
          </swiper-slide>
          <swiper-slide>
            <img :src="imags[0].carousel_pics3" alt />
          </swiper-slide>
          <div class="swiper-pagination" slot="pagination"></div>
        </swiper>
      </div>
    </div>
    <section class="goodsInfo_title">
      <div class="blank1"></div>
      <ul>
        <li>
          <b class="price">
            ￥
            <span>{{details[0].price}}</span>
          </b>
          <p class="xiaoliang">
            已售出
            <span class="sales">{{details[0].sold}}</span>
          </p>
        </li>
      </ul>
      <div class="blank1"></div>
      <h1>
        <strong>
          <font class="title">{{details[0].title}}</font>
        </strong>
      </h1>
      <div class="blank1"></div>
      <div class="brief">- 同城送货 两小时送达，新鲜美味，品质保证</div>
      <div class="blank1"></div>
    </section>
    <div class="blank2"></div>
    <div class="wrap" style="padding:0">
      <section class="goodsBuy radius5" style="padding:0.5rem">
        <div class="fields" style="display:block;">
          <ul class="u12">
            <li>
              <h2>尺寸选择：</h2>
              <div class="items">
                <ul class="ys_xuan" id="xuan_16">
                  <div class="catt" id="catt_16">
                    <router-link
                      to="javascript:"
                      @click="show_attr_status(this,910)"
                      name="15201"
                      id="xuan_a_15201"
                    >
                      <p style="padding:6px 10px;" title="6英寸（1-3人用）">
                        <em>6英寸（1-3人用）</em>
                      </p>
                      <input
                        type="radio"
                        style="display:none"
                        id="spec_value_15201"
                        name="spec_16"
                        value="15201"
                        checked
                      />
                    </router-link>

                    <router-link
                      to="javascript:"
                      @click="show_attr_status(this,910)"
                      name="15203"
                      id="xuan_a_15203"
                    >
                      <p style="padding:6px 10px;" title="8英寸（3-5人用）">
                        <em>8英寸（3-5人用）</em>
                      </p>
                      <input
                        type="radio"
                        style="display:none"
                        id="spec_value_15203"
                        name="spec_16"
                        value="15203"
                        checked
                      />
                    </router-link>
                    <router-link
                      to="javascript:"
                      @click="show_attr_status(this,910)"
                      name="15204"
                      id="xuan_a_15204"
                    >
                      <p style="padding:6px 10px;" title="10英寸（5-8人用）">
                        <em>10英寸（5-8人用）</em>
                      </p>
                      <input
                        type="radio"
                        style="display:none"
                        id="spec_value_1524"
                        name="spec_16"
                        value="15204"
                        checked
                      />
                    </router-link>
                    <router-link
                      to="javascript:"
                      @click="show_attr_status(this,910)"
                      name="15205"
                      id="xuan_a_15205"
                    >
                      <p style="padding:6px 10px;" title="12英寸（8-10人用）">
                        <em>12英寸（8-10人用）</em>
                      </p>
                      <input
                        type="radio"
                        style="display:none"
                        id="spec_value_15205"
                        name="spec_16"
                        value="15205"
                        checked
                      />
                    </router-link>
                    <router-link
                      to="javascript:"
                      @click="show_attr_status(this,910)"
                      name="15206"
                      id="xuan_a_15206"
                    >
                      <p style="padding:6px 10px;" title="14英寸（10-15人用）">
                        <em>14英寸（10-15人用）</em>
                      </p>
                      <input
                        type="radio"
                        style="display:none"
                        id="spec_value_15206"
                        name="spec_16"
                        value="15206"
                        checked
                      />
                    </router-link>
                    <router-link
                      to="javascript:"
                      @click="show_attr_status(this,910)"
                      name="15207"
                      id="xuan_a_15207"
                    >
                      <p style="padding:6px 10px;" title="16英寸（15-20人用）">
                        <em>16英寸（15-20人用）</em>
                      </p>
                      <input
                        type="radio"
                        style="display:none"
                        id="spec_value_15207"
                        name="spec_16"
                        value="15207"
                        checked
                      />
                    </router-link>
                    <router-link
                      to="javascript:"
                      @click="show_attr_status(this,910)"
                      name="15208"
                      id="xuan_a_15208"
                    >
                      <p style="padding:6px 10px;" title="18英寸（20-25人用）">
                        <em>18英寸（20-25人用）</em>
                      </p>
                      <input
                        type="radio"
                        style="display:none"
                        id="spec_value_15208"
                        name="spec_16"
                        value="15208"
                        checked
                      />
                    </router-link>
                    <router-link
                      to="javascript:"
                      @click="show_attr_status(this,910)"
                      name="15209"
                      id="xuan_a_15209"
                    >
                      <p style="padding:6px 10px;" title="20英寸（25-30人用）">
                        <em>20英寸（25-30人用）</em>
                      </p>
                      <input
                        type="radio"
                        style="display:none"
                        id="spec_value_15209"
                        name="spec_16"
                        value="15209"
                        checked
                      />
                    </router-link>
                    <router-link
                      to="javascript:"
                      @click="show_attr_status(this,910)"
                      name="15210"
                      id="xuan_a_15210"
                    >
                      <p style="padding:6px 10px;" title="22英寸（30-40人用）">
                        <em>22英寸（30-40人用）</em>
                      </p>
                      <input
                        type="radio"
                        style="display:none"
                        id="spec_value_15210"
                        name="spec_16"
                        value="15210"
                        checked
                      />
                    </router-link>
                    <router-link
                      to="javascript:"
                      @click="show_attr_status(this,910)"
                      name="15202"
                      id="xuan_a_15202"
                    >
                      <p style="padding:6px 10px;" title="24英寸（40-50人用）">
                        <em>24英寸（40-50人用）</em>
                      </p>
                      <input
                        type="radio"
                        style="display:none"
                        id="spec_value_15202"
                        name="spec_16"
                        value="15202"
                        checked
                      />
                    </router-link>
                  </div>
                </ul>
                <ul class="quantity">
                  <h2 style="float:left; padding-right:0.5rem; line-height:42px">购买数量</h2>
                  <div class="items" style="float:left">
                    <span class="ui-number radius5" style="float:left">
                      <button type="button" class="decrease radius5" @click="myMinus">-</button>
                      <input
                        type="text"
                        class="num"
                        name="number"
                        id="goods_number"
                        autocomplete="off"
                        value="1"
                        min="1"
                        max="99"
                        v-model="num"
                      />
                      <button type="button" class="increase radius5" @click="myAdd">+</button>
                    </span>
                    <p style="float:left;height:2.3rem;line-height:2.3rem;margin-left:1rem">
                      库存：
                      <font id="shows_number">971件</font>
                    </p>
                  </div>
                </ul>
                <ul style="clear:both">
                  <li
                    style="display:block;clear:both;font-weight:bold;color:#333;padding-right:0.5rem;padding-top:0.5rem;margin-bottom:0.5rem;left:-107px;"
                  >
                    商品总价：
                    <font id="ECS_GODDS_AMOUNT" class="goods_price">
                      ￥
                      <span>298</span>
                    </font>
                  </li>
                </ul>
              </div>
              <div class="option">
                <button type="button" class="btn cart radius5">
                    <div class="ico_01" @click="myaAdCar"></div>加入购物车
                </button>
                  <button type="button" class="btn buy radius5" @click="shop">立即购买</button>
                <div class="tipMask" id="hidDiv" style="display:none"></div>
              </div>
            </li>
          </ul>
        </div>
      </section>
    </div>
    <div class="blank2"></div>
    <div id="tab1">
      <div class="desc wrap"></div>
      <p style="text-align:left;" class="p_img">
        <img src="../assets/details-pics/1.jpg" alt class="p_img" />
      </p>
      <p style="text-align:left;">
        <img src="../assets/details-pics/2.jpg" alt class="p_img" />
      </p>
      <p style="text-align:left;">
        <img src="../assets/details-pics/3.jpg" alt class="p_img" />
      </p>
      <div class="footer mr-t20">
        <p class="region">© 2012-2020 芙拉维尔蛋糕鲜花网 版权所有，并保留所有权利。</p>
      </div>
    </div>
    <my-footer></my-footer>
  </div>
</template>
<style scoped>
* {
  margin: 0;
  padding: 0;
}
ul {
  list-style: none;
}
a {
  color: #000000;
  text-decoration: none;
}
.header {
  background: #84c95b;
  height: 48px;
  font-size: 1rem;
  font-weight: normal;
}
.header a {
  position: absolute;
  top: 0;
  display: block;
  width: 3rem;
  height: 3rem;
  text-indent: -100rem;
  overflow: hidden;
  cursor: pointer;
  left: 0px;
}
.icon_10 {
  background: url(../assets/details-logo/ico_10.png) no-repeat 50% 50%;
  background-size: 1.2rem 1.2rem;
}
.swiper {
  width: 100%;
  /* height: 281px; */
}
.swiper img {
  width: 100%;
  /* height: 281px; */
  max-width: 500px;
}
.goodsInfo_title {
  background-color: #fff;
  box-shadow: 0 -0.5rem 0.5rem 0 rgba(0, 0, 0, 0.08);
  box-sizing: border-box;
  position: relative;
  padding: 0 0.6rem;
}
.blank1 {
  height: 0.4rem;
  line-height: 0.4rem;
  clear: both;
  visibility: hidden;
}
.goodsInfo_title ul .price {
  display: inline-block;
  font-size: 0.8rem;
  font-weight: normal;
}
.price {
  color: #ff0066;
  margin-left: -200px;
  font-size: 1rem;
  display: inline-block;
  font-weight: bold;
}
.title {
  color: red;
  font-weight: bold;
}
.goodsInfo_title ul span {
  font-size: 1.5rem;
}
.goodsInfo_title ul p.xiaoliang {
  display: inline-block;
  float: right;
  margin-right: 0.5rem;
  line-height: 2rem;
  font-size: 0.9rem;
}
.goodsInfo_title ul p.xiaoliang span.sales {
  color: #ff0066;
  padding: 0 2px;
  line-height: 2rem;
  font-size: 1.2rem;
}
.goodsInfo_title h1 {
  font-size: 1rem;
  text-align: left;
  font-weight: normal;
  line-height: 2rem;
}
.goodsInfo_title .brief {
  font-size: 14px;
  text-align: left;
  padding: 1rem 0;
  line-height: 1.2rem;
  color: #555;
}
.blank2 {
  height: 0.6rem;
  line-height: 0.6rem;
  clear: both;
  background: lightgray;
  z-index: 10;
  width: 100%;
}
.goodsBuy {
  margin: 0.7rem 0;
  background-color: #fff;
}
.radius5 {
  -moz-border-radius: 5px;
  -webkit-border-radius: 5px;
  border-radius: 5px;
}
.goodsBuy .fields {
  display: none;
  overflow: hidden;
}
.goodsBuy .fields .ul2 {
  -webkit-tap-highlight-color: transparent;
}
.goodsBuy .fields ul li {
  color: #333;
  position: relative;
}
h2 {
  color: #333;
  line-height: 42px;
  float: left;
  padding-right: 0.5rem;
}
.catt {
  height: auto;
  overflow: hidden;
}
.catt a {
  border: #c8c9cd 1px solid;
  border-radius: 0.3rem;
  text-align: center;
  margin-right: 5px;
  margin-top: 5px;
  display: block;
  white-space: nowrap;
  color: #000;
  text-decoration: none;
  float: left;
  position: relative;
  cursor: pointer;
}
.catt a p {
  border: #fff 1px solid;
  border-radius: 0.3rem;
}
.catt em {
  padding: 3px 7px;
}
.quantity {
  padding: 10px 0;
}
.quantity .ui-number {
  display: inline-block;
  vertical-align: middle;
  border: 1px solid #e3e3e3;
  letter-spacing: 0;
  height: 40px;
  line-height: 40px;
  overflow: hidden;
}
.decrease {
  font-style: normal;
  font-size: 20px;
  font-weight: 700;
  border: 0;
  display: inline-block;
  width: 30px;
  height: 100%;
  -webkit-user-select: none;
  background: #fafafa;
  color: #333;
  cursor: pointer;
}
.num {
  height: 100%;
  width: 38px;
  border: 0;
  -webkit-border-radius: 0;
  border-radius: 0;
  font-weight: 700;
  text-align: center;
}
.increase {
  font-style: normal;
  font-size: 20px;
  font-weight: 700;
  border: 0;
  display: inline-block;
  width: 30px;
  height: 100%;
  -webkit-user-select: none;
  background: #fafafa;
  color: #333;
  cursor: pointer;
}
.fields ul li {
  color: #333;
  position: relative;
}
.goods_price {
  color: #ff0066;
  font-size: 0.8rem;
  display: inline-block;
  font-weight: 600;
}
.goods_price span {
  color: #ff0066;
  font-size: 1.4rem;
  display: inline-block;
  font-weight: 600;
}
.option {
  padding: 0.1rem 0;
  display: -webkit-box;
  text-align: center;
}
.cart {
  background-color: #eeb4b4;
}
.btn {
  color: #fff;
  border: 0;
  height: 2.5rem;
  line-height: 2.5rem;
  width: 50%;
  -webkit-box-flex: 1;
  display: block;
  -webkit-user-select: none;
  font-size: 0.9rem;
}
.ico_01 {
  -webkit-background-size: 1rem 1rem;
  -moz-background-size: 1rem 1rem;
  -o-background-size: 1rem 1rem;
  background-size: 1rem 1rem;
  display: inline-block;
  width: 1.81rem;
  height: 1.43rem;
  margin-right: 0.5rem;
  position: relative;
  top: 0.5rem;
}
.ico_01 {
  background: url(../assets/details-logo/ico_01.png) no-repeat 50% 50%;
  -webkit-background-size: 1.8rem 1.8rem;
  -moz-background-size: 1.8rem 1.8rem;
  -o-background-size: 1.8rem 1.8rem;
  background-size: 1.81rem 1.43rem;
}
.buy {
  margin-left: 0.5rem;
  background-color: #ff0066;
}
.tipMask {
  background-color: #000;
  display: none;
  height: 100%;
  left: 0;
  opacity: 0.4;
  position: fixed;
  top: 0;
  width: 100%;
  z-index: 101;
}
.desc {
  background: #fff;
}
.wrap {
  overflow: hidden;
  padding: 0 0.5rem;
}
.desc p {
  -webkit-margin-before: -0.4em;
}
.p_img {
  width: 100%;
  height: auto;
  display: block;
}
.footer {
  padding: 0 0.6rem 0.6rem;
  color: #666;
  font-size: 0.7rem;
}
.region {
  text-align: center;
  line-height: 1.3rem;
}
.mr-t20 {
  margin-top: 20px;
}
</style>
<script>
import { mapMutations } from "vuex";
import { Swiper, SwiperSlide } from "vue-awesome-swiper";
import "swiper/css/swiper.css";
export default {
  name: "swiper-example-autoplay",
  title: "Autoplay",
  components: {
    Swiper,
    SwiperSlide
  },
  data() {
    return {
      swiperOption: {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 1000,
          disableOnInteraction: false
        },
        loop: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true
        },
        effect: "fade",
        fadeEffect: {
          crossFade: true
        },
        speed: 3000
        // navigation: {
        //   nextEl: ".swiper-button-next",
        //   prevEl: ".swiper-button-prev",
        // },
      },
      imags: [],
      //   info:{}
      carousel: [],
      details: [],
      product: [],
      num: 0
    };
  },
  methods: {
    ...mapMutations(["addCar"]),
    myaAdCar() {
      let obj = {
        num: this.num,
        product: this.product
      };
      obj.product.num = this.num;
      if (this.num > 0) {
        this.addCar(obj);
        this.$toast({
          message: "加入购物车成功",
          position: "center",
          duration: 2000
        });
      }
    },
    myAdd() {
      this.num++;
    },
    myMinus() {
      if (this.num > 0) {
        this.num--;
      }
    },
    shop(){
      this.$router.push('/checkout')
    }
  },
  mounted() {
    let id = this.$route.params.fid
    // let id = 1;
    console.log(id);
    this.axios.get("/details?pid=" + id).then(res => {
      console.log(res.data);
      this.details = res.data;
      // console.log(this.details[0].price);
      let data = res.data;
      this.product=data
      data.forEach(item => {
        item.carousel_pics1 = require("../assets/details-carousel/" +
          item.carousel_pics1);
        item.carousel_pics2 = require("../assets/details-carousel/" +
          item.carousel_pics2);
        item.carousel_pics3 = require("../assets/details-carousel/" +
          item.carousel_pics3);
        // console.log(item);
        this.imags.push(item);
      });
      // this.axios.get('/details-carousel').then(results=>{
      //     console.log(results.data)
      //     let data = results.data;
      //     data.forEach(item=>{
      //         item.pic = require('../assets/details-carousel/'+item.pic)
      //         this.carousel.push(item);
      //     });
    });
  }
};
</script>