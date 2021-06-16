import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'package:mercatop/main.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:mercatop/components/app_bar.dart';
import 'package:mercatop/components/register.dart';
import 'package:mercatop/components/utils.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  var config;
  var context;

  GlobalKey<FormState> cForm = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginRequest() async {
    this.config =
        json.decode(await rootBundle.loadString('assets/config.json'));

    var response = await http.post(
        Uri.encodeFull(this.config["url"] + "/customer/login".toString()),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: json.encode({
          "email": emailController.text,
          "password": passwordController.text,
        }));

    if (response.statusCode == 200) {
      String credential = json.decode(response.body)["token"];
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString("token", credential);

      Utils.showMyDialog(
        context,
        "Login",
        "Você foi logado com sucesso!",
        <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
            child: new Text("Fechar"),
            onPressed: () {
              RestartWidget.restartApp(context);
            },
          ),
        ],
      );
    } else {
      String message = json.decode(response.body)["msg"];
      Utils.showMyDialog(
        context,
        "Login",
        message,
        <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
            child: new Text("Fechar"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      appBar: CustomAppBar.getAppBar(context, "Login", Colors.blue,
          showLoginButton: false),
      body: new Card(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Entrar com sua conta",
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(hintText: 'E-mail'),
            controller: emailController,
            enableSuggestions: false,
          ),
          TextFormField(
              decoration: InputDecoration(hintText: 'Senha'),
              enableSuggestions: false,
              obscureText: true,
              controller: passwordController),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: ElevatedButton(
                  onPressed: loginRequest,
                  child: Text('Login'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
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
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black)
                  ),
                  child: Text('Registrar-se'),
                ),
              ),
            ],
          )
        ]),
      )),
    );
  }
}
