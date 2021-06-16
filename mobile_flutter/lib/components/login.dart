import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mercatop/components/app_bar.dart';
import 'package:mercatop/components/register.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  var config;

  GlobalKey<FormState> cForm = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginRequest () async {
    this.config = json.decode(await rootBundle.loadString('assets/config.json'));

    var response = await http.post(
        Uri.encodeFull(this.config["url"]+"/customer/login".toString()),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: json.encode({
          "email": emailController.text,
          "password": passwordController.text,
        })
    );

    if (response.statusCode == 200) {
      String credential = json.decode(response.body)["token"];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("token", credential);
    }
  }

	@override
	Widget build(BuildContext context){
		return new Scaffold(
		  appBar: CustomAppBar.getAppBar(context, "Login", Colors.blue, showLoginButton: false),
		  body: new	Card(
				  child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'E-mail'
                ),
                controller: emailController
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Senha'
                ),
                controller: passwordController
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: loginRequest,
                  child: Text('Login'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterPage(),
                        settings: RouteSettings(),
                      ),
                    );
                  },
                  child: Text('Registrar-se'),
                ),
              )
            ]
          )
		  ),
		);
	}
}
