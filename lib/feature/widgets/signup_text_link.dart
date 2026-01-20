import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trust_task/core/theme/app_color.dart';

class SignupTextLink extends StatelessWidget {
  const SignupTextLink({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: 14.sp, color: Colors.grey[600]),
          children: [
            TextSpan(text: "dont have account".tr),
            TextSpan(
              text: 'create new'.tr,
              style: Theme.of(
                context,
              ).textTheme.bodyMedium?.copyWith(color: greenColor),
              recognizer: TapGestureRecognizer(),
            ),
          ],
        ),
      ),
    );
  }
}
