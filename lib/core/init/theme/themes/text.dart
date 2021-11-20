import 'package:flutter/material.dart';

class TextThemes {
  static TextTheme darkTextTheme() {
    return const TextTheme(
      headline1: TextStyle(color: Colors.white),
      headline2: TextStyle(color: Colors.white),
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
    );
  }

  static TextTheme lightTextTheme() {
    return const TextTheme(
      headline1: TextStyle(color: Colors.black, fontFamily: 'Comfortaa'),
      headline2: TextStyle(color: Colors.black, fontFamily: 'Comfortaa'),
      bodyText1: TextStyle(color: Colors.black, fontFamily: 'Comfortaa'),
      bodyText2: TextStyle(color: Colors.black, fontFamily: 'Comfortaa'),
    );
  }
}
