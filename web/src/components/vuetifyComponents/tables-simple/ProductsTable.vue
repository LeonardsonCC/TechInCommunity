<template>
    <!-- ----------------------------------------------------------------------------- -->
    <!-- TableSimpleFixHeader -->
    <!-- ----------------------------------------------------------------------------- -->
    <div>
        <v-list-item-subtitle class="text-wrap">
          Lista de Produtos
        </v-list-item-subtitle>
        <div class="mt-4">
            <v-simple-table fixed-header height="300px">
                <template v-slot:default>
                <thead>
                    <tr>
                      <th class="text-left">Nome</th>
                      <th class="text-left">Quatidade</th>
                      <th class="text-left">Preco</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="item in productsList" :key="item.name" @click="$emit('row-click', item.name)">
                      <td>{{ item.name }}</td>
                      <td>{{ item.quantity }} {{item.unit}}</td>
                      <td>{{ item.price }}</td>
                    </tr>
                </tbody>
                </template>
            </v-simple-table>
        </div>
    </div>
</template>

<script>
export default {
  name: "ProductsTable",

  props: [
    'productsList'
  ],
};
</script>
