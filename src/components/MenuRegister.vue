<template>
  <div class="menu">
    <div id="nav">
      <router-link :to="{name:'Login'}">
        <figure class="container-logo">
          <img src="../assets/img/logo.png" alt />
        </figure>
      </router-link>
      <div class="enlaces">
        <router-link class="register-button" :to="{ name: 'Register' }">Sign Up</router-link>
      </div>
    </div>
  </div>
</template>

<script>
import { clearLogin } from "../api/utils";
export default {
  name: "MenuRegister",
  data() {
    return {
      nombreUsuario: ""
    };
  },
  methods: {
    logoutUser() {
      this.nombreUsuario = "";
      this.$router.push("/");
      return clearLogin();
    },
    getUserName() {
      this.nombreUsuario = localStorage.getItem("Usuario");
    }
  },
  created() {
    this.getUserName();
  }
};
</script>
<style scoped>
</style>