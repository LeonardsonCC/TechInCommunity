import 'package:flutter/material.dart';
import 'package:mercatop/components/login.dart';

class CustomAppBar {
  static getButtons(context, showLoginButton) {
      if (!showLoginButton) {
        return <Widget>[];
      }
      return <Widget>[
          IconButton(
            icon: const Icon(Icons.login),
            tooltip: 'Login',
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
      ];
  }

  static getAppBar(context, appBarTitle, color, {showLoginButton=true}) {
    return new AppBar(
      title: new Text(appBarTitle),
      backgroundColor: color,
      actions: CustomAppBar.getButtons(context, showLoginButton)
    );
  }
}
