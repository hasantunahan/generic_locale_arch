import 'package:firebase_auth/firebase_auth.dart';

class FirebaseManage {
  var firebaseAuth = FirebaseAuth.instance;
  User? user = FirebaseAuth.instance.currentUser;

  User? getUser() {
    return user;
  }
}
