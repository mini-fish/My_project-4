<template>
  <div class="checkout">
    <mt-header title="购物车">
      <mt-button icon="back" slot="left"  @click="$router.back(-1)"></mt-button>
    </mt-header>
    <ul>
      <li>1.购物车列表</li>
      <li>2.确认订单</li>
      <li>3.购买成功</li>
    </ul>
    <div class="pro">
      <div class="card">
        <div class="inner" v-for="(v, i) of productList" :key="i">
          <input
            class="checkbox"
            type="checkbox"
            :checked="active"
            name=""
            @click="checkOne(i)"
            ref="checkI"
          />
          <div class="left">
            <img :src="v.img" alt="" />
          </div>
          <div class="right">
            <p class="title"><span>水果蛋糕|水果传奇</span></p>
            <p>尺寸选择:6英寸(1-3人用)</p>
            <div class="desc">
              <span class="price">￥{{ v.price }}</span>
              <span class="change">
                <button @click="changeNumber(false, i)">－</button>
                <input :value="v.num" type="text" />
                <button @click="changeNumber(true, i)">＋</button>
              </span>
            </div>
          </div>
          <div class="del" @click="delOne(i)">×</div>
        </div>
      </div>
      <footer>
        <div class="left">
          <input
            @click="checkAll"
            type="checkbox"
            :checked="allSelect"
            name=""
            id="all"
          />
          <label for="all">全选</label>
          <span></span>
        </div>
        <div class="right">
          <span class="all"
            >合计: <i> ￥{{ totalPrice }}</i></span
          >
          <button class="check">结算({{ carNumber }})</button>
        </div>
      </footer>
    </div>
  </div>
</template>

<script>
import { mapState, mapMutations } from "vuex";
export default {
  data() {
    return {
      // number: 0,
      isNone: true,
      active: true,
      carNumber: 0,
      allSelect: true,
      totalPrice: 0,
      shoplist:[],
      productList: [
        {
          pid: 1,
          img:
            "https://www.fodangao.com/images/201911/thumb_img/910_thumb_G_1574226823933.jpg",
          title: "水果蛋糕|水果传奇",
          num: 2,
          price: 108,
        },
        {
          pid: 2,
          img:
            "https://www.fodangao.com/images/201912/thumb_img/342_thumb_G_1576354466069.jpg",
          title: "水果蛋糕|水果传奇",
          num: 4,
          price: 120,
        },
        {
          pid: 3,
          img:
            "https://www.fodangao.com/images/201905/thumb_img/997_thumb_G_1558565303483.jpg",
          title: "水果蛋糕|水果传奇",
          num: 3,
          price: 170,
        },
      ],
    };
  },
    computed: {
    ...mapState(["shopList"]),
  },
  mounted() {
    console.log(this.shoplist);
    this.getAll();
    // this.changeAll();
    // this.isAll();
  },
  methods: {
    delOne(i) {
      this.productList.splice(i, 1);
      console.log(this.productList);
    },
    checkOne(i) {
      let s = 0;
      let checkInputs = this.$refs.checkI;
      console.log(checkInputs);
      if (!checkInputs[i].checked) {
        this.num -= this.productList[i].num;
        this.totalPrice -= this.productList[i].num * this.productList[i].price;
      } else {
        this.num += this.productList[i].num;
        this.totalPrice += this.productList[i].num * this.productList[i].price;
      }
      for (let k = 0; k < checkInputs.length; k++) {
        if (checkInputs[k].checked) {
          s += 1;
        }
        if (s == checkInputs.length) {
          this.allSelect = true;
        } else {
          this.allSelect = false;
        }
      }
    },
    checkAll() {
      this.allSelect = !this.allSelect;
      if (this.allSelect) {
        this.active = true;
      } else {
        this.active = false;
      }
    },
    getAll() {
      this.carNumber = 0;
      this.totalPrice = 0;
      let checkInputs = this.$refs.checkI;
      for (let i = 0; i < checkInputs.length; i++) {
        if (checkInputs[i].checked) {
          this.carNumber += this.productList[i].num;
          this.totalPrice +=
            this.productList[i].num * this.productList[i].price;
          // console.log(this.carNumber);
        }
      }
    },
    // getAll() {
    //   this.totalPrice = 0;
    //   this.carNumber = 0;
    //   this.productList.forEach((el) => {
    //     this.carNumber += el.num;
    //     this.totalPrice += el.price * el.num;
    //   });
    // },
    changeNumber(bool, i) {
      if (bool) {
        this.productList[i].num++;
        this.getAll();
      } else {
        if (this.productList[i].num > 0) {
          this.productList[i].num--;
          this.getAll();
        }
      }
    },
  },
};
</script>

<style scoped>
img {
  width: 100%;
}
.checkout {
  background-color: #ebeced;
}
.checkout .mint-header {
  height: 48px;
  font-size: 16px;
  background-color: #84c95b;
}
.checkout ul {
  font-size: 12px;
  display: flex;
  height: 38px;
  line-height: 38px;
  background-color: #f6f4ec;
  text-align: center;
  justify-content: space-around;
}
.checkout .card {
  padding: 13px 5px;
  background-color: #f6f4ec;
  margin-top: 15px;
}
.checkout .card .inner {
  padding-left: 10px;
  height: 112px;
  margin-bottom: 15px;
  border-bottom: 1px solid #ddd;
  display: flex;
}
.checkout .card .left {
  width: 104px;
  height: 102px;
}
.checkout .card .checkbox {
  margin-top: 45px;
  margin-right: 10px;
  display: inline-block;
  width: 20px;
  height: 20px;
  border-radius: 25px;
}
.checkout .right {
  font-size: 12px;
  font-weight: bold;
  text-align: left;
  padding-top: 5px;
  margin-left: 10px;
}
.checkout .right input {
  width: 42px;
  height: 22px;
  border: 0;
  position: relative;
  text-indent: 18px;
  bottom: 1px;
}
.checkout .change button {
  display: inline-block;
  width: 24px;
  height: 24px;
  border: 0;
}
.checkout .desc {
  margin-top: 15px;
  font-size: 15px;
}
.checkout .title {
  margin-bottom: 30px;
}
.checkout .price {
  font-size: 16px;
  color: red;
  margin-right: 15px;
}
.checkout .del {
  font-size: 38px;
  width: 20px;
  position: absolute;
  right: 20px;
}
footer {
  display: flex;
  justify-content: space-between;
  margin-top: 250px;
  height: 42px;
  background-color: #f6f4ec;
}
footer .left {
  float: left;
  margin-left: 10px;
  margin-top: 15px;
}
footer .right {
  font-size: 16px;
}
footer .all {
  font-size: 17px;
  position: relative;
  font-weight: normal;
  bottom: 3px;
}
footer .all i {
  color: red;
  font-weight: bold;
}
footer .check {
  margin-left: 15px;
  height: 42px;
  width: 93px;
  height: 42px;
  position: relative;
  bottom: 5px;
  color: #fff;
  font-size: 16px;
  background-color: #09c762;
  outline: 0;
  border: 0;
}
</style>