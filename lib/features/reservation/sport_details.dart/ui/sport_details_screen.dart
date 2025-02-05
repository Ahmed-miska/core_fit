import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/reservation/sport_details.dart/ui/widgets/booking_type_list.dart';
import 'package:core_fit/features/reservation/sports_home/ui/widgets/most_popular_row_text.dart';
import 'package:core_fit/features/reservation/sports_home/ui/widgets/reservation_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SportDetailsScreen extends StatelessWidget {
  const SportDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Football'),
      backgroundColor: Colors.white,
      body: Padding(
        padding: mainPadding(),
        child: ListView(
          children: [
            Text('Booking type..!', style: TextStyles.font28Dark700),
            verticalSpace(8),
            Text('Select the type of reservation', style: TextStyles.font14Dark400),
            verticalSpace(16),
            const BookingTypeList(),
            verticalSpace(24),
            MostPopularTextRow(
              onPressed: () {
                context.pushNamed(Routes.featuredBookingScreen);
              },
              title: 'Featured Bookings',
              subtitle: 'Create your team and start having fun!',
            ),
            verticalSpace(16),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 12.h),
                  child: const ReservationsContainer(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
