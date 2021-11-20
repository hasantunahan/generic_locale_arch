import 'package:flutter/material.dart';

class ThemeColors {
  static ColorScheme darkColors() {
    return const ColorScheme(
        primary: Color(0xFF7F41FA),
        primaryVariant: Colors.white, //xx
        secondary: Color(0xFF7F41FA),
        secondaryVariant: Colors.white,
        surface: Colors.blue, //xx
        background: Color(0xffffffff), //xx
        error: Colors.red,
        onPrimary: Color(0xFF926783),
        onSecondary: Color(0xFF313131), //x
        onSurface: Color(0xFF667A95),
        onBackground: Color(0xFFF9F9F9),
        onError: Color(0xffffa08d), //xx
        brightness: Brightness.light);
  }

  static ColorScheme lightColors() {
    return const ColorScheme(
        primary: Color(0xFF7F41FA),
        primaryVariant: Colors.white, //xx
        secondary: Color(0xFF7F41FA),
        secondaryVariant: Colors.white,
        surface: Colors.blue, //xx
        background: Color(0xffffffff), //xx
        error: Colors.red,
        onPrimary: Color(0xFF926783),
        onSecondary: Color(0xFF313131), //x
        onSurface: Color(0xFF667A95),
        onBackground: Color(0xFFF9F9F9),
        onError: Color(0xffffa08d), //xx
        brightness: Brightness.light);
  }
}
