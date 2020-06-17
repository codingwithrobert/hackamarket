<template>
  <div>
    <div class="container-signup">
      <h2>Cliente Nuevo</h2>
      <p v-show="required">Tienes datos sin completar</p>
      <label for="nombre">Nombre:</label>
      <input class="user-input"
        type="text"
        name="nombre"
        placeholder="Nombre del cliente"
        v-model="nombre"
      />
      <br />
      <label for="apellido">Apellido:</label>
      <input class="user-input"
        type="text"
        name="apellido"
        placeholder="Apellido del cliente"
        v-model="apellido"
      />
      <br />
      <label for="ciudad">Ciudad:</label>
      <input class="user-input"
        type="text"
        name="ciudad"
        placeholder="Ciudad del cliente"
        v-model="ciudad"
      />
      <br />
      <label for="empresa">Empresa:</label>
      <input class="user-input"
        type="text"
        name="empresa"
        placeholder="Empresa del cliente"
        v-model="empresa"
      />
      <br />
      <button class="logout-button" @click="addClientEvent">CREAR</button>
    </div>
  </div>
</template>

<script>
export default {
  name: "FormularioClientes",
  props: {
    required: Boolean,
  },
  data() {
    return {
      nombre: "",
      apellido: "",
      ciudad: "",
      empresa: "",
    };
  },
  methods: {
    addClientEvent() {
      this.$emit("add", this.nombre, this.apellido, this.ciudad, this.empresa);
    },
  },
};
</script>

<style scoped>
label {
  color: black;
  margin: 0 0 .5rem 0;
}
</style>
