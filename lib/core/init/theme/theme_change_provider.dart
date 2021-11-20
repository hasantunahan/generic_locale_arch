import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:with_retro_firebase/core/init/theme/themes/colors.dart';
import 'package:with_retro_firebase/core/init/theme/themes/text.dart';

ThemeProvider currentTheme = ThemeProvider();

class ThemeProvider with ChangeNotifier {
  static bool _isDarkTheme = false;
  ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme(theme) {
    _isDarkTheme = theme == "dark" ? true : false;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.amberAccent,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TextThemes.lightTextTheme(),
      colorScheme: ThemeColors.lightColors(),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: Colors.black,
      backgroundColor: const Color(0xFF171717),
      scaffoldBackgroundColor: Colors.grey,
      textTheme: TextThemes.darkTextTheme(),
      colorScheme: ThemeColors.darkColors(),
    );
  }
}
