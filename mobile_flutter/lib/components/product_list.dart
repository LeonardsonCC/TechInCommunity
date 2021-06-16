import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:mercatop/components/product_details.dart';
import 'package:mercatop/components/app_bar.dart';
import 'package:mercatop/components/utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductPage extends StatefulWidget {
  @override
  ProductPageState createState() => new ProductPageState();
}

class ProductPageState extends State<ProductPage> {

	String token = "";
 	List data;
 	Map config;
 	var args;
 	String appBarTitle = "";

	Future<String> getData(args) async {
		this.config = json.decode(await rootBundle.loadString('assets/config.json'));
		var response = await http.get(
			Uri.encodeFull(this.config["url"]+"/product/search?supermarket_id="+this.config["supermarket_id"]+"&category_id="+args["category_id"].toString()),
			headers: {
		    	"Accept": "application/json"
		  	}
		);

		SharedPreferences prefs = await Utils.getPrefs();
		this.setState(() {
			appBarTitle = args["category_name"];
		  	data = json.decode(response.body);
				token = prefs.getString("token");
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
	}

	@override
	Widget build(BuildContext context){
		return new Scaffold(
		  appBar: CustomAppBar.getAppBar(context, appBarTitle, Colors.blue, token: token),
		  body: new ListView.builder(
		    itemCount: data == null ? 0 : data.length,
		    itemBuilder: (BuildContext context, int index){
			return new	Card(
				  child: new InkWell(
				    onTap: () {
						  Navigator.push(
						    context,
						    MaterialPageRoute(
						    	builder: (context) => ProductDetailsPage(),
						        settings: RouteSettings(arguments: {"product":data[index],"image_route":this.config["url"]+this.config["image_route"]},
                  			),),
						  );
				    },
				    child: Row(
				     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				     children: <Widget>[
						Image.network(this.config["url"]+this.config["image_route"]+data[index]["picture"], height: 150, width: 150),
						Container (
						  padding: const EdgeInsets.all(16.0),
						  width: MediaQuery.of(context).size.width*0.4,
						  child: new Column (
						    children: <Widget>[
					            new Text(data[index]["name"], textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
					            new Text("R\$"+data[index]["price"].toString()+"/"+data[index]["unit"]),
						    ],
						  ),
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
