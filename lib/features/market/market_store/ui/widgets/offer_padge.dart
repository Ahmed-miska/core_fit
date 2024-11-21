import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OfferPadge extends StatelessWidget {
  final String title;
  const OfferPadge({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 12.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.red,
        ),
        child: Text(title, style: TextStyles.font16White700),
      ),
    );
  }
}
