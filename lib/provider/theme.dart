

import 'package:Restaurant/model/theme_preferences.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemePreference themePreference = ThemePreference();
  String Theme = ThemePreference.Light;


  String get theme => theme;

  set setTheme(String Theme){
    Theme = theme;
    themePreference.setModeTheme(theme);
    notifyListeners();
  }
}