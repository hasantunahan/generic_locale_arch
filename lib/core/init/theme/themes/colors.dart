import 'package:flutter/material.dart';

class ThemeColors {
  static ColorScheme darkColors() {
    return const ColorScheme(
        primary: Color(0xFF7F41FA),
        primaryVariant: Colors.white, //xx
        secondary: Color(0xFFFB003F),
        secondaryVariant: Colors.white,
        surface: Colors.black12, //xx
        background: Color(0xFF1D1D1D), //xx
        error: Colors.red,
        onPrimary: Color(0xFF464646),
        onSecondary: Color(0xFF929292), //x
        onSurface: Color(0xFF808080),
        onBackground: Color(0xFFF9F9F9),
        onError: Color(0xffffa08d), //xx
        brightness: Brightness.light);
  }

  static ColorScheme lightColors() {
    return const ColorScheme(
        primary: Color(0xFF7F41FA),
        primaryVariant: Color(0xFF383838), //xx
        secondary: Color(0xFFFB003F),
        secondaryVariant: Colors.white,
        surface: Colors.white, //xx
        background: Color(0xffffffff), //xx
        error: Colors.red,
        onPrimary: Color(0xFFEBEBEB),
        onSecondary: Color(0xFF969696), //x
        onSurface: Color(0xFF8D8D8D),
        onBackground: Color(0xFFF9F9F9),
        onError: Color(0xffffa08d), //xx
        brightness: Brightness.dark);
  }
}
