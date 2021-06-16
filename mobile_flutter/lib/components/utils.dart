import 'package:shared_preferences/shared_preferences.dart';

class Utils {
  static getPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }
}