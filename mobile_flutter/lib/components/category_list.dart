import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:mercatop/components/product_list.dart';
import 'package:mercatop/components/app_bar.dart';

class CategoryPage extends StatefulWidget {
  @override
  CategoryPageState createState() => new CategoryPageState();
}

class CategoryPageState extends State<CategoryPage> {

 	List data;
 	Map config;

	Future<String> getData() async {
		this.config = json.decode(await rootBundle.loadString('assets/config.json'));

		var response = await http.get(
			Uri.encodeFull(this.config["url"]+"/category?supermarket_id="+this.config["supermarket_id"]),
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
		this.getData();
	}

	@override
	Widget build(BuildContext context){
		return new Scaffold(
		  appBar: CustomAppBar.getAppBar("Categorias", Colors.blue),
		  body: new ListView.builder(
		    itemCount: data == null ? 0 : data.length,
		    itemBuilder: (BuildContext context, int index){
			return new	Card(
				  child: new InkWell(
				    onTap: () {
						  Navigator.push(
						    context,
						    MaterialPageRoute(
						    	builder: (context) => ProductPage(),
						        settings: RouteSettings(arguments: {'category_id': data[index]["id"], 'category_name':data[index]["name"]},
                  			),),
						  );
				    },
				    child: Row(
				     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				     children: <Widget>[
				         Image.network(this.config["url"]+this.config["image_route"]+data[index]["picture"], height: 150, width: 150),
				         Text(data[index]["name"], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
				     ],
					),
				  ),
				);
		    },
		  ),
		);
	}
}
