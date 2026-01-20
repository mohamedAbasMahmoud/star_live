import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '/core/theme/app_color.dart';
import '../../theme/text_style.dart';
import '../../utils/assets_data.dart';

class CustomEmptyWidget extends StatelessWidget {
  const CustomEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: Alignment.center,
          height: 0.22.sh,
          child: Lottie.asset(AssetsData.noDataAnimation, repeat: false),
        ),
        Text(
          Get.locale?.languageCode == 'ar' ? 'لا يوجد بيانات' : 'No Data',
          style: getMediumStyle(
            context,
          ).copyWith(color: greyColor, fontSize: 18),
        ),
      ],
    );
  }
}
