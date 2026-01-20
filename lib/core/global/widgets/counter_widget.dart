
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:trust_task/core/theme/app_color.dart';
import 'package:trust_task/core/theme/text_style.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    super.key,
    required this.count,
    required this.increment,
    required this.decrement,
  });

  final int count;
  final Function() increment;
  final Function() decrement;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: decrement,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.remove, color: whiteColor, size: 20.r),
            ),
          ),
          Gap(8.w),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              count.toString(),
              style: getBoldStyle(context).copyWith(
                fontSize: 16.r,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Gap(8.w),
          InkWell(
            onTap: increment,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(Icons.add, color: whiteColor, size: 20.r),
            ),
          ),
        ],
      ),
    );
  }
}
