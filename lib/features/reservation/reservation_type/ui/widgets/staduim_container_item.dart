import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StaduimContainerItem extends StatelessWidget {
  const StaduimContainerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
        border: Border.all(color: AppColors.lightGrey),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 230.h,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: const CustomCachedImage(imageUrl: Assets.cachImage3),
            ),
          ),
          verticalSpace(12),
          Row(
            children: [
              Text('Santiago Bernabeu Stadium', style: TextStyles.font16Dark700),
              const Spacer(),
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
                    )
                  ],
                ),
                child: Text('7x7', style: TextStyles.font14White400),
              )
            ],
          ),
          verticalSpace(12),
          Row(
            children: [
              const RatingStars(value: 4, starCount: 5, starSpacing: 2, valueLabelVisibility: false),
              horizontalSpace(8),
              Text('[ 25 reviews ]', style: TextStyles.font12Gray400),
            ],
          ),
          verticalSpace(12),
          Row(
            children: [
              const Icon(Icons.location_on_outlined, color: AppColors.main, size: 24),
              horizontalSpace(4),
              Text('Span , Madrid', style: TextStyles.font14Dark400),
              const Spacer(),
              Text('2.4 km', style: TextStyles.font16Dark700),
            ],
          ),
          verticalSpace(12),
          Row(
            children: [
              const Icon(Icons.more_time_rounded, color: AppColors.main, size: 24),
              horizontalSpace(4),
              RichText(
                text: TextSpan(
                  text: 'From ',
                  style: TextStyles.font14Dark400,
                  children: [
                    TextSpan(text: '8:00', style: TextStyles.font16Dark700),
                    TextSpan(text: ' AM :', style: TextStyles.font14Dark400),
                    TextSpan(text: ' To ', style: TextStyles.font14Dark400),
                    TextSpan(text: '8:00', style: TextStyles.font16Dark700),
                    TextSpan(text: ' PM', style: TextStyles.font14Dark400),
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(12),
          Row(
            children: [
              const Icon(Icons.watch_later_outlined, color: AppColors.main, size: 24),
              horizontalSpace(4),
              Text('3', style: TextStyles.font18Main600),
              horizontalSpace(4),
              Text('hours', style: TextStyles.font16Dark700),
              const Spacer(),
              const Icon(Icons.calendar_month_outlined, color: AppColors.main, size: 24),
              horizontalSpace(8),
              Text('21/02/2023', style: TextStyles.font16Dark700),
              const Spacer(),
            ],
          ),
          verticalSpace(12),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.mainBG,
              border: Border.all(color: AppColors.main, width: .5),
            ),
            child: Row(
              children: [
                Text('Still 3 places available', style: TextStyles.font14Main700),
                horizontalSpace(40),
                const Spacer(),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(AppColors.main),
                    padding: WidgetStateProperty.all(const EdgeInsets.all(8)),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                  ),
                  onPressed: () {},
                  child: Text('Book now', style: TextStyles.font14White700),
                )
              ],
            ),
          ),
          verticalSpace(8),
        ],
      ),
    );
  }
}
