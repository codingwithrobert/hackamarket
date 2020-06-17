<template>
  <div class="container-clientes">
     <div class="clientes">
    <div class="client" v-for="(client,index) in clientes" :key="client.id">
      
      <div class="container-card">
        <div class="container-info">
          <p>ID: {{ client.id }}</p>
          <p>Nombre: {{ client.nombre }}</p>
          <p>Apellido: {{ client.apellido }}</p>
          <p>Ciudad: {{ client.ciudad }}</p>
          <p>Empresa: {{ client.empresa }}</p>
        </div>
      </div>
      <div class="edit-button">
        <button class="login-button" @click="editClientEvent(index)">EDIT</button>
        <button class="login-button" @click="deleteClientEvent(index)">DELETE</button>
      </div>
      
    </div>
  </div>  
  </div>
  
</template>

<script>
export default {
  name: "listaClientes",
  props: {
    clientes: Array
  },
  methods: {
    editClientEvent(index) {
      // Guaradandno la info de la nota seleccionada
      let data = this.clientes[index];
      // Enviando la info de la nota a la vista
      this.$emit("edit", data);
    },
    deleteClientEvent(index) {
      let data = this.clientes[index].id;

      this.$emit("delete", data);
    }
  }
};
</script>

<style scoped>
.client {
  display: inline-flex;
  justify-content: center;
  margin: 2rem;
}
.clientes {
  
}
.avatar {
  width: 10rem;
}
.edit-button {
  display: inline-flex;
  max-width: 320px;
  background: white;
}
</style>