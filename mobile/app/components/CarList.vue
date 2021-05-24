<template>
    <Page>
        <ActionBar>
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
                                <Span text.decode="&euro;"/>
                                <Span :text="item.price"/>
                                <Span text="/day"/>
                            </FormattedString>
                        </Label>

                        <Label class="hr m-y-5" colSpan="2" row="1"/>

                        <Image :src="url+'/'+item.picture" class="m-r-20" height="120" loadMode="async" row="2"
                               stretch="aspectFill"/>

                        <StackLayout col="1" row="2" verticalAlignment="center">
                            <Label class="p-b-10">
                                <FormattedString ios.fontFamily="system">
                                    <Span class="fas cars-list__item-icon" text.decode="&#xf1b9;    "></Span>
                                    <Span :text="item.quantity"/>
                                </FormattedString>
                            </Label>
                            <Label class="p-b-10">
                                <FormattedString ios.fontFamily="system">
                                    <Span class="fas cars-list__item-icon" text.decode="&#xf085;   "/>
                                    <Span :text="item.quantity"/>
                                    <Span text=" Transmission"/>
                                </FormattedString>
                            </Label>
                            <Label class="p-b-10">
                                <FormattedString ios.fontFamily="system">
                                    <Span class="fas cars-list__item-icon" text.decode="&#xf2dc;    "/>
                                    <Span :text="item.category_id ? 'Yes' : 'No'"/>
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
  import CarDetails from "./CarDetails";
  import db from "~/car-rental-export-public.json"
  import config from "~/config.json"
  import axios from 'axios';

  export default {
    
    data: () => {
        return {
            url: config.url,
            products: []
        }
    },

    mounted () {
        let url = this.url+'/product/search?supermarket_id=3';
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
        this.$navigateTo(CarDetails, {props: {car: args.item}});
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
