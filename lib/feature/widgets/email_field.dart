import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_task/feature/controller/login_controller.dart';
import 'package:trust_task/feature/widgets/custom_text_form_field.dart';

class EmailField extends StatelessWidget {
  final LoginControllerImp controller;

  const EmailField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      label: 'email'.tr,
      controller: controller.emailController,
      hint: 'email'.tr,
      icon: Icons.phone_outlined,
      isNumber: false,
      obscureText: false,
      validator: controller.validateEmailOrPhone,
    );
  }
}
