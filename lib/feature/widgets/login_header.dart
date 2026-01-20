import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trust_task/core/theme/app_color.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'welcome back'.tr,
          style: TextStyle(
            color: greenColor,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 6.h),
        Text(
          'login with password'.tr,
          style: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: Colors.grey[700]),
        ),
      ],
    );
  }
}
