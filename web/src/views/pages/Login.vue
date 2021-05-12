<template>
  <v-container fill-height fluid class="down-top-padding">
    <v-layout align-center justify-center>
      <v-flex xs12 sm8 md6>
        <v-col cols="12" lg="8" offset-lg="2">
          <v-card>
            <v-card-text>
              <h3 class="title blue-grey--text text--darken-2 font-weight-regular">Entrar</h3>
            </v-card-text>
            <v-divider></v-divider>
            <v-card-text>
              <v-text-field
                v-model="email"
                label="E-mail"
                filled
                background-color="transparent"
              ></v-text-field>
              <v-text-field
                v-model="password"
                filled
                background-color="transparent"
                :append-icon="show1 ? 'mdi-eye' : 'mdi-eye-off'"
                :rules="[rules.required, rules.min]"
                :type="show1 ? 'text' : 'password'"
                name="input-10-1"
                label="Senha"
                hint="Ao menos 8 caracteres"
                counter
                @click:append="show1 = !show1"
              ></v-text-field>
							<span>Não possui uma conta? <router-link to="criar-conta-mercado">Cadastre-se</router-link></span>
            </v-card-text>
            <v-card-actions >
              <v-spacer></v-spacer>
              <v-btn color="primary"
                elevation="2"
                block
                @click="submitForm"
              >Entrar</v-btn>
            </v-card-actions>
          </v-card>
        </v-col>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
import { axiosNotLoggedInstance as api } from "../../api";

export default {
  name: "Login",
  data: () => ({
      email: "",
      password: "",
      show1: false,
      rules: {
        required: value => !!value || "Obrigatorio.",
        min: v => v.length >= 8 || "Min 8 caracteres",
        emailMatch: () => "E-mail ou senha nao correspondentes"
      },
    }),
  methods: {
      submitForm: function () {
          if (!this.email || !this.password) {
              console.error("Campos nao preenchidos");
              // TODO Melhorar retorno do erro
              return
          }
          
          api({
              method: "post",
              url: "supermarket/login",
              data: JSON.stringify({
                  email: this.email,
                  password: this.password,
              })
          })
            .then((response) => {
              console.log("Resposta do cadastro: ", response);
            })
            .catch((err) => console.error(err));
      }
  }
};
</script>
