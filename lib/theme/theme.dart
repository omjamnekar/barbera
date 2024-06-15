import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  primaryColor: Colors.black,
  hintColor: Colors.white,

  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 72.0,
      fontWeight: FontWeight.bold,
      fontFamily: 'Horizon',
    ),
    headline6: TextStyle(
      fontSize: 36.0,
      fontStyle: FontStyle.italic,
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
    ),
  ),

  brightness: Brightness.dark, // Set the initial theme to dark

  // Add more theme properties here if needed
);
