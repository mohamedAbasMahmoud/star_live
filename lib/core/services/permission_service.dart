// import 'package:permission_handler/permission_handler.dart';

// class PermissionService {
//   static Future<bool> requestCameraPermission() async {
//     final status = await Permission.camera.request();
//     return status == PermissionStatus.granted;
//   }

//   static Future<PermissionStatus> getCameraPermissionStatus() async {
//     return await Permission.camera.status;
//   }

//   static Future<bool> isCameraPermissionGranted() async {
//     final status = await Permission.camera.status;
//     return status == PermissionStatus.granted;
//   }

//   static Future<bool> isCameraPermissionDenied() async {
//     final status = await Permission.camera.status;
//     return status == PermissionStatus.denied;
//   }

//   static Future<bool> isCameraPermissionPermanentlyDenied() async {
//     final status = await Permission.camera.status;
//     return status == PermissionStatus.permanentlyDenied;
//   }

//   // Fixed: Use the correct method from permission_handler
//   static Future<void> openAppSettings() async {
//     await openAppSettings();
//   }
// }
