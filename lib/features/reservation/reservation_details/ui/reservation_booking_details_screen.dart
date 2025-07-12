import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/custom_toast.dart';
import 'package:core_fit/features/reservation/reservation_details/ui/widgets/chose_day_container.dart';
import 'package:core_fit/features/reservation/reservation_details/ui/widgets/chose_time_container.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';
import 'package:core_fit/features/reservation/staduims/logic/play_grounds_cubit/playgrounds_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReservationBookingDetailsScreen extends StatefulWidget {
  final PlaygroundModel playground;
  const ReservationBookingDetailsScreen({super.key, required this.playground});

  @override
  State<ReservationBookingDetailsScreen> createState() => _ReservationBookingDetailsScreenState();
}

class _ReservationBookingDetailsScreenState extends State<ReservationBookingDetailsScreen> {
  @override
  void initState() {
    context.read<PlaygroundsCubit>().getReservationSlots(
          widget.playground.id!,
          DateFormat('yyyy-MM-dd').format(DateTime.now()),
        );
    super.initState();
  }

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
          SliverToBoxAdapter(
              child: ChoseDayContainer(
            playgroundId: widget.playground.id ?? 0,
          )),
          SliverToBoxAdapter(child: verticalSpace(10)),
          SliverToBoxAdapter(
              child: ChooseTimeContainer(
            playgroundModel: widget.playground,
          )),
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
                          if (context.read<PlaygroundsCubit>().selectedReservationSlots.isEmpty) {
                            customToast('You Should Choose At Least One Time', color: AppColors.red);
                          } else {
                            context.pushNamed(Routes.reservationBookingDetailsScreenTwo, arguments: context.read<PlaygroundsCubit>());
                            context.read<PlaygroundsCubit>().setPlaygroundModel(widget.playground);
                          }
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
