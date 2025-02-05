import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/reservation/reservation_details/ui/widgets/chose_day_container.dart';
import 'package:core_fit/features/reservation/reservation_details/ui/widgets/chose_time_container.dart';
import 'package:flutter/material.dart';

class ReservationBookingDetailsScreen extends StatefulWidget {
  const ReservationBookingDetailsScreen({super.key});

  @override
  State<ReservationBookingDetailsScreen> createState() => _ReservationBookingDetailsScreenState();
}

class _ReservationBookingDetailsScreenState extends State<ReservationBookingDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reservation'),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: mainPadding(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Choose the times that suit you.', style: TextStyles.font18Dark700),
                  Text('Please select times in sequence.', style: TextStyles.font14Gray400),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(child: verticalSpace(16)),
          const SliverToBoxAdapter(child: ChoseDayContainer()),
          SliverToBoxAdapter(child: verticalSpace(10)),
          const SliverToBoxAdapter(child: ChooseTimeContainer()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: mainPadding(),
                    child: AppTextButton(
                        text: 'Next',
                        onTap: () {
                          context.pushNamed(Routes.reservationBookingDetailsScreenTwo);
                        }),
                  ),
                  verticalSpace(10)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
