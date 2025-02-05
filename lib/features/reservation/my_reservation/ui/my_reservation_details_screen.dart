import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/reservation/my_reservation/ui/widgets/my_reservation_details_container.dart';
import 'package:core_fit/features/reservation/my_reservation/ui/widgets/my_reservation_details_item.dart';
import 'package:flutter/material.dart';

class MyReservationDetailsScreen extends StatelessWidget {
  const MyReservationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reservation Details'),
      body: Padding(
        padding: mainPadding(),
        child: ListView(
          children: [
            const MyReservationDetailsItem(),
            verticalSpace(20),
            const MyReservationDetailsContainer(),
          ],
        ),
      ),
    );
  }
}
