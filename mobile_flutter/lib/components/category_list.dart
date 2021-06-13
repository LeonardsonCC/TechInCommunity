import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;

class CategoryPage extends StatefulWidget {
  @override
  CategoryPageState createState() => new CategoryPageState();
}

class CategoryPageState extends State<CategoryPage> {

 	List data;
 	Map config;

	Future<String> getConfig() async {
		this.config = json.decode(await rootBundle.loadString('config.json'));
		return "Success!";
	}

	Future<String> getData() async {
		this.config = json.decode(await rootBundle.loadString('config.json'));

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
		this.getConfig();
		this.getData();
	}

	@override
	Widget build(BuildContext context){
		return new Scaffold(
		  appBar: new AppBar(title: new Text("Categorias"), backgroundColor: Colors.blue),
		  body: new ListView.builder(
		    itemCount: data == null ? 0 : data.length,
		    itemBuilder: (BuildContext context, int index){
		      return new Card(
				child: Row(
				     children: <Widget>[
				         Image.network(this.config["url"]+this.config["image_route"]+data[index]["picture"], height: 150, width: 150),
				         Text(data[index]["name"]),
				     ],
				)
		      );
		    },
		  ),
		);
	}
}