import '/core/theme/app_color.dart';
import 'package:get/get.dart';

class AppSnackBars {
  static success({
    required String message,
    String? title,
  }) {
    Get.snackbar(
      title ?? "Success".tr,
      message,
      backgroundColor: successColor,
      colorText: whiteColor,
    );
  }

  static warning({
    required String message,
    String? title,
  }) {
    Get.snackbar(
      title ?? "Warning".tr,
      message,
      backgroundColor: warningColor,
      colorText: blackColor,
    );
  }

  static error({
    required String message,
    String? title,
  }) {
    Get.snackbar(
      title ?? "Error".tr,
      message,
      backgroundColor: dangerColor,
      colorText: whiteColor,
    );
  }
}
