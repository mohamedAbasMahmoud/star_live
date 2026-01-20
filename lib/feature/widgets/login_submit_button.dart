import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trust_task/core/global/widgets/custom_loading_button.dart';
import 'package:trust_task/core/theme/app_color.dart';
import 'package:trust_task/feature/controller/login_controller.dart';

class LoginSubmitButton extends StatelessWidget {
  final LoginControllerImp controller;

  const LoginSubmitButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: CustomLoadingButton(
          backgroundColor: babyBlue,
          onPressed: () {
            return controller.login();
          },
          text: 'login'.tr,
          fontWeight: FontWeight.w600,
          fontSize: 16.r,
        ),
      ),
    );
  }
}
