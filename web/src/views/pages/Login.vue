<template>
  <v-container fluid class="down-top-padding">
    <v-layout align-center justify-center>
      <v-flex xs12 sm8 md6>
        <v-col cols="12" lg="8">
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
            </v-card-text>
            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn color="primary"
                elevation="2"
                block
              >Entrar</v-btn>
            </v-card-actions>
          </v-card>
        </v-col>
      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>

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
};
</script>
