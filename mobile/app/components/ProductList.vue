<template>
    <Page>
        <ActionBar>
            <NavigationButton @tap="$navigateBack()" android.systemIcon="ic_menu_back"/>
            <Label horizontalAlignment="center" text="Lista de produtos"/>
        </ActionBar>   

        <RadListView @itemTap="onItemTap" class="cars-list" for="item in products" v-if="!isLoading">
            <ListViewLinearLayout scrollDirection="Vertical" v-tkListViewLayout/>
            <v-template>
                <StackLayout class="cars-list__item">
                    <GridLayout class="cars-list__item-content" columns="*, *" rows="*, *, *">
                        <Label :text="item.name" class="cars-list__item-name font-weight-bold"/>
                        <Label class="m-r-5" col="1" horizontalAlignment="right">
                            <FormattedString>
                                <Span text="R$"/>
                                <Span :text="item.price"/>
                                <Span :text="'/'+item.unit"/>
                            </FormattedString>
                        </Label>

                        <Label class="hr m-y-5" colSpan="2" row="1"/>

                        <Image :src="url+config.image_route+item.picture" class="m-r-20" height="120" loadMode="async" row="2"
                               stretch="aspectFill"/>

                        <StackLayout col="1" row="2" verticalAlignment="center">
                            <Label class="p-b-10">
                                <FormattedString ios.fontFamily="system">
                                    <Span class="fas cars-list__item-icon" text="Estoque: "></Span>
                                    <Span :text="item.quantity"/>
                                </FormattedString>
                            </Label>
                        </StackLayout>
                    </GridLayout>
                </StackLayout>
            </v-template>
        </RadListView>
        <ActivityIndicator :busy="isLoading" v-else/>
    </Page>
</template>

<script>
  import ProductDetails from "./ProductDetails";
  import config from "~/config.json"
  import axios from 'axios';

  export default {
    props: ["category"],

    data: () => {
        return {
            url: config.url,
            config: config,
            products: []
        }
    },

    mounted () {
        let supermarket_id = config.supermarket_id;
        let url = this.url+'/product/search?supermarket_id='+supermarket_id+'&category_id='+this.category;
        axios.get(url)
            .then(data => {
                this.products = data["data"];
            })
            .catch((err) => {
                console.log(err)
            });
    },

    computed: {
      isLoading() {
        return !this.products.length;
      }
    },

    methods: {
      onItemTap(args) {
        this.$emit("select", args.item);
        this.$navigateTo(ProductDetails, {props: {product: args.item}});
      }
    }
  };
</script>

<style lang="scss" scoped>
    @import '@nativescript/theme/scss/variables/blue';

    // Custom styles
    .cars-list {
        &__item {
            padding: 0 0 8 0;
            @include colorize($background-color: background-alt-10);

            &-content {
                padding: 8 15 4 15;
                @include colorize($background-color: background);
            }

            &-name,
            &-icon {
                @include colorize($contrasted-color: complementary background 30% 0%);
            }
        }
    }
</style>
