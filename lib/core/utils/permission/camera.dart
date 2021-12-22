import 'package:permission_handler/permission_handler.dart';

class CameraPermission {
  static CameraPermission? _instace;
  static CameraPermission get instance {
    if (_instace != null) return _instace!;
    _instace = CameraPermission._init();
    return _instace!;
  }

  CameraPermission._init();

  Future<bool> getCameraPermission() async {
    var status = await Permission.camera.status;
    if (status.isGranted) {
      return true;
    } else {
      return false;
    }
  }

  requestPermission() async {
    var status = await Permission.camera.status;
    if (!status.isPermanentlyDenied) {
      await Permission.camera.request();
    }
  }
}
