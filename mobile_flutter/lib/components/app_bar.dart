import 'package:flutter/material.dart';
import 'package:mercatop/components/login.dart';


class CustomAppBar {
  static getButtons(context, showLoginButton, token) {
    var buttons = <Widget>[];
    if (!showLoginButton) {
      return buttons;
    }

    if (token != null && token.isNotEmpty) {
      buttons.add(
        IconButton(
          icon: const Icon(Icons.account_circle),
          tooltip: 'Minha conta',
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
      );
    } else {
      buttons.add(
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
      );
    }

    return buttons;
  }

  static getAppBar(context, appBarTitle, color, {showLoginButton = true, token = ""}) {
    return new AppBar(
        title: new Text(appBarTitle),
        backgroundColor: color,
        actions: CustomAppBar.getButtons(context, showLoginButton, token)
    );
  }
}
