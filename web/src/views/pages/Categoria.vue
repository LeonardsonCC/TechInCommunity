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
          :category="categoryFormEdit"
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
import { toBase64, getImageUrl } from "../../providers/file";
import { fetchCategories, addCategory, updateCategory } from "../../providers/api/categories";
import * as authorization from "../../providers/authorization";

export default {
  name: "Categoria",

  data: () => ({
    categoryFormActive: false,
    categoryFormEdit: {
        id: -1,
        name: "",
        description: "",
        picture: null,
    },
    categories: [],
    needUpdate: false,
  }),
  watch: {
      needUpdate: function (value) {
          if (value === true) {
              this.fetchCategoriesList()
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
          fetchCategories(authorization.getInfo().id)
            .then(({ data }) => {
              data = data.map((item) => {
                  item.picture = getImageUrl(item.picture);
                  return item;
              })
              this.categories = data;
            })
            .catch((err) => console.log(err))
      },
      showNewCategoryForm: function () {
          this.categoryFormActive = true;
          this.categoryFormEdit = {
              id: -1,
              name: "",
              description: "",
              picture: null,
          };
      },
      newCategorySubmitHandler: async function (category) {
          // Update Category
          if (category.id > 0) {
              if (!category.name &&
                  !category.description) {
                throw new Error("Erro ao validar atributos da categoria");
              }

             let data = {
                ...category,
             }
             if (category.picture !== null) {
                 const base64picture = await toBase64(category.picture);
                 data.picture = base64picture;
             }
             updateCategory(data)
                .then((data) => {
                  this.categoryFormActive = false;
                  console.log(data);
                  this.needUpdate = true;
                })
                .catch((err) => console.error(err))
          } else {
              // New category
              if (!category.name &&
                  !category.description) {
                throw new Error("Erro ao validar atributos da categoria");
              }

             const base64picture = await toBase64(category.picture);
             addCategory({
                ...category,
                 picture: base64picture
              })
                .then((data) => {
                  this.categoryFormActive = false;
                  console.log(data);
                  this.needUpdate = true;
                })
                .catch((err) => console.error(err))
          }
      },
      categoryRowClick: function (category) {
          console.log("Click", category);
          this.categoryFormEdit = category;
          this.categoryFormActive = true;
          this.needUpdate = true;
      }
  }
};
</script>
