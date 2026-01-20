import 'package:get/get.dart';
import 'package:trust_task/core/services/app_prefs.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppPreferences(), permanent: true);
    // أضف أي services تانية هنا
  }
}
