import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  final double? radius;
  final Function() onTap;
  final double? hight;
  final Color? color;
  final TextStyle? style;
  const AppTextButton({super.key, required this.text, required this.onTap, this.radius, this.color, this.hight, this.style});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: hight ?? 45.h,
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(radius ?? 16.0),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h),
          child: Center(
            child: Text(
              text,
              style: style ?? TextStyles.font18WhiteW600,
            ),
          ),
        ),
      ),
    );
  }
}
