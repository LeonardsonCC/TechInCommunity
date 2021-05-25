<template>
  <v-container fluid class="down-top-padding">
    <v-row>
      <v-col cols="12" lg="4">
        <v-card>
          <v-card-text class="text-center pa-7">
            <img
              :src="supermarket.logo"
              alt="user"
              width="150px"
              class="img-fluid rounded-circle shadow-sm"
            />
            <h4 class="mt-2 title blue-grey--text text--darken-2 font-weight-regular">{{supermarket.name}}</h4>
            <h6 class="subtitle-2 font-weight-light">{{supermarket.cnpj}}</h6>
          </v-card-text>
        </v-card>
      </v-col>
      <v-col cols="12" lg="8">
        <v-card>
          <v-card-text>
            <h3 class="title blue-grey--text text--darken-2 font-weight-regular">Editar informacoes</h3>
            <h6 class="subtitle-2 font-weight-light">Essas alteracoes terao efeito direto no seu aplicativo</h6>
          </v-card-text>
          <v-divider></v-divider>
          <v-card-text>
            <v-text-field
              v-model="supermarket.name"
              label="Nome"
              filled
              background-color="transparent"
            ></v-text-field>
            <v-text-field
              v-model="supermarket.cnpj"
              label="CNPJ"
              disabled
              filled
              background-color="transparent"
            ></v-text-field>
            <v-text-field
              v-model="supermarket.email"
              label="E-mail"
              disabled
              filled
              background-color="transparent"
            ></v-text-field>
            <v-text-field
              v-model="supermarket.phone"
              label="Telefone"
              filled
              background-color="transparent"
            ></v-text-field>
            <v-btn
              @click="updateSupermarket"
              class="text-capitalize mt-5 element-0" 
              color="success">Salvar Alteracoes</v-btn>
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import * as supermarketProvider from "../../providers/api/supermarket"
import { getImageUrl } from "../../providers/file";

export default {
  name: "Profile",

  data: () => ({
    supermarket: {
      logo: "",
      cnpj: "",
      email: "",
      name: "",
      phone: "",
    }
  }),
  components: {},
  created: function () {
    this.fetchSupermarketInfo();
  },
  methods: {
    fetchSupermarketInfo: function () {
      supermarketProvider.fetchPrivate()
        .then(({ data }) => {
          this.supermarket = {
            ...data,
            originalLogo: data.logo,
            logo: getImageUrl(data.logo)
          };
        })
        .catch((err) => console.error(err));
    },
    updateSupermarket: function () {
      let cloneSupermarket = { 
        ...this.supermarket,
        logo: this.supermarket.originalLogo 
      };
      delete cloneSupermarket.cnpj;
      delete cloneSupermarket.email;
      delete cloneSupermarket.phone;
      delete cloneSupermarket.originalLogo;
      delete cloneSupermarket.logo; // TODO: REMOVE THIS LATER
      supermarketProvider.update({
        ...cloneSupermarket
      })
        .then((data) => {
          console.log(data)
          this.fetchSupermarketInfo()
        })
        .catch((err) => console.log(err))
    }
  }
};
</script>
