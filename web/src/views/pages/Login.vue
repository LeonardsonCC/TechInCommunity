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
    <v-snackbar
      v-model="snackbar.show"
      :color="snackbar.color"
    >
      {{ snackbar.message }}

      <template v-slot:action="{ attrs }">
        <v-btn
          color="white"
          text
          v-bind="attrs"
          @click="snackbar.show = false"
        >
          Fechar
        </v-btn>
      </template>
    </v-snackbar>
  </v-container>
</template>

<script>
import { axiosNotLoggedInstance as api } from "../../api";
import { setAuthToken } from "../../providers/authorization";

export default {
  name: "Login",
  data: () => ({
      snackbar: {
        show: false,
        message: "",
        color: "white",
      },
      email: "",
      password: "",
      show1: false,
      rules: {
        required: value => !!value || "Obrigatorio.",
        min: v => v.length >= 8 || "Min 8 caracteres",
        emailMatch: () => "E-mail ou senha nao correspondentes"
      },
  }),

  created: function () {
    if (sessionStorage.getItem("auth_token")) {
      this.$router.push({ name: 'dashboard' });
    }
  },

  methods: {
      submitForm: function () {
          const self = this;

          if (!this.email || !this.password) {
              self.snackbar.show = true;
              self.snackbar.message = "Por favor, preencha todos os campos!";
              self.snackbar.color = "red";
              return
          }

          self.snackbar.show = true;
          self.snackbar.message = "Estamos verificando suas credenciais...";
          self.snackbar.color = "blue";
          
          api({
              method: "post",
              url: "supermarket/login",
              data: JSON.stringify({
                  email: this.email,
                  password: this.password,
              })
          })
            .then(({ data }) => {
              setAuthToken(data.token);

              self.snackbar.show = true;
              self.snackbar.message = "Login feito com sucesso!";
              self.snackbar.color = "green";

              self.$router.push({ name: 'dashboard' });
              document.location.reload(true);
            })
            .catch((err) => {
              if (err.response) {
                self.snackbar.show = true;
                self.snackbar.message = err.response.data.msg;
                self.snackbar.color = "red";
              }
            });
      }
  }
};
</script>
