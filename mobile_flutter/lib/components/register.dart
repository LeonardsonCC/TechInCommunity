import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:mercatop/components/app_bar.dart';
import 'package:mercatop/components/login.dart';
import 'package:mercatop/components/utils.dart';

class RegisterPage extends StatefulWidget {
  @override
  RegisterPageState createState() => new RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  var config;

  GlobalKey<FormState> cForm = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController celController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  registerRequest() async {
    this.config =
        json.decode(await rootBundle.loadString('assets/config.json'));

    var response = await http.post(
        Uri.encodeFull(this.config["url"] + "/customer".toString()),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json"
        },
        body: json.encode({
          "name": nameController.text,
          "email": emailController.text,
          "birth_date": dobController.text,
          "phone": celController.text,
          "cpf": cpfController.text,
          "password": passwordController.text,
          "password2": passwordController.text
        }));

    print(response.body);
    if (response.statusCode == 200) {
      Utils.showMyDialog(
        context,
        "Registro",
        "Você foi registrado com sucesso!",
        <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
            child: new Text("Fechar"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                  settings: RouteSettings(),
                ),
              );
            },
          ),
        ],
      );
    } else {
      String message = json.decode(response.body)["msg"];

      Utils.showMyDialog(
        context,
        "Registro",
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
    return new Scaffold(
      appBar: CustomAppBar.getAppBar(context, "Registrar", Colors.blue,
          showLoginButton: false),
      body: new Card(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Criar uma nova conta",
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
            controller: passwordController,
            enableSuggestions: false,
            obscureText: true,
          ),
          TextFormField(
              decoration: InputDecoration(hintText: 'Nome'),
              controller: nameController),
          TextFormField(
              decoration: InputDecoration(hintText: 'Data de Nascimento'),
              controller: dobController),
          TextFormField(
              decoration: InputDecoration(hintText: 'Telefone'),
              controller: celController),
          TextFormField(
              decoration: InputDecoration(hintText: 'CPF'),
              controller: cpfController),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: registerRequest,
                child: Text('Registrar-se'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                      settings: RouteSettings(),
                    ),
                  );
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.black)
                ),
                child: Text('Login'),
              ),
            )
          ])
        ]),
      )),
    );
  }
}
