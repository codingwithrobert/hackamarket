<template>
  <div class="menu">
    <div id="nav">
      <figure class="container-logo">
        <img src="../assets/img/logo.png" alt />
      </figure>
      <router-link class="product" :to="{name:'Productos'}">Productos</router-link>
      <router-link class="clientes" :to="{name:'Clientes'}">Clientes</router-link>
      <router-link class="add-client" :to="{name:'AddClient'}">Añadir Clientes</router-link>
      <router-link class="about" :to="{name:'About'}">About</router-link>
      
      <p class="user-name">
        <span>👋😄 Welcome:</span>
        {{nombreUsuario}}
      </p>
      <button class="logout-button" @click="logoutUser()">Logout</button>
    </div>
  </div>
</template>

<script>
import { clearLogin } from "../api/utils";
export default {
  name: "MenuCustom",
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
@media (max-width: 768px) {
  .about,
  .user-name,
  .clientes {
    display: none;
  }
}
</style>