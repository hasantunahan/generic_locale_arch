import 'package:flutter/material.dart';

class ThemeColors {
  static ColorScheme darkColors() {
    return const ColorScheme(
        primary: Color(0xFF7F41FA),
        primaryVariant: Colors.white, //xx
        secondary: Color(0xFFFB003F),
        secondaryVariant: Colors.white,
        surface: Colors.blue, //xx
        background: Color(0xFF1D1D1D), //xx
        error: Colors.red,
        onPrimary: Color(0xFFD8D8D8),
        onSecondary: Color(0xFF313131), //x
        onSurface: Color(0xFF808080),
        onBackground: Color(0xFFF9F9F9),
        onError: Color(0xffffa08d), //xx
        brightness: Brightness.light);
  }

  static ColorScheme lightColors() {
    return const ColorScheme(
        primary: Color(0xFF7F41FA),
        primaryVariant: Color(0xFF1F1F1F), //xx
        secondary: Color(0xFFFB003F),
        secondaryVariant: Colors.white,
        surface: Colors.blue, //xx
        background: Color(0xffffffff), //xx
        error: Colors.red,
        onPrimary: Color(0xFF414141),
        onSecondary: Color(0xFFFFFFFF), //x
        onSurface: Color(0xFF8D8D8D),
        onBackground: Color(0xFFF9F9F9),
        onError: Color(0xffffa08d), //xx
        brightness: Brightness.dark);
  }
}
