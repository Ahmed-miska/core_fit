import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/add_favorite_icon.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StaduimItemInStaduimsScreen extends StatelessWidget {
  const StaduimItemInStaduimsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
        border: Border.all(color: AppColors.lightGrey),
        boxShadow: const [
          BoxShadow(
            color: AppColors.lightGrey,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 100.h,
                width: 100.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: const CustomCachedImage(imageUrl: Assets.cachImage5),
                ),
              ),
              const AddFavoriteIcon( isFavorite: false),
            ],
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        'Santiago Bernabeu Stadium',
                        style: TextStyles.font16Dark700,
                        textAlign: TextAlign.start,
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
                      child: Text('7x7', style: TextStyles.font12White400),
                    )
                  ],
                ),
                verticalSpace(10),
                const RatingStars(value: 4, starCount: 5, starSize: 16, valueLabelVisibility: false),
                verticalSpace(10),
                Row(
                  children: [
                    const Icon(Icons.location_on_outlined, color: AppColors.main, size: 16),
                    horizontalSpace(4),
                    Text('Span , Madrid', style: TextStyles.font14Dark400),
                    const Spacer(),
                    Text('2.4 km', style: TextStyles.font16Dark700),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
