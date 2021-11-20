import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import '../lang/language_change_provider.dart';
import '../navigation/service/navigation_service.dart';
import '../theme/theme_change_provider.dart';

class ApplicationProvider {
  static ApplicationProvider? _instance;
  static ApplicationProvider get instance {
    _instance ??= ApplicationProvider._init();
    return _instance!;
  }

  ApplicationProvider._init();

  List<SingleChildWidget> singleItems = [];
  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(
      create: (context) => LanguageChangeProvider(),
    ),
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
    ),
    Provider.value(value: NavigationService.instance)
  ];
  List<SingleChildWidget> uiChangesItems = [];
}
