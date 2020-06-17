<template>
  <div class="register">
    <!-- NOMBRE DE LA PAGINA -->
    <vue-headful title="Register || HackaMarket" description="Register page" />
    <menuregister />
    <div class="container-signup">
      <h2>Sign Up</h2>
      <p v-show="required">Tienes datos sin completar</p>
      <p v-show="match">Las contraseñas no coinciden</p>
      <input
        class="user-input"
        type="email"
        name="email"
        v-model="email"
        placeholder="Email..."
      />
      <br />
      <input
        class="password-input"
        type="password"
        name="password"
        v-model="password"
        placeholder="Password..."
      />
      <br />
      <input
        class="password-input"
        type="password"
        name="password"
        v-model="repeatpassword"
        placeholder="Repeat password..."
      />
      <br />
      <div>
        <button class="login-button" @click="addUser(email, password)">
          Registro
        </button>
        <router-link :to="{ name: 'Login' }">Login</router-link>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios"; // Importando AXIOS
import menuregister from "../components/MenuRegister.vue";
export default {
  name: "Register",
  components: {
    menuregister,
  },
  data() {
    return {
      email: "",
      password: "",
      repeatpassword: "",
      correctData: false,
      required: false,
      match: false,
    };
  },
  methods: {
    //COMPROBAR QUE LOS DATOS NO ESTÁN VACIOS
    validatingData() {
      if (this.email === "" || this.password === "") {
        this.correctData = false;
        this.required = true;
      } else if (this.password != this.repeatpassword) {
        this.match = true;
      } else {
        this.correctData = true;
        this.required = false;
        this.match = false;
      }
    },
    //AÑADIR NUEVO USUARIO A LA BBDD
    addUser(email, password) {
      this.validatingData();
      if (this.correctData == true) {
        let self = this;
        axios
          .post("http://localhost:3050/user", {
            email: self.email,
            password: self.password,
          })
          .then(function(response) {
            self.emptyFields();
          })
          .catch(function(error) {
            console.log(error);
          });
      } else {
        console.log("No has rellenado todos los campos");
      }
    },
    //LIMPIAR CAMPOS INPUT
    emptyFields() {
      (this.email = ""), (this.password = "");
      //MENSAJE SWAL
      this.$router.push("/");
    },
  },
};
</script>

<style scoped>
.container-signup {
  display: inline-flex;
  justify-content: space-evenly;
  flex-direction: column;
  align-items: center;
  width: 90%;
  max-width: 690px;
  background: #f6f6f6;
  border-radius: 0.5rem;
  margin-top: 10rem;
  height: 30rem;
}
</style>
