import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/reservation/staduims/ui/widgets/image_and_price_of_staduim_details.dart';
import 'package:core_fit/features/reservation/staduims/ui/widgets/services_container_in_staduim_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class StaduimDetailsScreen extends StatelessWidget {
  const StaduimDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Staduim Details'),
      body: CustomScrollView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          const SliverToBoxAdapter(child: ImageAndPriceOfStaduimDetails()),
          SliverToBoxAdapter(child: verticalSpace(20)),
          SliverToBoxAdapter(
            child: Padding(
              padding: mainPadding(),
              child: Container(
                padding: const EdgeInsets.all(16),
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
                child: Column(
                  children: [
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
                              BoxShadow(color: AppColors.lightGrey, blurRadius: 4, offset: Offset(0, 4)),
                            ],
                          ),
                          child: Text('7x7', style: TextStyles.font12White600),
                        )
                      ],
                    ),
                    verticalSpace(12),
                    Row(
                      children: [
                        Text('Football', style: TextStyles.font14Main700),
                        const Spacer(),
                        const RatingStars(value: 4, starSize: 16, valueLabelVisibility: false),
                      ],
                    ),
                    verticalSpace(12),
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined, color: AppColors.main, size: 16),
                        horizontalSpace(4),
                        Text('Span , Madrid', style: TextStyles.font14Dark400),
                        const Spacer(),
                        Text('2.4 km', style: TextStyles.font16Dark700),
                      ],
                    ),
                    verticalSpace(12),
                    const ServicesContainerInStaduimDetails(),
                    verticalSpace(12),
                  ],
                ),
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            fillOverscroll: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  verticalSpace(20),
                  Padding(
                    padding: mainPadding(),
                    child: AppTextButton(
                      text: 'Book Now',
                      onTap: () {
                        context.pushNamed(Routes.reservationBookingDetailsScreen);
                      },
                    ),
                  ),
                  verticalSpace(10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
