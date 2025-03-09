import 'package:card_swiper/card_swiper.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/add_favorite_icon.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/offer_padge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAndPriceOfStaduimDetails extends StatelessWidget {
  const ImageAndPriceOfStaduimDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 315.h,
      child: Stack(
        children: [
          SizedBox(
            height: 250.h,
            child: Swiper(
              itemCount: 5,
              itemBuilder: (context, index) {
                return CustomCachedImage(imageUrl: productImages[index]);
              },
              autoplay: true,
              pagination: const SwiperPagination(alignment: Alignment.topCenter),
            ),
          ),
          const Align(alignment: Alignment.topRight, child: AddFavoriteIcon( isFavorite: false)),
          const Align(alignment: Alignment.topLeft, child: OfferPadge(title: '10%')),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: mainPadding(),
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.main,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined, color: Colors.white, size: 24),
                        Text('Away from you :', style: TextStyles.font14White700),
                        const Spacer(),
                        Text('2.4 km', style: TextStyles.font14White700),
                      ],
                    ),
                    verticalSpace(16),
                    Row(
                      children: [
                        const Icon(Icons.wallet, color: Colors.white, size: 24),
                        horizontalSpace(4),
                        Text('Booking price :', style: TextStyles.font14White700),
                        const Spacer(),
                        Text('100', style: TextStyles.font16White700),
                        horizontalSpace(4),
                        Text('EG / hour', style: TextStyles.font14White700),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
