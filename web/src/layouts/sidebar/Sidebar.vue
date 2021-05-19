<template>
  <v-navigation-drawer
    v-model="Sidebar_drawer"
    :dark="SidebarColor !== 'white'"
    :color="SidebarColor"
    mobile-break-point="960"
    clipped
    :right="$vuetify.rtl"
    mini-variant-width="70"
    :expand-on-hover="expandOnHover"
    app
    id="main-sidebar"
  >
    <v-list dense nav>
      <!---USer Area -->
      <v-list-item two-line class="px-0">
        <v-list-item-avatar>
          <img :src="supermarket.logo" />
        </v-list-item-avatar>

        <v-list-item-content>
          <v-list-item-title>{{supermarket.name}}</v-list-item-title>
          <v-list-item-subtitle class="caption">{{supermarket.cnpj}}</v-list-item-subtitle>
        </v-list-item-content>
      </v-list-item>
      <!---USer Area -->
      <!---Sidebar Items -->
      <v-list-item
        v-for="item in items"
        :key="item.title"
        :to="item.to"
        :active-class="`success white--text`"
        link
      >
        <v-list-item-icon>
          <v-icon>{{ item.icon }}</v-icon>
        </v-list-item-icon>

        <v-list-item-content>
          <v-list-item-title>{{ item.title }}</v-list-item-title>
        </v-list-item-content>
      </v-list-item>
      <!---Sidebar Items -->
    </v-list>
  </v-navigation-drawer>
</template>

<script>
import { mapState } from "vuex";
import * as supermarketProvider from "../../providers/api/supermarket";
import { getImageUrl } from "../../providers/file";

export default {
  name: "Sidebar",
  props: {
    expandOnHover: {
      type: Boolean,
      default: false
    }
  },
  created: function () {
    this.fetchSupermarketInfo();
  },
  methods: {
    fetchSupermarketInfo: function () {
      supermarketProvider.fetchPrivate()
        .then(({ data }) => {
          console.log("DATA", data);
          this.supermarket = {
            ...data,
            logo: getImageUrl(data.logo)
          };
        })
        .catch((err) => console.error(err));
    }
  },
  data: () => ({
    supermarket: {
      name: "",
      logo: ""
    },
    items: [
      {
        title: "Perfil",
        icon: "mdi-account-circle",
        to: "/pages/profile"
      },
      {
        title: "Categorias",
        icon: "mdi-label",
        to: "/pages/categories"
      },
      {
        title: "Produtos",
        icon: "mdi-book",
        to: "/pages/products"
      }
    ]
  }),
  computed: {
    ...mapState(["SidebarColor", "SidebarBg"]),
    Sidebar_drawer: {
      get() {
        return this.$store.state.Sidebar_drawer;
      },
      set(val) {
        this.$store.commit("SET_SIDEBAR_DRAWER", val);
      }
    }
  },
  watch: {
    "$vuetify.breakpoint.smAndDown"(val) {
      this.$emit("update:expandOnHover", !val);
    }
  },
};
</script>
<style lang="scss">
#main-sidebar{
  box-shadow:1px 0 20px rgba(0,0,0,.08);
  -webkit-box-shadow:1px 0 20px rgba(0,0,0,.08);
  .v-navigation-drawer__border{
    display: none;
  }
  .v-list{
    padding: 8px 15px;
  }
  .v-list-item{
      &__icon--text,
      &__icon:first-child{
        justify-content: center;
        text-align: center;
        width: 20px;
        
      }
      
  }    
}
</style>
