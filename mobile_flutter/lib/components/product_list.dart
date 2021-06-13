import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;

class ProductPage extends StatefulWidget {
  @override
  ProductPageState createState() => new ProductPageState();
}

class ProductPageState extends State<ProductPage> {

 	List data;
 	Map config;
 	var args;

	Future<String> getConfig() async {
		this.config = json.decode(await rootBundle.loadString('config.json'));
		return "Success!";
	}

	Future<String> getData(args) async {
		this.config = json.decode(await rootBundle.loadString('config.json'));
		var response = await http.get(
			Uri.encodeFull(this.config["url"]+"/product/search?supermarket_id="+this.config["supermarket_id"]+"&category_id="+args["category_id"].toString()),
			headers: {
		    	"Accept": "application/json"
		  	}
		);

		this.setState(() {
		  	data = json.decode(response.body);
		});

		return "Success!";
	}

	@override
	void initState(){
	    Future.delayed(Duration.zero, () {
	      setState(() {
	        args = ModalRoute.of(context).settings.arguments;
	      });
	      this.getData(args);
	    });

		this.getConfig();
	}

	@override
	Widget build(BuildContext context){
		return new Scaffold(
		  appBar: new AppBar(title: new Text("Produtos"), backgroundColor: Colors.blue),
		  body: new ListView.builder(
		    itemCount: data == null ? 0 : data.length,
		    itemBuilder: (BuildContext context, int index){
			return new	Card(
				  child: new InkWell(
				    onTap: () {
						  Navigator.pop(context);
				    },
				    child: Row(
				     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				     children: <Widget>[
				         Image.network(this.config["url"]+this.config["image_route"]+data[index]["picture"], height: 150, width: 150),
						 Column(
					          mainAxisAlignment: MainAxisAlignment.center,
					          children: [
					            Text(data[index]["name"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
					            Text("R\$"+data[index]["price"].toString()+"/"+data[index]["unit"]),
					          ]
						),
				     ],
					),
				  ),
				);
		    },
		  ),
		);
	}
}