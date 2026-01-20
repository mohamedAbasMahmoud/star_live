// ignore_for_file: avoid_print, strict_top_level_inference
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trust_task/approute.dart';
import 'package:trust_task/core/network/api_constance.dart';
import 'package:trust_task/core/network/custom_request.dart';
import 'package:trust_task/core/services/app_prefs.dart';
import 'package:trust_task/core/utils/app_snackbars.dart';

abstract class LoginController extends GetxController {
  login();
}

class LoginControllerImp extends LoginController {
  final GlobalKey<FormState> formKeylogin = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isVisibilty = false;
  void visibility() {
    isVisibilty = !isVisibilty;
    update();
  }

  //  validation
  String? validateEmailOrPhone(String? value) {
    if (value == null || value.isEmpty) {
      return "phone_or_email_required".tr;
    }
    if (!value.contains('@') && value.length < 10) {
      return "enter_valid_phone_or_email".tr;
    }
    return null;
  }

  // validation ==pas
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "password_required".tr;
    }
    if (value.length < 6) {
      return "password_min_length".tr;
    }
    return null;
  }

  //backend==========
  @override
  Future<void> login() async {
    if (formKeylogin.currentState!.validate()) {
      final result =
          await CustomRequest<Map<String, dynamic>, Map<String, dynamic>>(
            path: ApiConstance.login,
            data: {
              "login": emailController.text,
              "password": passwordController.text,
            },
            fromJson: (json) => json,
            showLogs: true,
          ).sendPostRequest();

      result.fold(
        (l) {
          log(l.errMsg);
          AppSnackBars.error(message: "Phone or password is incorrect".tr);
        },
        (r) {
          print(r['token']);
          Get.find<AppPreferences>().setToken(r['token']);
          Get.find<AppPreferences>().setUserId(r['user']['id'].toString());

          ApiConstance.token = r['token'];
          print("=========token============${ApiConstance.token}");
          Get.toNamed(AppRoutes.successScreen);

          print(r);
        },
      );
    }
  }
}
