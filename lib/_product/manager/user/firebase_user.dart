import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUser {
  static FirebaseUser? _instace;
  static FirebaseUser get instance {
    if (_instace != null) return _instace!;
    _instace = FirebaseUser._init();
    return _instace!;
  }

  FirebaseUser._init();

  User? getUser() {
    return FirebaseAuth.instance.currentUser;
  }

  getAuth() {
    return FirebaseAuth.instance;
  }
}
