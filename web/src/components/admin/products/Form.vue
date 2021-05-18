<template>
  <v-row justify="center">
    <v-dialog
      v-model="show"
      persistent
      max-width="600px"
    >
      <v-card>
        <v-card-title>
          <span class="headline">Cadastro de Produtos</span>
        </v-card-title>
        <v-card-text>
          <v-container>
            <v-row>
              <v-col
                cols="12"
                sm="12"
                md="12"
              >
                <v-text-field
                  label="Nome do Produto*"
                  v-model="product.name"
                  required
                ></v-text-field>
              </v-col>
              <v-col
                cols="12"
                sm="6"
                md="6"
              >
                <v-select
                  :items="['KG', 'UN']"
                  v-model="product.unit"
                  label="Unidade*"
                ></v-select>
              </v-col>
              <v-col
                cols="12"
                sm="6"
                md="6"
              >
                <v-text-field
                  label="Quantidade*"
                  v-model="product.quantity"
                  required
                ></v-text-field>
              </v-col>
              <v-col cols="12">
                <v-select
                  :items="[{
                      id: 1,
                      name: 'Comida'
                    }]"
                  label="Categoria*"
                  v-model="product.category"
                  item-text="name"
                  item-value="id"
                ></v-select>
              </v-col>
              <v-col
                cols="12"
                sm="12"
                md="12"
              >
                <v-text-field
                  label="Preço*"
                  v-model="product.price"
                  required
                ></v-text-field>
              </v-col>
              <v-col
                cols="12"
                sm="12"
                md="12"
              >
                <v-file-input
                  show-size
                  v-model="product.picture"
                  label="Imagem do Produto"
                ></v-file-input>
              </v-col>
            </v-row>
          </v-container>
          <small>* indica que o campo é obrigatório</small>
        </v-card-text>
        <v-card-actions>
          <v-spacer></v-spacer>
          <v-btn
            color="red darken-1"
            text
            @click="$emit('close')"
          >
            Fechar
          </v-btn>
          <v-btn
            color="blue darken-1"
            text
            @click="$emit('submit', product)"
          >
            Salvar
          </v-btn>
        </v-card-actions>
      </v-card>
    </v-dialog>
  </v-row>
</template>

<script>

  export default {
    props: [
      "show"
    ],
    data: function () {
      return {
        product: {
          name: "",
          unit: "",
          quantity: 0,
          category: "",
          price: 0.00,
          picture: null
        }
      }
    }
  }
</script>
