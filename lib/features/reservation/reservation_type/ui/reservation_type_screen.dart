import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/reservation/reservation_type/ui/widgets/search_for_staduim_bar.dart';
import 'package:core_fit/features/reservation/reservation_type/ui/widgets/staduim_container_item.dart';
import 'package:flutter/material.dart';

class ReservationTypeScreen extends StatelessWidget {
  const ReservationTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reservation Type'),
      body: Padding(
        padding: mainPadding(),
        child: ListView(
          children: [
            const SearchForStaduimBar(),
            verticalSpace(10),
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: StaduimContainerItem(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
