import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trust_task/feature/controller/login_controller.dart';
import 'package:trust_task/feature/widgets/custom_text_form_field.dart';

class PasswordFieldWithVisibility extends StatelessWidget {
  final LoginControllerImp controller;

  const PasswordFieldWithVisibility({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      label: 'password'.tr,
      controller: controller.passwordController,
      hint: "password".tr,
      icon: Icons.lock_outline,
      isNumber: false,
      obscureText: !controller.isVisibilty,
      validator: controller.validatePassword,
      suffixIcon: IconButton(
        onPressed: () {
          controller.visibility();
        },
        icon: controller.isVisibilty
            ? Icon(Icons.visibility, color: Colors.black, size: 20.sp)
            : Icon(Icons.visibility_off, color: Colors.black, size: 20.sp),
      ),
    );
  }
}
