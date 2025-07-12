import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/reservation/my_reservation/data/models/reservations_response_model.dart';
import 'package:core_fit/features/reservation/my_reservation/ui/widgets/my_reservation_details_container.dart';
import 'package:core_fit/features/reservation/my_reservation/ui/widgets/my_reservation_details_item.dart';
import 'package:flutter/material.dart';

class MyReservationDetailsScreen extends StatelessWidget {
  final ReservationModel reservationModel;
  const MyReservationDetailsScreen({super.key, required this.reservationModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reservation Details'),
      body: Padding(
        padding: mainPadding(),
        child: ListView(
          children: [
             MyReservationDetailsItem(reservationModel: reservationModel,),
            verticalSpace(20),
             MyReservationDetailsContainer( reservationModel: reservationModel,),
          ],
        ),
      ),
    );
  }
}
