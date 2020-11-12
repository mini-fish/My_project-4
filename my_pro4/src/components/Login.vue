<template>
  <div class="login">
    <mt-header title="会员登录">
      <mt-button icon="back" slot="left"></mt-button>
    </mt-header>
    <div class="form">
      <mt-field
        class="login_input"
        label="账号 ："
        placeholder="请输入用户名"
        v-model="username"
        @blur.native.capture="checkUsername"
        :state="usernameState"
        type="tel"
      ></mt-field>
      <mt-field
        class="login_input"
        label="密码 ："
        v-model="password"
        placeholder="请输入密码"
        @blur.native.capture="checkPassword"
        :state="passwordState"
        type="password"
      ></mt-field>
    </div>
    <mt-button class="btn" size="large" @click="handle">登录</mt-button>
    <div class="login"><router-link to="/register">去注册</router-link></div>
    <my-footer></my-footer>
  </div>
  
</template>

<script>
export default {
  data() {
    return {
      username: "",
      password: "",
      usernameState: "",
      passwordState: "",
    };
  },
  methods: {
    // ...mapMutations(["logined"]),
    checkUsername() {
      let usernameRegExp = /^[0-9a-zA-Z_]{6,20}$/;
      if (usernameRegExp.test(this.username)) {
        this.usernameState = "success";
        return true;
      } else {
        this.usernameState = "error";
        this.$toast({
          message: "用户名为必填项",
          position: "top",
          duration: "2000",
        });
        return false;
      }
    },
    checkPassword() {
      //密码的正则表达式
      let passwordRegExp = /^[0-9A-Za-z]{8,20}$/;
      if (passwordRegExp.test(this.password)) {
        this.passwordState = "success";
        return true;
      } else {
        this.passwordState = "error";
        this.$toast({
          message: "密码必须为字母、数字的组合体",
          position: "top",
          duration: "2000",
        });
        return false;
      }
    },
    handle() {
      if (this.checkUsername() && this.checkPassword()) {
        this.axios
          .post("/login", `uname=${this.username}&upwd=${this.password}`)
          .then((res) => {
            console.log(res.data);
            sessionStorage.setItem("uname", this.username);
            // this.logined(this.username);
            this.$router.push("/");
          });
      }
    },
  },
};
</script>

<style scoped>
.login .mint-header {
  height: 48px;
  font-size: 16px;
  background-color: #84c95b;
}
.login .btn {
  background-color: #84c95b;
  color: #fff;
  margin-top: 50px;
}
.login .login {
  text-align: left;
  margin-top: 40px;
}
</style>