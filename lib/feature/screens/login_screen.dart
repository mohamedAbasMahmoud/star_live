// ignore_for_file: sort_child_properties_last, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trust_task/core/theme/app_color.dart';
import 'package:trust_task/feature/controller/login_controller.dart';
import 'package:trust_task/feature/widgets/star_live_logo.dart';
import 'package:trust_task/feature/widgets/login_header.dart';
import 'package:trust_task/feature/widgets/email_field.dart';
import 'package:trust_task/feature/widgets/password_field_with_visibility.dart';
import 'package:trust_task/feature/widgets/forget_password_button.dart';
import 'package:trust_task/feature/widgets/login_submit_button.dart';
import 'package:trust_task/feature/widgets/signup_text_link.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.primaryColor,
      body: GetBuilder<LoginControllerImp>(
        builder: (controller) => SafeArea(
          child: Form(
            key: controller.formKeylogin,
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.w,
                      vertical: 90.h,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(42.r),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const StarLiveLogo(),
                        SizedBox(height: 90.h),
                        const LoginHeader(),
                        SizedBox(height: 20.h),
                        EmailField(controller: controller),
                        SizedBox(height: 16.h),
                          PasswordFieldWithVisibility(controller: controller),
                        SizedBox(height: 8.h),
                        // const ForgetPasswordButton(),
                        SizedBox(height: 20.h),
                        LoginSubmitButton(controller: controller),
                        SizedBox(height: 9.h),
                        const SignupTextLink(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
