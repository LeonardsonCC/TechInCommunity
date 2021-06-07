<template>
    <Page>
        <ActionBar>
            <Label horizontalAlignment="center" text="Categorias"/>
        </ActionBar>   

        <RadListView @itemTap="onItemTap" class="cars-list" for="item in categories" v-if="!isLoading">
            <ListViewLinearLayout scrollDirection="Vertical" v-tkListViewLayout/>
            <v-template>
                <StackLayout class="cars-list__item">
                    <GridLayout class="cars-list__item-content" columns="*" rows="*, *, *">
                        <Label :text="item.name" horizontalAlignment="center" row="1" class="cars-list__item-name font-weight-bold"/>

                        <Image :src="url+config.image_route+item.picture" class="m-r-20" height="120" loadMode="async" row="2"
                               stretch="aspectFill"/>
                    </GridLayout>
                </StackLayout>
            </v-template>
        </RadListView>
        <ActivityIndicator :busy="isLoading" v-else/>
    </Page>
</template>

<script>
  import ProductList from './ProductList'
  import config from "~/config.json"
  import axios from 'axios';

  export default {
    
    data: () => {
        return {
            url: config.url,
            config: config,
            categories: []
        }
    },

    mounted () {
        let supermarket_id = config.supermarket_id;
        let url = this.url+'/category?supermarket_id='+supermarket_id;
        axios.get(url)
            .then(data => {
                this.categories = data["data"];
            })
            .catch((err) => {
                console.log(err)
            });
    },

    computed: {
      isLoading() {
        return !this.categories.length;
      }
    },

    methods: {
      onItemTap(args) {
        this.$emit("select", args.item);
        this.$navigateTo(ProductList, {props: {category: args.item.id}});
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