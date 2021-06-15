<template>
  <v-container fluid class="down-top-padding">
    <v-row>
        <v-col cols="12" sm="12" lg="12">
          <BaseCard heading="Funções">
            <v-btn
              color="primary"
              dark
              @click="downloadApk"
            >
              Download
            </v-btn>
          </BaseCard>
        </v-col>
    </v-row>
  </v-container>
</template>

<script>
import { download } from "../../providers/api/supermarket";
/*import FileDownload from "js-file-download";*/

export default {
  name: "Download",

  data: () => ({
  }),

  methods: {
      downloadApk: function () {
          download()
            .then((response) => {
                console.log(response)
                let blob = new Blob([response.data], { type: 'application/vnd.android.package-archive' });
                let url = window.URL.createObjectURL(blob)

                window.open(url)
              })
            .catch((err) => console.log(err))
      }
  }
};
</script>
