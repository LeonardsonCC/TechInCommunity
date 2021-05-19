<template>
  <v-container fluid class="down-top-padding">
    <v-row>
        <v-col cols="12" sm="12" lg="12">
          <BaseCard heading="Funções">
            <v-btn
              color="primary"
              dark
              @click="showNewCategoryForm"
            >
              Nova Categoria
            </v-btn>
          </BaseCard>
        </v-col>
        <category-form 
          :show="categoryFormActive"
          @close="categoryFormActive = !categoryFormActive"
          @submit="newCategorySubmitHandler"
          ></category-form>
    </v-row>
    <v-row>
        <v-col cols="12" sm="12" lg="12">
            <BaseCard heading="Lista de Categorias">
                <categories-table 
                  :categories-list="categories" 
                  @edit="categoryRowClick">
                </categories-table>
            </BaseCard>
        </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { fetchCategories, addCategory } from "../../providers/api/categories";

export default {
  name: "Categoria",

  data: () => ({
    categoryFormActive: false,
    categories: [],
    needUpdate: false,
  }),
  watch: {
      needUpdate: function (value) {
          if (value === true) {
              this.fetchCategories()
              this.needUpdate = false;
          }
      }
  },
  components: {
      "categories-table": () => import('@/components/admin/categories/CategoriesTable'),
      "category-form": () => import('@/components/admin/categories/Form'),
  },
  created: function () {
      this.fetchCategoriesList();
  },
  methods: {
      fetchCategoriesList: function () {
          const supermarketId = 1;
          fetchCategories(supermarketId)
            .then(({ data }) => {
              this.categories = data;
            })
            .catch((err) => console.log(err))
      },
      showNewCategoryForm: function () {
          this.categoryFormActive = true;
      },
      newCategorySubmitHandler: function (category) {
          if (!category.name &&
              !category.description) {
            throw new Error("Erro ao validar atributos da categoria");
          }

         addCategory({
            ...category
          })
            .then((data) => {
              this.productFormActive = false;
              console.log(data);
              this.needUpdate = true;
            })
            .catch((err) => console.error(err))

      },
      categoryRowClick: function (name) {
          console.log("Click", name)
      }
  }
};
</script>
