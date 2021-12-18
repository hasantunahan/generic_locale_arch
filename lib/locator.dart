import 'package:get_it/get_it.dart';
import 'package:with_retro_firebase/_product/manager/user/firebase_user.dart';
import 'package:with_retro_firebase/ui/features/chat/viewmodel/chat_view_model.dart';

GetIt getIt = GetIt.instance;

void locator() {
  getIt.registerFactory(() => ChatViewModel());
  getIt.registerFactory(() => FirebaseUser.instance);
}
