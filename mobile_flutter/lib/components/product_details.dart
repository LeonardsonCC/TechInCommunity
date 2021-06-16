import 'package:flutter/material.dart';
import 'package:mercatop/components/app_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mercatop/components/utils.dart';

class ProductDetailsPage extends StatefulWidget {
  @override
  ProductDetailsPageState createState() => new ProductDetailsPageState();
}

class ProductDetailsPageState extends State<ProductDetailsPage> {

 	var args;
 	String token = "";

  getData() async {
    SharedPreferences prefs = await Utils.getPrefs();
    this.setState(() {
      token = prefs.getString("token");
    });
  }

  @override
  void initState(){
    getData();
  }

	@override
	Widget build(BuildContext context){
		args = ModalRoute.of(context).settings.arguments;
		return new Scaffold(
		  appBar: CustomAppBar.getAppBar(context, args["product"]["name"], Colors.blue, token: token),
		  body: new Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  title: new Text(args["product"]["name"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
				          mainAxisAlignment: MainAxisAlignment.center,
				          children: [
				          	Image.network(args["image_route"]+args["product"]["picture"], height: 300, width: MediaQuery.of(context).size.width),
				            Text("R\$"+args["product"]["price"].toString()+"/"+args["product"]["unit"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
				            Text("Quantidade em estoque: "+args["product"]["quantity"].toString()),
				          ]
					),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        print("Adicionou ao carrinho xD");
                      },
                      child: new Icon(
				          Icons.shopping_cart,
				          color: Colors.black87,
				        ),
                    ),
                  ],
                ),
              ],
            ),
          ),
		);
	}
}
