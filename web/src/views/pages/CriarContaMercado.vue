<template>
  <v-container fill-height fluid class="down-top-padding">
    <v-layout align-center justify-center>
      <v-flex xs12 sm8 md6>
        <v-col cols="12" lg="12">
          <v-card>
            <v-card-text>
              <h3 class="title blue-grey--text text--darken-2 font-weight-regular">Criar conta</h3>
            </v-card-text>
            <v-divider></v-divider>
            <v-card-text>
							<v-row>
								<v-col cols="12" md="6">
									<v-text-field
										label="Razao Social (nao usado)"
										filled
										background-color="transparent"
									></v-text-field>
								</v-col>
								<v-col cols="12" md="6">
									<v-text-field
										v-model="nomeFantasia"
										label="Nome Fantasia"
										filled
										background-color="transparent"
									></v-text-field>
								</v-col>
								<v-col cols="12" md="6">
									<v-text-field
										v-model="cnpj"
										label="CNPJ"
										filled
										background-color="transparent"
									></v-text-field>
								</v-col>
								<v-col cols="12" md="6">
									<v-text-field
										label="CNAE (nao usado)"
										filled
										background-color="transparent"
									></v-text-field>
								</v-col>

								<v-col cols="12" md="12">
									<v-text-field
										v-model="phone"
										label="Telefone"
										filled
										background-color="transparent"
									></v-text-field>
								</v-col>
								<v-col cols="12" md="12">
									<v-text-field
										v-model="email"
										label="E-mail"
										filled
										background-color="transparent"
									></v-text-field>
								</v-col>
								<v-col cols="12" md="6">
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
								</v-col>
								<v-col cols="12" md="6">
									<v-text-field
										v-model="password2"
										filled
										background-color="transparent"
										:append-icon="show1 ? 'mdi-eye' : 'mdi-eye-off'"
										:rules="[rules.required, rules.min]"
										:type="show1 ? 'text' : 'password'"
										name="input-10-1"
										label="Confirmar senha"
										hint="Favor digitar sua senha novamente"
										counter
										@click:append="show1 = !show1"
									></v-text-field>
								</v-col>
							</v-row>

							<span>Ja possui uma conta? <router-link to="login">Clique aqui para entrar!</router-link></span>
            </v-card-text>
            <v-card-actions >
              <v-spacer></v-spacer>
              <v-btn color="primary"
                elevation="2"
                block
                @click="submitForm"
              >Criar conta</v-btn>
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
      password2: "",
      nomeFantasia: "", // name
      cnpj: "",
      phone: "",
      show1: false,
      rules: {
        required: value => !!value || "Obrigatorio.",
        min: v => v.length >= 8 || "Min 8 caracteres",
        emailMatch: () => "E-mail ou senha nao correspondentes"
      },
    }),
  methods: {
    submitForm: function () {
      if (!this.email && 
        !this.password && 
        !this.password2 && 
        !this.nomeFantasia && 
        !this.cnpj && 
        !this.phone) {
        console.error("Campo Faltando");
        // TODO Melhorar retorno do erro
      }
      
      api({
        method: "post",
        url: "supermarket",
        data: JSON.stringify({
          name: this.name,
          cnpj: this.cnpj,
          email: this.email,
          phone: this.phone,
          password: this.password,
          password2: this.password2
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
