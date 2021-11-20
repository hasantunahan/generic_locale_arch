import '../../constant/enum/theme/enum.dart';

extension ThemeExtension on Themes? {
  String get rawValue {
    switch (this) {
      case Themes.dark:
        return 'dark';
      case Themes.light:
        return 'light';
      default:
        throw 'ERROR TYPE';
    }
  }
}
