<template>
  <div class="register">
    <mt-header title="会员注册" >
      <mt-button icon="back" slot="left"  @click="$router.back(-1)"></mt-button>
    </mt-header>
    <div class="form">
      <mt-field
        type="text"
        label="用户名："
        placeholder="请输入用户名"
        :attr="{ maxlength: 15 }"
        v-model="username"
        :state="usernameState"
        @blur.native.capture="checkUsername"
      >
      </mt-field>
      <mt-field
        type="password"
        label="密码："
        placeholder="请输入密码"
        :attr="{ maxlength: 20, autocomplete: 'off' }"
        v-model="password"
        :state="passwordState"
        @blur.native.capture="checkPassword"
      >
      </mt-field>
      <mt-field
        type="password"
        label="确认密码："
        placeholder="请再次输入密码"
        :attr="{ maxlength: 20, autocomplete: 'off' }"
        v-model="conpassword"
        :state="conpasswordState"
        @blur.native.capture="checkConpassword"
      >
      </mt-field>
    </div>
    <mt-button class="btn" size="large" @click="handle">提交注册</mt-button>
    <div class="login"><router-link to="/login">去登陆</router-link></div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      // 用户名
      username: "",
      // 密码
      password: "",
      // 确认密码
      conpassword: "",
      // 用户名的状态
      usernameState: "",
      // 密码的状态
      passwordState: "",
      // 确认密码的状态
      conpasswordState: "",
    };
  },
  methods: {
    //校验用户名
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
    //校验密码
    checkPassword() {
      //密码的正则表达式
      let passwordRegExp = /^[0-9A-Za-z]{8,20}$/;
      if (passwordRegExp.test(this.password)) {
        return true;
      } else {
        this.$toast({
          message: "密码必须为字母、数字的组合体",
          position: "top",
          duration: "2000",
        });
        return false;
      }
    },
    //校验确认密码
    checkConpassword() {
      if (this.password != this.conpassword) {
        this.$toast({
          message: "两次密码不一致",
          position: "top",
          duration: "2000",
        });
        return false;
      } else {
        return true;
      }
    },
    handle() {
      if (
        this.checkUsername() &&
        this.checkPassword() &&
        this.checkConpassword()
      ) {
        //该将获取到的信息提交到WEB服务器
        // console.log("该将获取到的信息提交到WEB服务器");
        this.axios
          .post("/register", `uname=${this.username}&upwd=${this.password}`)
          .then((res) => {
            console.log(res.data);
            if (res.data.code == 1) {
              this.$messagebox("注册提示", "注册成功");
              this.$router.push("/login");
            } else {
              this.$messagebox("注册提示", "用户名已经存在");
            }
          });
      }
    },
  },
};
</script>

<style scoped>
.register {
  /* background-color: #ebeced; */
}
.register .mint-header {
  height: 48px;
  font-size: 16px;
  background-color: #84c95b;
}
.register .mint-cell-wrapper {
  background-color: #ebeced;
}
.register .btn {
  background-color: #84c95b;
  color: #fff;
  margin-top: 50px;
}
.register .login {
  text-align: left;
  margin-top: 40px;
}
</style>