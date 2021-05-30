<template>
    <Page>
        <ActionBar>
            <NavigationButton @tap="$navigateBack()" android.systemIcon="ic_menu_back"/>
            <Label :text="productData.name" horizontalAlignment="center"/>
        </ActionBar>

        <ScrollView>
            <StackLayout>
                <Image :src="config.url+config.image_route+productData.picture" class="m-b-15" height="200" stretch="aspectFill"/>

                <Label class="hr m-y-15" row="1"/>

                <GridLayout columns="auto,auto" row="2" rows="*, *, *, *, *, *">
                    <Label class="p-l-15 p-b-10 m-r-20" text="Preço"/>
                    <Label class="p-b-10" col="1">
                        <FormattedString>
                            <Span text="R$"/>
                            <Span :text="productData.price"/>
                            <Span :text="'/'+productData.unit"/>
                        </FormattedString>
                    </Label>

                    <Label class="p-l-15 p-b-10 m-r-20" row="1" text="Categoria"/>
                    <Label :text="category" class="p-b-10" col="1" row="1"/>

                    <Label class="p-l-15 p-b-10 m-r-20" row="2" text="Descrição"/>
                    <Label :text="productData.description" class="p-b-10" textWrap="true" col="1" row="2"/>

                    <Label class="p-l-15 p-b-10 m-r-20" row="3" text="Quantidade em estoque"/>
                    <Label :text="productData.quantity" class="p-b-10" col="1" row="3"/>

                    <Button col="1" row="4" tap="onEditButtonTap" style="background-color: #42adf5">
                          <FormattedString>
                            <Span text="Adicionar ao carrinho" />
                          </FormattedString>
                    </Button>
                </GridLayout>
            </StackLayout>
        </ScrollView>
    </Page>
</template>

<script>
  import CarDetailsEdit from "./CarDetailsEdit";
  import config from "~/config.json";
  import axios from 'axios';

  export default {
    props: ["product"],

    data: () => {
        return {
            config: config,
            category: "",
        }
    },

    mounted () {
        let supermarket_id = this.config.supermarket_id;
        let url = this.config.url+'/category?supermarket_id='+supermarket_id+'&id='+this.product.id;
        axios.get(url)
            .then(data => {
                this.category = data["data"][0]["name"];
            })
            .catch((err) => {
                console.log(err)
            });
    },

    computed: {
      productData() {
        return this.product || {};
      }
    },

    methods: {
      onEditButtonTap() {
        this.$navigateTo(CarDetailsEdit, {
          transition: "slideTop",
          backstackVisible: false,
          props: {car: this.productData}
        });
      }
    }
  };
</script>
