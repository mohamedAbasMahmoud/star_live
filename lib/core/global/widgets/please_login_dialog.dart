import 'package:get/get.dart';
void pleaseLoginDialog() {
  
  Get.defaultDialog(
    title: "Please Login".tr,
    middleText: "Please login to continue".tr,
    textCancel: "No".tr,
    textConfirm: "Yes".tr,
    onConfirm: () {
      Get.back();
     // Get.toNamed(AppRoutes.login);
    },
  );
}
