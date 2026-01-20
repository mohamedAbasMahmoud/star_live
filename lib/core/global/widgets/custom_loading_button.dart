
import 'package:easy_loading_button/easy_loading_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../theme/text_style.dart';
import 'custom_loading_widget.dart';
import '/core/theme/app_color.dart';

class CustomLoadingButton extends StatelessWidget {
  const CustomLoadingButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.height,
    this.width,
    this.alignment,
    this.radius,
    this.child,
    this.fontWeight,
    this.fontSize,
  });

  final Function? onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final double? height;
  final double? width;
  final Alignment? alignment;
  final double? radius;
  final Widget? child;
  final FontWeight? fontWeight;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? Alignment.center,
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(radius ?? 30),
        clipBehavior: Clip.antiAlias,
        child: EasyButton(
          onPressed: onPressed,
          type: EasyButtonType.elevated,
          borderRadius: 10.w,
          buttonColor: backgroundColor ?? AppColors.primaryColor,
          height: height ?? 0.055.sh,
          width: width ?? 100.sw,
          idleStateWidget:
              child ??
              Text(
                text,
                style: getBoldStyle(context).copyWith(
                  color: textColor ?? whiteColor,
                  fontSize: fontSize ?? 20.r,
                  fontWeight: fontWeight ?? FontWeight.w800,
                ),
              ),
          loadingStateWidget: const CustomLoadingWidget(),
        ),
      ),
    );
  }
}
