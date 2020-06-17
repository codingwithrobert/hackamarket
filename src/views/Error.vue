<template>
  <div class="error-container">
    <vue-headful title="Error" description="Error page of web" />
    <menuregister />
    <div class="error">
      <img src="../assets/img/404-cat.png" alt="" />
    </div>
  </div>
</template>

<script>
import menuregister from "../components/MenuRegister.vue";
export default {
  name: "Error",
  components: {
    menuregister,
  },
};
</script>

<style scoped>
.error {
  display: flex;
  justify-content: center;
  align-items: center;
  width: 100vw;
  height: 100vh;
  background: white;
}
.error img {
  width: 50rem;
}
</style>
