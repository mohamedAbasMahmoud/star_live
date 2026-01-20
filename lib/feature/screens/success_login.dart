// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:trust_task/core/global/widgets/custom_loading_button.dart';
import 'package:trust_task/core/theme/app_color.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height,
                ),
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(42.r),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Star Icon
                    Container(
                      height: 140.h,
                      width: 140.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [AppColors.primaryColor, babyBlue],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.primaryColor.withOpacity(0.4),
                            blurRadius: 25,
                            spreadRadius: 5,
                            offset: const Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          Icons.star_rounded,
                          color: Colors.white,
                          size: 80.sp,
                        ),
                      ),
                    ),

                    SizedBox(height: 40.h),

                    // Success Title
                    Text(
                      'Success',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: 38.sp,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.5,
                      ),
                    ),

                    SizedBox(height: 60.h),

                    // Continue Button
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
