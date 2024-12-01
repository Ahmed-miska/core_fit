import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAndRatingContainer extends StatelessWidget {
  const ImageAndRatingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.inputHint,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 200.h,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: const CustomCachedImage(imageUrl: Assets.cachImage),
            ),
          ),
          verticalSpace(12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            height: 80.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              children: [
                const SizedBox(
                  height: 64,
                  width: 64,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    child: CustomCachedImage(imageUrl: 'https://picsum.photos/id/46/200/300'),
                  ),
                ),
                horizontalSpace(16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Adidas', style: TextStyles.font16Dark700),
                    verticalSpace(4),
                    Row(
                      children: [
                        const RatingStars(value: 2.5, starCount: 5, starSpacing: 2, valueLabelVisibility: false),
                        horizontalSpace(8),
                        Text('[ 25 reviews ]', style: TextStyles.font12Gray400),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
