<template>
    <!-- ----------------------------------------------------------------------------- -->
    <!-- TableSimpleFixHeader -->
    <!-- ----------------------------------------------------------------------------- -->
    <div>
        <v-list-item-subtitle class="text-wrap">
          Lista de Categories
        </v-list-item-subtitle>
        <div class="mt-4">
            <v-simple-table fixed-header height="300px">
                <template v-slot:default>
                <thead>
                    <tr>
                      <th class="text-left" style="width: 100px">Imagem</th>
                      <th class="text-left">Nome</th>
                      <th class="text-left">Descricao</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="item in categoriesList" :key="item.name" @click="$emit('edit', item.id)">
                      <td>
                        <v-img  
                          :src="item.picture" 
                          :lazy-src="item.picture" 
                          :alt="item.name"
                          max-width="100"
                          max-height="100"></v-img>
                      </td>
                      <td>{{ item.name }}</td>
                      <td>{{ item.description }}</td>
                    </tr>
                </tbody>
                </template>
            </v-simple-table>
        </div>
    </div>
</template>

<script>
export default {
  name: "CategoriesTable",

  props: [
    'categoriesList',
  ],
};
</script>
