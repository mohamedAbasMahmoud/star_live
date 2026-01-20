
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trust_task/core/theme/app_color.dart';
import 'custom_loading_button.dart';

class CustomBottomBarButton extends StatelessWidget {
  const CustomBottomBarButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
  });

  final String text;
  final Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      height: 54,
      padding: EdgeInsets.zero,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.w),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.primaryColor,
        ),
        width: 1.sw,
        alignment: Alignment.center,
        child: CustomLoadingButton(
          textColor: whiteColor,
          radius: 0,
          backgroundColor: AppColors.primaryColor,
          onPressed: isLoading ? null : onPressed,
          height: 0.06.sh,
          text: '',
          child: isLoading
              ? AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText(
                      'Loading...'.tr,
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        color: whiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                      duration: const Duration(milliseconds: 1200),
                    ),
                  ],
                  isRepeatingAnimation: true,
                  repeatForever: true,
                )
              : Text(
                  text,
                  style: TextStyle(
                    fontSize: 18.r,
                    color: whiteColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
        ),
      ),
    );
  }
}
