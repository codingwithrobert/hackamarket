<template>
  <div class="productos">
    <!-- NOMBRE DE LA PAGINA -->
    <vue-headful title="Productos || HackaMarket" description="Product page" />

    <!-- MENU -->
    <menucustom class="menu"></menucustom>
    <!-- BUSQUEDA -->
    <div class="searchProduct">
      <label for="bySearch">Buscar un producto</label>
      <input v-model="search" id="search" name="bySearch" type="search" />
    </div>

    <!--  SIMBOLO DE CARGA  -->
    <div v-show="loading" class="spinner">
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
      <div></div>
    </div>

    <!-- PRODUCTOS -->
    <listaproductos :productos="filteredProduct" v-on:pedir="pedir"></listaproductos>

    <!-- FOOTER -->
    <footercustom></footercustom>
  </div>
</template>

<script>
import axios from "axios";
//IMPORTANDO MENU
import menucustom from "../components/MenuCustom.vue";
//IMPORTANDO FOOTER
import footercustom from "../components/FooterCustom.vue";
//IMPORTANDO PRODUCTOS
import listaproductos from "../components/listaProductos.vue";
//IMPORTANDO SWEETALERT
import Swal from "sweetalert2";

export default {
  name: "Productos",
  components: { menucustom, footercustom, listaproductos },
  data() {
    return {
      productos: [],
      search: "",
      loading: true
    };
  },
  methods: {
    //OBTENER LOS PRODUCTOS DE LA BBD
    getProducts() {
      let self = this;
      axios
        .get("http://localhost:3050/productos")
        .then(function(response) {
          //TIEMPO DE CARGA
          setTimeout(function() {
            self.loading = false;
            self.productos = response.data;
          }, 1000);
        })
        .catch(function(error) {
          console.log(error);
        });
    },
    //MOSTRAR MENSAJE CON SWEETALERT
    pedir() {
      Swal.fire({
        title: "Pedido en camino",
        text: "Gracias por tu compra",
        confirmButtonText: "Ok"
      });
    }
  },
  created() {
    this.getProducts();
  },
  computed: {
    filteredProduct() {
      if (!this.search) {
        return this.productos;
      }
      return this.productos.filter(
        producto =>
          producto.nombre.toLowerCase().includes(this.search.toLowerCase()) ||
          producto.id === parseInt(this.search)
      );
    }
  }
};
</script>

<style scoped>
.searchProduct {
  margin: 3rem 0 1rem 0;
}

</style>

