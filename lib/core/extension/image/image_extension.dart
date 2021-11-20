extension ToIconPng on String? {
  String get toIconPng {
    return 'assets/icons/$this.png';
  }
}

extension ToIconImage on String? {
  String get toImagePng {
    return 'assets/images/$this.png';
  }
}
