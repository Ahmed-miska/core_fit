import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/features/reservation/sport_details.dart/ui/widgets/booking_type_container.dart';
import 'package:flutter/material.dart';

class BookingTypeList extends StatelessWidget {
  const BookingTypeList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        BookingTypeContainer(
          onTap: () {
            context.pushNamed(Routes.staduimsScreen);
          },
          image: 'assets/icons/staduim.svg',
          title: 'Book Stadium',
          subtitle: 'Book the available stadium now to live an exceptional sports experience in the largest and most modern sports stadiums',
        ),
        verticalSpace(10),
        BookingTypeContainer(
          onTap: () {
            context.pushNamed(Routes.reservationTypeScreen);
          },
          image: 'assets/icons/team.svg',
          title: 'Book Team',
          subtitle: 'Are you a team looking for a contender? Here are other teams looking to compete.',
        ),
        verticalSpace(10),
        const BookingTypeContainer(
          image: 'assets/icons/single.svg',
          title: 'Book Single Match',
          subtitle: 'Are you a player looking for a team? Here you will find all the teams that need players that you can join',
        ),
      ],
    );
  }
}
