<template>
  <div class="container-productos">
    <h1>Catalogo</h1>
    <div class="container-producto">
      <div class="producto" v-for="product in productos" :key="product.id">
        <figure class="container-imagen-producto">
          <img :src="product.img" />
        </figure>
        <div class="container-card">
          <div class="container-info">
            <h2 class="nombre">
              <strong>{{ product.nombre }}</strong>
            </h2>
            <p>Producto ID: {{ product.id }}</p>
            <p>{{ product.descripcion }}</p>
            <p>
              <strong>Estado:</strong>
              {{ product.estado }}
            </p>
            <p>
              <strong>Stock:</strong>
              {{ product.stock }}
            </p>
            <p>
              <strong>Precio:</strong>
              {{ product.precio }} €
            </p>
          </div>
        </div>
        <button class="comprar" @click.prevent="pedirEvent">
          Comprar
        </button>
      </div>
    
    </div>
  </div>
</template>

<script>
export default {
  name: "listaProductos",
  props: {
    productos: Array,
    stock: String
  },
  methods: {
    pedirEvent() {
      this.$emit("pedir");
    }
  }
};
</script>

<style scoped>

</style>
