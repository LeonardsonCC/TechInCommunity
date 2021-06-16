import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Utils {
  static getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  static void showMyDialog(context, title, content, actions) {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text(title),
          content: new Text(content),
          actions: actions
        );
      },
    );
  }
}