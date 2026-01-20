import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trust_task/approute.dart';
import 'package:trust_task/feature/screens/login_screen.dart';
import 'package:trust_task/initailbinding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const Starlive());
}

class Starlive extends StatelessWidget {
  const Starlive({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'StarLive',
          initialBinding: InitialBinding(),
          locale: Get.locale ?? const Locale('en'),

          home: const LoginScreen(),
          getPages: AppRoutes.pages,
        );
      },
    );
  }
}
