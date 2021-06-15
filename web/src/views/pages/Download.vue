<template>
  <v-container fluid class="down-top-padding">
    <v-row>
        <v-col cols="12" sm="12" lg="12">
          <BaseCard heading="Funções">
            <v-btn
              color="primary"
              @click="downloadApk"
              :disabled="isDownloading"
              :loading="isDownloading"
            >
              Download
            </v-btn>
          </BaseCard>
        </v-col>
    </v-row>
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
import { download } from "../../providers/api/supermarket";

export default {
  name: "Download",

  data: () => ({
    isDownloading: false,
    snackbar: {
      show: false,
      message: "",
      color: "white",
    },
  }),

  methods: {
      downloadApk: function () {
          const self = this;
          self.isDownloading = true;
          self.snackbar.show = true;
          self.snackbar.message = "Estamos gerando uma nova versão do app para você!";
          self.snackbar.color = "blue";
          download()
            .then((response) => {
                console.log(response)
                let blob = new Blob([response.data], { type: 'application/vnd.android.package-archive' });
                let url = window.URL.createObjectURL(blob)

                window.open(url)
                self.isDownloading = false;
                self.snackbar.show = true;
                self.snackbar.message = "Novo aplicativo gerado! Fazendo download...";
                self.snackbar.color = "green";
              })
            .catch((err) => {
                console.log(err)
                self.isDownloading = false;
                self.snackbar.show = true;
                self.snackbar.message = "Ocorreu algum erro ao gerar o aplicativo... Por favor, tente novamente";
                self.snackbar.color = "red";
              })
      }
  }
};
</script>
