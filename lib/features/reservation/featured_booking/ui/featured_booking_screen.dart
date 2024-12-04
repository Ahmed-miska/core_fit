import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/reservation/sports_home/ui/widgets/reservation_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeaturedBookingScreen extends StatelessWidget {
  const FeaturedBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Featured Booking'),
      body: Padding(
        padding: mainPadding(),
        child: Expanded(
          child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 12.h),
                child: const ReservationsContainer(),
              );
            },
          ),
        ),
      ),
    );
  }
}
