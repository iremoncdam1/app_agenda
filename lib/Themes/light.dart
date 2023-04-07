import 'package:flutter/material.dart';

class CustomLightTheme {
  static const Color sand =  Color.fromRGBO(175, 159, 140, 1);
  static const Color grass =  Color.fromRGBO(127, 134, 123, 1);
  static const Color matcha =  Color.fromRGBO(199, 199, 187, 1);
  static const Color rose =  Color.fromRGBO(212, 200, 190, 1);
  static const Color linen =  Color.fromRGBO(227, 228, 224, 1);

  static final ThemeData themeData = ThemeData.light().copyWith(
    //appBarTheme: const AppBarTheme(backgroundColor: sand),
    appBarTheme: const AppBarTheme(backgroundColor: grass),
    //appBarTheme: const AppBarTheme(backgroundColor: matcha),
    //appBarTheme: const AppBarTheme(backgroundColor: rose),
    //appBarTheme: const AppBarTheme(backgroundColor: linen),
    scaffoldBackgroundColor: linen,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(backgroundColor: grass));
}

