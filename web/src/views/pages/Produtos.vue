<template>
  <v-container fluid class="down-top-padding">
    <v-row>
        <v-col cols="12" sm="12" lg="12">
          <BaseCard heading="Funções">
            <v-btn
              color="primary"
              dark
              @click="showNewProductForm"
            >
              Novo Produto
            </v-btn>
          </BaseCard>
        </v-col>
        <product-form 
          :show="productFormActive"
          :categories="categories"
          @close="productFormActive = !productFormActive"
          @submit="newProductSubmitHandler"
          ></product-form>
    </v-row>
    <v-row>
        <v-col cols="12" sm="12" lg="12">
            <BaseCard heading="Lista de Produtos">
                <products-table 
                  :products-list="products" 
                  @edit="productRowClick">
                </products-table>
            </BaseCard>
        </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { toBase64 } from "../../providers/file";
import { fetchProducts, addProduct } from "../../providers/api/products";
import { fetchCategories } from "../../providers/api/categories";
import * as authorization from "../../providers/authorization";

export default {
  name: "Produtos",

  data: () => ({
    productFormActive: false,
    products: [],
    categories: [],
    needUpdate: false,
  }),
  watch: {
      needUpdate: function (value) {
          if (value === true) {
              this.fetchProducts()
              this.needUpdate = false;
          }
      }
  },
  components: {
      "products-table": () => import('@/components/admin/products/ProductsTable'),
      "product-form": () => import('@/components/admin/products/Form'),
  },
  created: function () {
      this.fetchCategories();
      this.fetchProducts();
  },
  methods: {
      fetchCategories: function () {
        fetchCategories(authorization.getInfo().id)
            .then(({ data }) => {
              this.categories = data;
            })
            .catch((err) => console.error(err))
      },
      fetchProducts: function () {
        fetchProducts(authorization.getInfo().id)
          .then(({ data }) => {
            console.log(data);
            this.products = data;
          })
          .catch((err) => console.error(err))
      },
      showNewProductForm: function () {
          this.productFormActive = true;
      },
      newProductSubmitHandler: async function (product) {
          if (!product.name &&
              !product.unit &&
              !product.quantity &&
              !product.category &&
              !product.price &&
              !product.picture) {
            throw new Error("Erro ao validar atributos do produto");
          }

          const base64picture = await toBase64(product.picture);
          addProduct({
                ...product,
                picture: base64picture
            })
            .then((data) => {
              this.productFormActive = false;
              console.log(data);
              this.needUpdate = true;
            })
            .catch((err) => console.error(err))

      },
      productRowClick: function (name) {
          console.log("Click", name)
      }
  }
};
</script>
