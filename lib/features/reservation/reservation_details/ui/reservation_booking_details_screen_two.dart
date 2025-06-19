import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/reservation/reservation_details/ui/widgets/reservation_details_container.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';
import 'package:core_fit/features/reservation/staduims/ui/widgets/staduim_item_in_staduims_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReservationBookingDetailsScreenTwo extends StatelessWidget {
  const ReservationBookingDetailsScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reservation'),
      body: Padding(
        padding: mainPadding(),
        child: ListView(
          children: [
            StaduimItemInStaduimsScreen(
              playground: PlaygroundModel(
                address: 'Giza',
                images: [],
              ),
            ),
            verticalSpace(10),
            const ReservationDetailsContainer(),
            verticalSpace(10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.lightGrey,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Reservation Price :', style: TextStyles.font18Dark700),
                      const Spacer(),
                      Text('500 EG', style: TextStyles.font18Main600),
                    ],
                  ),
                  verticalSpace(20),
                  AppTextButton(
                      text: 'Confirm And Pay',
                      onTap: () {
                        context.pushNamedAndRemoveUntil(Routes.sportsHomeScreen, predicate: (Route<dynamic> route) {
                          return false;
                        });
                      }),
                ],
              ),
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
