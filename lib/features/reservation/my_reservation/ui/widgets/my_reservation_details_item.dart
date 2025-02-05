import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyReservationDetailsItem extends StatelessWidget {
  const MyReservationDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.main.withOpacity(.1),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 80.h,
            width: 80.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: const CustomCachedImage(imageUrl: Assets.cachImage5),
            ),
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Santiago Bernabeu Stadium', style: TextStyles.font16Dark700),
                verticalSpace(10),
                const RatingStars(value: 4, starSize: 16, valueLabelVisibility: false),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.main,
              boxShadow: const [
                BoxShadow(
                  color: AppColors.lightGrey,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Text('7 X 7', style: TextStyles.font14White400),
          )
        ],
      ),
    );
  }
}
