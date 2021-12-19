import 'package:get_it/get_it.dart';
import 'package:with_retro_firebase/_product/manager/user/firebase_user.dart';
import 'package:with_retro_firebase/ui/features/chat/viewmodel/chat_view_model.dart';
import 'package:with_retro_firebase/ui/features/home_nav/view/home_navigation_view.dart';
import 'package:with_retro_firebase/ui/features/home_nav/viewmodel/home_navigation_viewmodel.dart';
import 'package:with_retro_firebase/ui/features/profile/viewmodel/profile_viewmodel.dart';

GetIt getIt = GetIt.instance;

void locator() {
  getIt.registerFactory(() => ChatViewModel());
  getIt.registerFactory(() => FirebaseUser.instance);
  getIt.registerFactory(() => ProfileViewModel());
  getIt.registerFactory(() => HomeNavViewModel());
}
