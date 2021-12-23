import 'dart:io';

import 'package:flutter/material.dart';

class ThemeColors {
  static ColorScheme darkColors() {
    return ColorScheme(
        primary: const Color(0xFF7F41FA),
        primaryVariant: Colors.white, //xx
        secondary: const Color(0xFFFB003F),
        secondaryVariant: Colors.white,
        surface: Colors.black12, //xx
        background: const Color(0xFF1D1D1D), //xx
        error: Colors.red,
        onPrimary: const Color(0xFF464646),
        onSecondary: const Color(0xFF929292), //x
        onSurface: const Color(0xFF808080),
        onBackground: const Color(0xFFF9F9F9),
        onError: const Color(0xffffa08d), //xx
        brightness: Platform.isAndroid ? Brightness.light : Brightness.dark);
  }

  static ColorScheme lightColors() {
    return ColorScheme(
        primary: const Color(0xFF7F41FA),
        primaryVariant: const Color(0xFF383838), //xx
        secondary: const Color(0xFFFB003F),
        secondaryVariant: Colors.white,
        surface: Colors.white, //xx
        background: const Color(0xffffffff), //xx
        error: Colors.red,
        onPrimary: const Color(0xFFEBEBEB),
        onSecondary: const Color(0xFF969696), //x
        onSurface: const Color(0xFF8D8D8D),
        onBackground: const Color(0xFFF9F9F9),
        onError: const Color(0xffffa08d), //xx
        brightness: Platform.isAndroid ? Brightness.dark : Brightness.light);
  }
}
