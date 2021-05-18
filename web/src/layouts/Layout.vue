<template>
  <v-app id="inspire">
    <Header v-model="expandOnHover"></Header>
    <Sidebar :expand-on-hover.sync="expandOnHover"></Sidebar>
    <v-content>
      <v-container class="fill-height" fluid>
        <router-view />
      </v-container>
    </v-content>

    <Footer></Footer>
  </v-app>
</template>

<script>
import Header from "./header/Header";
import Sidebar from "./sidebar/Sidebar";
import Footer from "./footer/Footer";
import { mapState, mapMutations } from "vuex";
import { isAuthorized } from "../providers/authorization";
import api from "../api";

export default {
  name: "Layout",

  components: {
    Header,
    Sidebar,
    Footer
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
    api({
      method: "GET",
      url: "supermarket/private"
    })
      .then((data) => {
        console.log(data);
      })
      .catch((err) => {
        console.error(err);
      })
  },


  methods: {
    ...mapMutations({
      setCustomizerDrawer: "SET_CUSTOMIZER_DRAWER"
    })
  }
};
</script>
