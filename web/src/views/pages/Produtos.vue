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
import api from "../../api";

export default {
  name: "Produtos",

  data: () => ({
    productFormActive: false,
    products: [
      {
        id: 1,
        name: "Teste",
        quantity: "100",
        unit: "Kg",
        price: 100
      }
    ],
    categories: [],
  }),
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
          api({
              method: "GET",
              url: "category?supermarket_id=1",
          })
            .then(({ data }) => {
              this.categories = data;
            })
            .catch((err) => console.error(err))
      },
      fetchProducts: function () {
          api({
              method: "GET",
              url: "product/search?supermarket_id=1",
          })
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
          api({
            method: "POST",
            url: "product",
            data: JSON.stringify({
                ...product,
                picture: base64picture
            })
          })
            .then((data) => {
              this.productFormActive = false;
              console.log(data);
            })
            .catch((err) => console.error(err))

      },
      productRowClick: function (name) {
          console.log("Click", name)
      }
  }
};
</script>
