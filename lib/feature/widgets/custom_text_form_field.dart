import 'package:flutter/material.dart';
import 'package:trust_task/core/theme/app_color.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool isNumber;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final String? label;
  final bool? filled;
  const CustomTextField({
    super.key,
    required this.hint,
    required this.icon,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    required this.isNumber,
    required this.obscureText,
    this.validator,
    this.controller,
    this.label,
    this.filled,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: isNumber
          ? const TextInputType.numberWithOptions(decimal: true)
          : keyboardType,
      obscureText: obscureText,
      validator: validator,
      // ---------------------------------------------
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.black),
        prefixIcon: Icon(icon, color: Colors.black),
        suffixIcon: suffixIcon,
        hintText: hint,
        hintStyle: TextStyle(color: Colors.black),
        labelText: label,
        fillColor: Colors.white,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 6),

        // ---------------------------------------------
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
            width: 1.5,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(color: Colors.red, width: 1.5),
        ),
      ),
    );
  }
}
