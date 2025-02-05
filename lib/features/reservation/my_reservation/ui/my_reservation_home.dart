import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/features/reservation/my_reservation/ui/widgets/my_reservation_list_item.dart';
import 'package:core_fit/features/reservation/my_reservation/ui/widgets/reservation_status_bottons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyReservationHome extends StatelessWidget {
  const MyReservationHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: mainPadding(),
        child: Column(
          children: [
            const ReservationStatusBottons(),
            verticalSpace(20),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: InkWell(
                      onTap: () {
                        context.pushNamed(Routes.myReservationDetailsScreen);
                      },
                      child: const MyReservationListItem(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
