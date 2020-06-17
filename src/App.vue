<template>
  <div id="app">
    <router-view />
  </div>
</template>
<script>
export default {
  name: "App"
};
</script>
<style>
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
html { 
  background-color: #ffd700;
  background-image: linear-gradient(60deg, #ffd700 0%, #ffab1f 100%);
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
p {
  color: black;
}
a, label {
  font-size: 1.2rem;
  text-decoration: none;
}
a:visited {
  color: black;
}
a:hover {
  color: #ffd700;
}

#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
.menu {
  display: inline-block;
  background: #F6F6F6;
  height: 5rem;
}
#nav {
  display: flex;
  align-items: center;
  justify-content: space-around;
  width: 100vw;
}
.container-logo {
  display: inline-flex;
}
.container-logo img {
  display: inline-block;
  width: 15rem;
  cursor: pointer;
}
.logout-button {
  height: 2.5rem;
  width: 7rem;
  font-size: 1.2rem;
  outline: none;
  border: none;
  border-radius: .5rem;
  background: #afafaf;
  box-shadow: 15px 15px 81px -12px rgba(0,0,0,0.17);
  margin: 1rem 0;
}
.logout-button:hover {
  background: #ffd700;
}

.user-name {
  cursor: pointer;
}
#search {
  outline: none;
  border: .1rem solid goldenrod;
  border-radius: .3rem;
  width: 70%;
  max-width: 30rem;
  height: 2.5rem;
  margin-bottom: 1rem;
  font-size: 1.2rem;
}
h2 {
  font-size: 3rem;
  margin: 2rem 0;
  color: black;
}
a {
  margin-left: 1rem;
  color: black;
}
a:visited {
  color: black;
}
a:hover {
  color: rgb(0, 47, 255);
}
.login {
  height: 100vh;
}
.container-login {
  display: inline-flex;
  justify-content: space-evenly;
  flex-direction: column;
  align-items: center;
  width: 90%;
  max-width: 690px;
  background: #f6f6f6;
  border-radius: 0.5rem;
  margin-top: 10rem;
  height: 20rem;
}
.user-input,
.password-input {
  outline: none;
  border: none;
  border-radius: 0.3rem;
  width: 70%;
  max-width: 30rem;
  height: 2.5rem;
  margin-bottom: 1rem;
  font-size: 1.2rem;
}
input[placeholder] {
  text-align: center;
}
.login-button {
  height: 2.5rem;
  width: 7rem;
  font-size: 1.2rem;
  outline: none;
  border: none;
  border-radius: 0.5rem;
  background: #afafaf;
  box-shadow: 15px 15px 81px -12px rgba(0, 0, 0, 0.17);
  margin: 1rem .5rem;
}
.signup-link {
  margin-bottom: 1rem;
}
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
  height:35rem;
}
.container-clientes {
  
}
.container-productos {
  display: flex;
  flex-direction: column;
}

.producto {
  display: inline-flex;
  flex-direction: column;
  flex-wrap: wrap;
  margin: 1rem;
  max-width: 320px;
}

.container-imagen-producto {
  width: 320px;
  background: white;
}
.container-imagen-producto img {
  width: 100%;
}
.container-card {
  background: white;
  width: 320px;
}
.container-info {
  display: flex;
  flex-direction: column;
  justify-content: space-around;
  height: 15rem;
  background: white;
  margin: 1rem 1.5rem;
}
.container-info h2 {
  font-size: 1.2rem;
  flex-wrap: wrap;
  margin-bottom: 1rem;
  line-height: 1.5em;
}

.stock span {
  display: inline-block;
  padding: 0.7rem;
  color: green;
  border: 1px solid black;
}
.precio {
  font-size: 1.5rem;
  font-weight: 900;
}
.comprar {
  display: flex;
  align-items: center;
  justify-content: center;
  max-width: 320px;
  font-size: 1.2rem;
  outline: none;
  border: none;
  background: #afafaf;
  box-shadow: 15px 15px 81px -12px rgba(0, 0, 0, 0.17);
  height: 2rem;
}
@media (max-width: 768px) {
  .container-login {
    max-width: 690px;
  }
}


</style>
