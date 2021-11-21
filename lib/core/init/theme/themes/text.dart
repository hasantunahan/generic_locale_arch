import 'package:flutter/material.dart';

class TextThemes {
  static TextTheme darkTextTheme() {
    return const TextTheme(
      headline1: TextStyle(color: Colors.white, fontFamily: 'Comfortaa'),
      headline2: TextStyle(color: Colors.white, fontFamily: 'Comfortaa'),
      headline5:
          TextStyle(color: Colors.white, fontFamily: 'Comfortaa', fontSize: 25),
      headline6: TextStyle(color: Colors.white, fontFamily: 'Comfortaa'),
      bodyText1:
          TextStyle(color: Colors.white, fontFamily: 'Comfortaa', fontSize: 14),
      bodyText2: TextStyle(color: Colors.white, fontFamily: 'Comfortaa'),
    );
  }

  static TextTheme lightTextTheme() {
    return const TextTheme(
      headline1: TextStyle(color: Color(0xFF303030), fontFamily: 'Comfortaa'),
      headline2: TextStyle(color: Color(0xFF303030), fontFamily: 'Comfortaa'),
      headline5: TextStyle(
          color: Color(0xFF303030), fontFamily: 'Comfortaa', fontSize: 25),
      headline6: TextStyle(color: Color(0xFF303030), fontFamily: 'Comfortaa'),
      bodyText1: TextStyle(
          color: Color(0xFF303030), fontFamily: 'Comfortaa', fontSize: 14),
      bodyText2: TextStyle(color: Color(0xFF303030), fontFamily: 'Comfortaa'),
    );
  }
}
