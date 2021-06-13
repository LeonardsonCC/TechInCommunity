import 'package:flutter/material.dart';

class ProductDetailsPage extends StatefulWidget {
  @override
  ProductDetailsPageState createState() => new ProductDetailsPageState();
}

class ProductDetailsPageState extends State<ProductDetailsPage> {

 	var args;

	@override
	Widget build(BuildContext context){
		args = ModalRoute.of(context).settings.arguments;
		return new Scaffold(
		  appBar: new AppBar(title: new Text(args["product"]["name"]), backgroundColor: Colors.blue),
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