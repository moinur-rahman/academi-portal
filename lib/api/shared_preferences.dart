import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveData(String key, Map<String,dynamic>? value) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString(key, jsonEncode(value));
}

Future<String> getData(String key) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getString(key) ?? '';
}
