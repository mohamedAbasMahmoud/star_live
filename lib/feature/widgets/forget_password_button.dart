import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trust_task/core/theme/app_color.dart';

class ForgetPasswordButton extends StatelessWidget {
  const ForgetPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {},
        child: Text(
          'forget password'.tr,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: orangeColor),
        ),
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          minimumSize: Size(40.w, 20.h),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
    );
  }
}
