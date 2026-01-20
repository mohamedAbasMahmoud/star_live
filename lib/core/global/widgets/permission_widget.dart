// import 'package:b2b_parternship/core/services/permission_service.dart';
// import 'package:b2b_parternship/core/theme/app_color.dart';
// import 'package:flutter/material.dart';

// class PermissionWidget extends StatefulWidget {
//   final Widget child;
//   final VoidCallback? onPermissionGranted;

//   const PermissionWidget({
//     super.key,
//     required this.child,
//     this.onPermissionGranted,
//   });

//   @override
//   State<PermissionWidget> createState() => _PermissionWidgetState();
// }

// class _PermissionWidgetState extends State<PermissionWidget> {
//   bool _isLoading = true;
//   bool _hasPermission = false;
//   bool _isPermanentlyDenied = false;
//   String _debugMessage = '';

//   @override
//   void initState() {
//     super.initState();
//     _checkPermission();
//   }

//   Future<void> _checkPermission() async {
//     try {
//       setState(() {
//         _isLoading = true;
//         _debugMessage = 'Checking permission status...';
//       });

//       final hasPermission = await PermissionService.isCameraPermissionGranted();
//       final isPermanentlyDenied =
//           await PermissionService.isCameraPermissionPermanentlyDenied();

//       setState(() {
//         _hasPermission = hasPermission;
//         _isPermanentlyDenied = isPermanentlyDenied;
//         _isLoading = false;
//         _debugMessage =
//             'Permission: $hasPermission, Permanently denied: $isPermanentlyDenied';
//       });

//       // Call the callback if permission is granted
//       if (hasPermission && widget.onPermissionGranted != null) {
//         widget.onPermissionGranted!();
//       }
//     } catch (e) {
//       setState(() {
//         _isLoading = false;
//         _debugMessage = 'Error checking permission: $e';
//       });
//     }
//   }

//   Future<void> _requestPermission() async {
//     try {
//       setState(() {
//         _isLoading = true;
//         _debugMessage = 'Requesting camera permission...';
//       });

//       final granted = await PermissionService.requestCameraPermission();

//       setState(() {
//         _debugMessage = 'Permission request result: $granted';
//       });

//       if (granted) {
//         setState(() {
//           _hasPermission = true;
//           _isLoading = false;
//         });

//         // Call the callback when permission is granted
//         if (widget.onPermissionGranted != null) {
//           widget.onPermissionGranted!();
//         }
//       } else {
//         // Re-check permission status to see if it's permanently denied
//         await _checkPermission();
//       }
//     } catch (e) {
//       setState(() {
//         _isLoading = false;
//         _debugMessage = 'Error requesting permission: $e';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_isLoading) {
//       return _buildLoadingScreen();
//     }

//     if (_hasPermission) {
//       return widget.child;
//     }

//     if (_isPermanentlyDenied) {
//       return _buildPermanentlyDeniedScreen();
//     }

//     return _buildPermissionRequestScreen();
//   }

//   Widget _buildLoadingScreen() {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const CircularProgressIndicator(
//               valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
//             ),
//             const SizedBox(height: 24),
//             const Text(
//               'Checking permissions...',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 16,
//               ),
//             ),
//             const SizedBox(height: 16),
//             // Debug message
//             Text(
//               _debugMessage,
//               style: const TextStyle(
//                 color: Colors.white54,
//                 fontSize: 12,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildPermissionRequestScreen() {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             children: [
//               // Header
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () => Navigator.pop(context),
//                     icon: const Icon(
//                       Icons.arrow_back,
//                       color: Colors.white,
//                       size: 28,
//                     ),
//                   ),
//                   const Text(
//                     'Camera Permission',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ],
//               ),

//               // Content
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     // Camera icon
//                     Container(
//                       width: 120,
//                       height: 120,
//                       decoration: BoxDecoration(
//                         color: primaryColor.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(60),
//                         border: Border.all(
//                           color: primaryColor.withOpacity(0.3),
//                           width: 2,
//                         ),
//                       ),
//                       child: const Icon(
//                         Icons.camera_alt,
//                         color: primaryColor,
//                         size: 60,
//                       ),
//                     ),

//                     const SizedBox(height: 32),

//                     // Title
//                     const Text(
//                       'Camera Access Required',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),

//                     const SizedBox(height: 16),

//                     // Description
//                     const Text(
//                       'To scan QR codes, this app needs access to your camera. Your privacy is important to us - the camera is only used for scanning.',
//                       style: TextStyle(
//                         color: Colors.white70,
//                         fontSize: 16,
//                         height: 1.5,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),

//                     const SizedBox(height: 48),

//                     // Permission features
//                     Column(
//                       children: [
//                         _buildFeatureItem(
//                           Icons.qr_code_scanner,
//                           'Scan QR codes instantly',
//                         ),
//                         const SizedBox(height: 16),
//                         _buildFeatureItem(
//                           Icons.security,
//                           'Your privacy is protected',
//                         ),
//                         const SizedBox(height: 16),
//                         _buildFeatureItem(
//                           Icons.flash_on,
//                           'Use flashlight for better scanning',
//                         ),
//                       ],
//                     ),

//                     const SizedBox(height: 32),

//                     // Debug message
//                     if (_debugMessage.isNotEmpty)
//                       Container(
//                         padding: const EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Colors.white.withOpacity(0.05),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Text(
//                           _debugMessage,
//                           style: const TextStyle(
//                             color: Colors.white54,
//                             fontSize: 12,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                   ],
//                 ),
//               ),

//               // Action button
//               SizedBox(
//                 width: double.infinity,
//                 height: 56,
//                 child: ElevatedButton(
//                   onPressed: _isLoading ? null : _requestPermission,
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: primaryColor,
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     elevation: 0,
//                   ),
//                   child: _isLoading
//                       ? const SizedBox(
//                           width: 20,
//                           height: 20,
//                           child: CircularProgressIndicator(
//                             strokeWidth: 2,
//                             valueColor:
//                                 AlwaysStoppedAnimation<Color>(Colors.white),
//                           ),
//                         )
//                       : const Text(
//                           'Allow Camera Access',
//                           style: TextStyle(
//                             fontSize: 18,
//                             color: blackColor,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildPermanentlyDeniedScreen() {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(24.0),
//           child: Column(
//             children: [
//               // Header
//               Row(
//                 children: [
//                   IconButton(
//                     onPressed: () => Navigator.pop(context),
//                     icon: const Icon(
//                       Icons.arrow_back,
//                       color: Colors.white,
//                       size: 28,
//                     ),
//                   ),
//                   const Text(
//                     'Camera Permission',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ],
//               ),

//               // Content
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     // Warning icon
//                     Container(
//                       width: 120,
//                       height: 120,
//                       decoration: BoxDecoration(
//                         color: Colors.orange.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(60),
//                         border: Border.all(
//                           color: Colors.orange.withOpacity(0.3),
//                           width: 2,
//                         ),
//                       ),
//                       child: const Icon(
//                         Icons.warning_rounded,
//                         color: Colors.orange,
//                         size: 60,
//                       ),
//                     ),

//                     const SizedBox(height: 32),

//                     // Title
//                     const Text(
//                       'Camera Permission Denied',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),

//                     const SizedBox(height: 16),

//                     // Description
//                     const Text(
//                       'Camera access has been permanently denied. To use the QR scanner, please enable camera permission in your device settings.',
//                       style: TextStyle(
//                         color: Colors.white70,
//                         fontSize: 16,
//                         height: 1.5,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),

//                     const SizedBox(height: 32),

//                     // Steps
//                     Container(
//                       padding: const EdgeInsets.all(20),
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.05),
//                         borderRadius: BorderRadius.circular(12),
//                         border: Border.all(
//                           color: Colors.white.withOpacity(0.1),
//                           width: 1,
//                         ),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'How to enable camera permission:',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           const SizedBox(height: 12),
//                           _buildStepItem('1. Tap "Open Settings" below'),
//                           _buildStepItem(
//                               '2. Find "Permissions" or "App Permissions"'),
//                           _buildStepItem('3. Enable "Camera" permission'),
//                           _buildStepItem('4. Return to the app'),
//                         ],
//                       ),
//                     ),

//                     const SizedBox(height: 16),

//                     // Debug message
//                     if (_debugMessage.isNotEmpty)
//                       Container(
//                         padding: const EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Colors.white.withOpacity(0.05),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Text(
//                           _debugMessage,
//                           style: const TextStyle(
//                             color: Colors.white54,
//                             fontSize: 12,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                   ],
//                 ),
//               ),

//               // Action buttons
//               Column(
//                 children: [
//                   SizedBox(
//                     width: double.infinity,
//                     height: 56,
//                     child: ElevatedButton(
//                       onPressed: () async {
//                         try {
//                           await openAppSettings();
//                         } catch (e) {
//                           setState(() {
//                             _debugMessage = 'Error opening settings: $e';
//                           });
//                         }
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: primaryColor,
//                         foregroundColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         elevation: 0,
//                       ),
//                       child: const Text(
//                         'Open Settings',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   SizedBox(
//                     width: double.infinity,
//                     height: 56,
//                     child: TextButton(
//                       onPressed: _checkPermission,
//                       style: TextButton.styleFrom(
//                         foregroundColor: Colors.white70,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                       ),
//                       child: const Text(
//                         'Check Again',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildFeatureItem(IconData icon, String text) {
//     return Row(
//       children: [
//         Container(
//           width: 40,
//           height: 40,
//           decoration: BoxDecoration(
//             color: primaryColor.withOpacity(0.1),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Icon(
//             icon,
//             color: primaryColor,
//             size: 20,
//           ),
//         ),
//         const SizedBox(width: 16),
//         Expanded(
//           child: Text(
//             text,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 16,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildStepItem(String text) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: 6,
//             height: 6,
//             margin: const EdgeInsets.only(top: 8, right: 12),
//             decoration: const BoxDecoration(
//               color: primaryColor,
//               shape: BoxShape.circle,
//             ),
//           ),
//           Expanded(
//             child: Text(
//               text,
//               style: const TextStyle(
//                 color: Colors.white70,
//                 fontSize: 14,
//                 height: 1.4,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
