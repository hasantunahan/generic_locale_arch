import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:with_retro_firebase/environment/environment/environment.dart';

abstract class Configreader {
  static Map<String, dynamic> config = <String, dynamic>{};

  static Future<void> getInitiliaze(String env) async {
    final configString = await rootBundle.loadString(env == Environment.dev
        ? 'assets/config/app_config.json'
        : 'assets/config/app_config_prod.json');
    config = jsonDecode(configString) as Map<String, dynamic>;
  }

  static String getKey() {
    return config["key"] as String;
  }
}
