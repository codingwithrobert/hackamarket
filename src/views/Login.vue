<template>
  <div class="login">
    <!-- NOMBRE DE LA PAGINA -->
    <vue-headful title="Login || HackaMarket" description="Login page" />
    <menuregister />

    <div class="container-login">
      <h2>Sign In</h2>
      <input class="user-input" type="text" name="usuario" v-model="email" placeholder="Usuario..." />

      <input
        class="password-input"
        type="password"
        name="password"
        v-model="password"
        placeholder="Password..."
      />

      <button class="login-button" @click="login()">Login</button>
      <router-link class="signup-link" :to="{ name: 'Register' }">Aún no estas registrado?</router-link>
    </div>
  </div>
</template>

<script>
import { loginUser } from "../api/utils";
import menuregister from "../components/MenuRegister.vue";
export default {
  name: "Login",
  components: {
    menuregister
  },
  data() {
    return {
      email: "",
      password: ""
    };
  },
  methods: {
    async login() {
      try {
        if (this.email === "" || this.password === "")
          throw Error("Datos vacios");
        await loginUser(this.email, this.password);

        //GUARDAR EL EMAIL EN LOCALSTORAGE
        localStorage.setItem("Usuario", this.email);

        //LLEVAR A LA PAGINA DE PRODUCTOS
        this.$router.push("/productos");
      } catch (error) {
        alert(error);
      }
    }
  }
};
</script>

<style scoped>

</style>
