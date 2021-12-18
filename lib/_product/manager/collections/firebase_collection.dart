class FirebaseCollection {
  static FirebaseCollection? _instace;
  static FirebaseCollection get instance {
    if (_instace != null) return _instace!;
    _instace = FirebaseCollection._init();
    return _instace!;
  }

  FirebaseCollection._init();
}
