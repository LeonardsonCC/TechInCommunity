<template>
  <v-app id="inspire">
    <Header v-model="expandOnHover"></Header>
    <Sidebar :expand-on-hover.sync="expandOnHover"></Sidebar>
    <v-content>
      <v-container class="fill-height" fluid>
        <router-view />
      </v-container>
    </v-content>
  </v-app>
</template>

<script>
import Header from "./header/Header";
import Sidebar from "./sidebar/Sidebar";
import { mapState, mapMutations } from "vuex";
import { isAuthorized, getInfo } from "../providers/authorization";
import * as supermarketData from "../providers/supermarketData";

export default {
  name: "Layout",

  components: {
    Header,
    Sidebar,
  },

  props: {
    source: String
  },
  data: () => ({
    expandOnHover: false
  }),
  computed: {
    ...mapState(["Customizer_drawer"])
  },

  created: function () {
    if (!isAuthorized()) {
      this.$router.push({ name: 'Login' });
      return;
    }

    supermarketData.setData(getInfo())
  },


  methods: {
    ...mapMutations({
      setCustomizerDrawer: "SET_CUSTOMIZER_DRAWER"
    })
  }
};
</script>
