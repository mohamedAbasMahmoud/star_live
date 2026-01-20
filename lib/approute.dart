import 'package:get/get.dart';
import 'package:trust_task/feature/screens/login_screen.dart';
import 'package:trust_task/feature/screens/success_login.dart';

class AppRoutes {
  /// Auth routes
  static const String loginScreen = '/login';
  static const String successScreen = '/success';

  static final List<GetPage<dynamic>> pages = [
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: successScreen, page: () => const SuccessScreen()),
  ];
}
