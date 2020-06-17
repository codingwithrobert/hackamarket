<template>
  <div class="about">
    <vue-headful title="About" />
    <menucustom />
    <h2>This Website was created by Robert Hernandez</h2>
    <figure>
      <img :src="urlImage" alt="Eddy Murphy" />
    </figure>
    <footercustom></footercustom>
  </div>
</template>

<script>
//IMPORTANDO MENU
import menucustom from "../components/MenuCustom.vue";
//IMPORTANDO FOOTER
import footercustom from "../components/FooterCustom.vue";

export default {
  name: "About",
  components: { menucustom, footercustom },
  data() {
    return {
      urlImage: "https://bit.ly/3cGIaLK"
    };
  }
};
</script>

<style scoped>
figure {
  display: flex;
  justify-content: center;
}
figure img {
  width: 20rem;
  border-radius: 50%;
}
h2 {
  font-size: 3rem;
  margin: 1.2rem auto;
}
</style>

