import 'package:flutter/material.dart';
import 'package:mercatop/components/app_bar.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> cForm = GlobalKey<FormState>();
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginRequest () async {
    // TODO: só falta fazer funcionar
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
                controller: loginController
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
                  onPressed: () {
                  },
                  child: Text('Login'),
                ),
              )
            ]
          )
		  ),
		);
	}
}
