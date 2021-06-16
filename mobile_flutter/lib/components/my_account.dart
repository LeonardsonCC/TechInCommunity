import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:mercatop/components/product_list.dart';
import 'package:mercatop/components/app_bar.dart';
import 'package:mercatop/components/utils.dart';
import 'package:mercatop/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyAccountPage extends StatefulWidget {
  @override
  MyAccountPageState createState() => new MyAccountPageState();
}

class MyAccountPageState extends State<MyAccountPage> {

  var context;
  List data;
  Map config;
  Map userData = null;
  SharedPreferences prefs;

  Future<String> getData() async {
    this.config =
        json.decode(await rootBundle.loadString('assets/config.json'));
    this.prefs = await Utils.getPrefs();

    var response = await http.get(
        Uri.encodeFull(this.config["url"] + "/customer/private"),
        headers: {
          "Accept": "application/json",
          "Authorization": "Bearer ${this.prefs.getString("token")}"
        }
    );

    if (response.statusCode == 200) {
      Map responseData = json.decode(response.body);
      setState(() {
        userData = responseData;
      });
    } else {
      print("erro");
      Navigator.of(context).pop();
    }
  }

  void logout() async {
    this.prefs = await Utils.getPrefs();
    if (await this.prefs.remove("token")) {
      setState(() {
        this.userData = null;
      });
      RestartWidget.restartApp(context);
    } else {
      print("erro ao deslogar??");
    }
  }

  @override
  void initState() {
    this.getData();
  }

  Widget getRowAttr(title, value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(value)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    if (this.userData != null) {
      return new Scaffold(
          appBar: CustomAppBar.getAppBar(
              context, "Minha Conta", Colors.blue, showLoginButton: false),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Minha conta",
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
                getRowAttr("Nome ", this.userData["name"]),
                getRowAttr("E-mail ", this.userData["email"]),
                getRowAttr("Data de Nascimento ", this.userData["birth_date"]),
                getRowAttr("CPF ", "***.***.***-**"),
                getRowAttr("Telefone ", this.userData["phone"]),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    child: Text("Sair da Conta"),
                    onPressed: logout,
                  ),
                )
              ],
            ),
          )
      );
    } else {
      return new Scaffold(
          appBar: CustomAppBar.getAppBar(
              context, "Categorias", Colors.blue, showLoginButton: false),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    "Carregando...",
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
              ],
            ),
          )
      );
    }
  }
}
