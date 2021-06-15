import 'package:flutter/material.dart';

class CustomAppBar {
  static getAppBar(appBarTitle, color) {
    return new AppBar(
      title: new Text(appBarTitle),
      backgroundColor: color,
      actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.login),
            tooltip: 'Login',
            onPressed: () {
              print("Login");
            },
          ),
      ]
    );
  }
}
