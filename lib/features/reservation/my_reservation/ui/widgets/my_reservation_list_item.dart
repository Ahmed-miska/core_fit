import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyReservationListItem extends StatelessWidget {
  const MyReservationListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
        border: Border.all(color: AppColors.lightGrey),
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 220.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: const CustomCachedImage(
                imageUrl: Assets.cachImage5,
                fit: BoxFit.fill,
              ),
            ),
          ),
          verticalSpace(8),
          Row(
            children: [
              Text('Santiago Bernabeu Stadium', style: TextStyles.font16Dark700),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.main,
                ),
                child: Text('7 X 7', style: TextStyles.font12White600),
              ),
            ],
          ),
          verticalSpace(8),
          Row(
            children: [
              Text('2024/11/29 . 8:00 م', style: TextStyles.font14Dark400),
              const Spacer(),
              Text('#123', style: TextStyles.font18Main600),
            ],
          ),
          verticalSpace(8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.main.withOpacity(0.1),
              border: Border.all(color: AppColors.main, width: .5),
            ),
            child: Text(
              'Remaining 2 Person ',
              style: TextStyles.font14Main700,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
