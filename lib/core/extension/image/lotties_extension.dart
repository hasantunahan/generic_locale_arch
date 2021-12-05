extension ToLottiePath on String? {
  String get toLottiePath {
    return 'assets/lotties/$this.json';
  }
}
