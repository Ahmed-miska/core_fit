import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/reservation/my_reservation/data/models/reservations_response_model.dart';
import 'package:core_fit/features/reservation/my_reservation/logic/cubit/reservations_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MyReservationDetailsContainer extends StatefulWidget {
  final ReservationModel reservationModel;
  const MyReservationDetailsContainer({super.key, required this.reservationModel});

  @override
  State<MyReservationDetailsContainer> createState() => _MyReservationDetailsContainerState();
}

class _MyReservationDetailsContainerState extends State<MyReservationDetailsContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.inputStroke,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          widget.reservationModel.cancelled == false
              ? Row(
                  children: [
                    const Spacer(),
                    const Icon(Icons.cancel_outlined, color: AppColors.red),
                    horizontalSpace(4),
                    InkWell(
                        onTap: () async {
                          getIt<ReservationsCubit>().cancelReservation(widget.reservationModel.id.toString(), context);
                          getIt<ReservationsCubit>().getReservations('current');
                        },
                        child: Text('Cancel', style: TextStyles.font14White700.copyWith(color: AppColors.red)))
                  ],
                )
              : const SizedBox.shrink(),
          verticalSpace(8),
          Row(
            children: [
              Text(widget.reservationModel.date ?? '', style: TextStyles.font12Dark400),
              const Spacer(),
              Text('#${widget.reservationModel.id}', style: TextStyles.font18Main600),
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              const Icon(Icons.location_on_outlined, color: AppColors.main),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Location', style: TextStyles.font18Dark700),
                  verticalSpace(4),
                  Text(widget.reservationModel.playgroundAddress ?? '', style: TextStyles.font14Dark400),
                ],
              ),
            ],
          ),
          verticalSpace(16),
          Row(
            children: [
              SvgPicture.asset(Assets.calendar),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date', style: TextStyles.font18Dark700),
                  verticalSpace(4),
                  Text(widget.reservationModel.date ?? '', style: TextStyles.font14Dark400),
                ],
              ),
            ],
          ),
          verticalSpace(16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.access_time, color: AppColors.main),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildMergedSlots(widget.reservationModel.slots ?? []),
              )
            ],
          ),
          verticalSpace(16),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.white,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text('Total', style: TextStyles.font18Dark600),
                    const Spacer(),
                    Text('${widget.reservationModel.price} EG', style: TextStyles.font18Main600),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List<Widget> _buildMergedSlots(List<String> selectedSlots) {
    if (selectedSlots.isEmpty) return [];

    final times = selectedSlots.map((t) => DateFormat.Hm().parse(t)).toList()..sort();

    List<Widget> result = [];
    DateTime? rangeStart;
    DateTime? previous;

    for (final time in times) {
      if (rangeStart == null) {
        rangeStart = time;
        previous = time;
        continue;
      }

      if (time.difference(previous!).inMinutes > 60) {
        final rangeEnd = previous.add(const Duration(hours: 1));
        result.add(_buildTimeRangeWidget(rangeStart, rangeEnd));
        rangeStart = time;
      }

      previous = time;
    }

    if (rangeStart != null && previous != null) {
      final rangeEnd = previous.add(const Duration(hours: 1));
      result.add(_buildTimeRangeWidget(rangeStart, rangeEnd));
    }

    return result;
  }

  Widget _buildTimeRangeWidget(DateTime from, DateTime to) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Text.rich(
        TextSpan(
          children: <TextSpan>[
            TextSpan(text: 'From ', style: TextStyles.font14Gray400),
            TextSpan(text: DateFormat.jm().format(from), style: TextStyles.font14Dark700),
            TextSpan(text: '  to  ', style: TextStyles.font14Gray400),
            TextSpan(text: DateFormat.jm().format(to), style: TextStyles.font14Dark700),
          ],
        ),
      ),
    );
  }
}
