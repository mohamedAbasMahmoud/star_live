import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
    required this.title,
    this.onPressed,
  });

  final Color backGroundColor;
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor,
          foregroundColor: Colors.white,
          disabledBackgroundColor: backGroundColor,
          disabledForegroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontFamily: 'Georgia',
          ),
        ),
      ),
    );
  }
}
