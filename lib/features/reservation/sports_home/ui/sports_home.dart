import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/widgets/stacket_image.dart';
import 'package:core_fit/features/reservation/sports_home/ui/widgets/most_popular_row_text.dart';
import 'package:core_fit/features/reservation/sports_home/ui/widgets/reservation_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SportsHome extends StatelessWidget {
  const SportsHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          MostPopularTextRow(
            onPressed: () {
              context.pushNamed(Routes.sportsListScreen);
            },
            title: 'Most popular',
            subtitle: 'Book now your favorite sport',
          ),
          verticalSpace(20),
          Padding(
            padding: mainPadding(),
            child: SizedBox(
              height: 300.h,
              child: Row(
                children: [
                  const Expanded(child: StacketImage(imageUrl: Assets.cachImage8, text: 'football')),
                  horizontalSpace(8),
                  Expanded(
                    child: Column(
                      children: [
                        const Expanded(child: StacketImage(imageUrl: Assets.cachImage2, text: 'Basketball')),
                        verticalSpace(8),
                        const Expanded(child: StacketImage(imageUrl: Assets.cachImage3, text: 'Tennis')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          verticalSpace(20),
          MostPopularTextRow(
            onPressed: () {
              context.pushNamed(Routes.featuredBookingScreen);
            },
            title: 'Featured Bookings',
            subtitle: 'Create your team and start having fun!',
          ),
          verticalSpace(20),
          SizedBox(
            height: 220.h,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 16 : 0, right: index == 6 ? 16 : 8),
                  child: const IntrinsicWidth(child: ReservationsContainer()),
                );
              },
            ),
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
