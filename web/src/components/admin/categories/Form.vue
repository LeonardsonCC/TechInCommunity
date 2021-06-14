<template>
  <v-row justify="center">
    <v-dialog
      v-model="show"
      persistent
      max-width="600px"
    >
      <v-card>
        <v-card-title>
          <span class="headline">Cadastro de Categorias</span>
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
                  label="Nome da Categoria*"
                  v-model="category.name"
                  required
                ></v-text-field>
              </v-col>
              <v-col
                cols="12"
                sm="12"
                md="12"
              >
                <v-text-field
                  label="Descricao da Categoria"
                  v-model="category.description"
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
                  v-model="category.picture"
                  label="Imagem da Categoria"
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
            @click="$emit('submit', category)"
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
        category: {
          name: "",
          description: "",
          picture: null,
        }
      }
    }
  }
</script>
