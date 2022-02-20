import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemePreference {
  
  static const Theme_mode = "MODE";
  static const Dark = "DARK";
  static const Light = "LIGHT";


  setModeTheme(String theme)async{

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(Theme_mode,theme);
  }

  Future<String>getTheme()async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(Theme_mode)?? Light;
  }
}