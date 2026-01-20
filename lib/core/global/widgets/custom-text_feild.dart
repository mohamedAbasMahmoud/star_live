// import 'package:flutter/material.dart';
// import 'package:trust_task/core/theme/app_color.dart';

// class CustomTextFormField extends StatelessWidget {
//   const CustomTextFormField({
//     super.key,
//     required this.controller,
//     required this.label,
//     required this.hint,
//     required this.validator,
//     this.obscureText = false,
//     this.keyboardType,
//     this.maxLines,
//     this.suffixIcon,
//     this.enableFilePicker = false,
//   });

//   final TextEditingController controller;
//   final String label;
//   final String hint;
//   final String? Function(String?)? validator;
//   final bool obscureText;
//   final TextInputType? keyboardType;
//   final int? maxLines;
//   final Widget? suffixIcon;
//   final bool enableFilePicker;

//   @override
//   Widget build(BuildContext context) {
//     Widget? finalSuffix;

//     if (enableFilePicker) {
//       finalSuffix = GestureDetector(
//         onTap: () async {
//           FilePickerResult? result = await FilePicker.platform.pickFiles();
//           if (result != null && result.files.isNotEmpty) {
//             controller.text = result.files.first.name;
//           }
//         },
//         child: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//           decoration: BoxDecoration(
//             color: AppColors.primaryColor,
//             borderRadius: BorderRadius.circular(20),
//           ),
//           child: Text(
//             controller.text.isEmpty ? 'Upload' : controller.text,
//             style: const TextStyle(color: Colors.white, fontSize: 14),
//             overflow: TextOverflow.ellipsis,
//           ),
//         ),
//       );
//     } else {
//       finalSuffix = suffixIcon;
//     }

//     return TextFormField(
//       controller: controller,
//       keyboardType: keyboardType ?? TextInputType.text,
//       validator: validator,
//       obscureText: obscureText,
//       maxLines: obscureText ? 1 : (maxLines ?? 1),

//       readOnly: enableFilePicker,
//       onTap: enableFilePicker
//           ? () async {
//               FilePickerResult? result = await FilePicker.platform.pickFiles();
//               if (result != null && result.files.isNotEmpty) {
//                 controller.text = result.files.first.name;
//               }
//             }
//           : null,
//       decoration: InputDecoration(
//         labelText: label,
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         hintText: hint,
//         labelStyle: const TextStyle(
//           fontWeight: FontWeight.w400,
//           color: Colors.black,
//           fontSize: 16,
//         ),
//         hintStyle: const TextStyle(color: Colors.grey),
//         filled: true,
//         fillColor: Colors.white,
//         contentPadding: const EdgeInsets.symmetric(
//           vertical: 16.0,
//           horizontal: 16.0,
//         ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(color: Colors.grey, width: 0.8),
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: BorderSide(color: Colors.grey.shade300, width: 0.8),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(color: Colors.black54, width: 0.8),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(color: Colors.red, width: 0.8),
//         ),
//         suffixIcon: finalSuffix,
//       ),
//     );
//   }
// }
