import 'package:flutter/material.dart';

final ThemeData appThemaData = ThemeData(
  primaryColor: Colors.cyan,
  buttonTheme: const ButtonThemeData(
    buttonColor: Colors.cyan,
    textTheme: ButtonTextTheme.primary
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Colors.cyan[600],
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.cyan
  )
);