import 'package:card_swiper/card_swiper.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/add_favorite_icon.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/offer_padge.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAndPriceOfStaduimDetails extends StatelessWidget {
  final PlaygroundModel playground; // Assuming productImages is defined in your imports
  const ImageAndPriceOfStaduimDetails({
    super.key,
    required this.playground,
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
              itemCount: playground.images?.length ?? 0,
              itemBuilder: (context, index) {
                return CustomCachedImage(
                  imageUrl: playground.images?[index] ?? '',
                  fit: BoxFit.fill,
                );
              },
              autoplay: true,
              pagination: const SwiperPagination(alignment: Alignment.topCenter),
            ),
          ),
          const Align(alignment: Alignment.topRight, child: AddFavoriteIcon(isFavorite: false)),
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
                        const Icon(Icons.wallet, color: Colors.white, size: 24),
                        horizontalSpace(4),
                        Text('Booking price :', style: TextStyles.font14White700),
                        const Spacer(),
                        Text('${playground.bookingPrice}', style: TextStyles.font16White700),
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
