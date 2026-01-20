import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trust_task/core/theme/app_color.dart';

class StarLiveLogo extends StatelessWidget {
  const StarLiveLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70.h,
            width: 70.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [AppColors.primaryColor, babyBlue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryColor.withOpacity(0.3),
                  blurRadius: 20,
                  spreadRadius: 3,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Icon(Icons.star_rounded, color: Colors.white, size: 42.sp),
          ),
          SizedBox(width: 16.w),
          Text(
            'StarLive',
            style: TextStyle(
              color: AppColors.primaryColor,
              fontSize: 38.sp,
              fontWeight: FontWeight.w800,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }
}
