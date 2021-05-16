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
    ]
  }),
  components: {
      "products-table": () => import('@/components/admin/products/ProductsTable'),
      "product-form": () => import('@/components/admin/products/Form'),
  },
  methods: {
      showNewProductForm: function () {
          this.productFormActive = true;
      },
      newProductSubmitHandler: function () {
          console.log("TOP");
      },
      productRowClick: function (name) {
          console.log("Click", name)
      }
  }
};
</script>
