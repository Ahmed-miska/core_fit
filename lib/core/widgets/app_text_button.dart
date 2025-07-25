import 'package:core_fit/core/helpers/spacing.dart';
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
  final Widget? icon;
  const AppTextButton({super.key, required this.text, required this.onTap, this.radius, this.color, this.hight, this.style, this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      //  borderRadius: BorderRadius.circular(radius ?? 12.r),
      child: Container(
        height: hight ?? 45.h,
        padding: EdgeInsets.symmetric(vertical: 5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 8.r),
          color: color ?? AppColors.main,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: style ?? TextStyles.font14White400,
            ),
            horizontalSpace(8.w),
            icon ?? const SizedBox(),
          ],
        ),
      ),
    );

    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        minimumSize: WidgetStateProperty.all(Size(double.maxFinite, 45.h)),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(vertical: 5.h)),
        backgroundColor: WidgetStateProperty.all(color ?? AppColors.main),
        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: style ?? TextStyles.font18WhiteW600,
          ),
          horizontalSpace(8.w),
          icon ?? const SizedBox(),
        ],
      ),
    );
  }
}
