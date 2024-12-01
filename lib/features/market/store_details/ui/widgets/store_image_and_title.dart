import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreImageAndTitle extends StatelessWidget {
  const StoreImageAndTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 84.h,
            width: 84.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: const CustomCachedImage(imageUrl: Assets.cachImage),
            ),
          ),
          verticalSpace(16),
          Text(
            'Store Name',
            style: TextStyles.font16Dark700,
          ),
          verticalSpace(8),
          Text(
            'Store Type',
            style: TextStyles.font12Main600,
          ),
        ],
      ),
    );
  }
}
