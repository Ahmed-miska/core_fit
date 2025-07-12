import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/reservation/staduims/logic/play_grounds_cubit/playgrounds_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class ReservationDetailsContainer extends StatefulWidget {
  final PlaygroundsCubit cubit;

  const ReservationDetailsContainer({
    super.key,
    required this.cubit,
  });

  @override
  State<ReservationDetailsContainer> createState() => _ReservationDetailsContainerState();
}

class _ReservationDetailsContainerState extends State<ReservationDetailsContainer> {
  @override
  Widget build(BuildContext context) {
    final cubit = widget.cubit;
    final model = cubit.playgroundModel!;

    final nightStart = DateFormat("HH:mm").parse(model.nightShiftStart!);
    final nightEnd = DateFormat("HH:mm").parse(model.nightShiftEnd!);

    final nightSlots = cubit.selectedReservationSlots.where((slot) {
      final slotTime = DateFormat("HH:mm").parse(slot);
      return slotTime.isAtSameMomentAs(nightStart) || slotTime.isAfter(nightStart) && slotTime.isBefore(nightEnd) || slotTime.isAtSameMomentAs(nightEnd);
    }).toList();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.lightGrey,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(Assets.calendar),
              horizontalSpace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Date', style: TextStyles.font18Dark700),
                  verticalSpace(4),
                  Text(cubit.selectedDay, style: TextStyles.font14Dark400),
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
                children: _buildMergedSlots(cubit.selectedReservationSlots),
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Reservation', style: TextStyles.font14Dark400),
                        verticalSpace(4),
                        Text('${model.bookingPrice} EG', style: TextStyles.font16Dark700),
                      ],
                    ),
                    const Spacer(),
                    Text('x ${cubit.selectedReservationSlots.length}', style: TextStyles.font14Dark400),
                    const Spacer(),
                    Text('${cubit.selectedReservationSlots.length * model.bookingPrice!.toDouble()} EG', style: TextStyles.font16Dark700),
                  ],
                ),
                verticalSpace(12),
                const Divider(thickness: .2),
                verticalSpace(12),
                if (model.hasExtraPrice! && nightSlots.isNotEmpty)
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(Assets.eveningPeriod),
                              horizontalSpace(8),
                              Text('Evening period', style: TextStyles.font14Dark400),
                            ],
                          ),
                          verticalSpace(4),
                          Text('${model.extraNightPrice} EG', style: TextStyles.font16Dark700),
                        ],
                      ),
                      const Spacer(),
                      Text('x ${nightSlots.length}', style: TextStyles.font14Dark400),
                      const Spacer(),
                      Text('${nightSlots.length * model.extraNightPrice!.toDouble()} EG', style: TextStyles.font16Dark700),
                    ],
                  ),
                if (model.hasExtraPrice! && nightSlots.isNotEmpty) ...[
                  verticalSpace(12),
                  const Divider(thickness: .2),
                  verticalSpace(12),
                ],
                Row(
                  children: [
                    Text('Total', style: TextStyles.font18Dark600),
                    const Spacer(),
                    Text('${_calculateTotal(cubit, nightSlots.length)} EG', style: TextStyles.font18Main600),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  double _calculateTotal(PlaygroundsCubit cubit, int nightSlotCount) {
    final base = cubit.selectedReservationSlots.length * cubit.playgroundModel!.bookingPrice!.toDouble();
    final night = nightSlotCount * (cubit.playgroundModel?.extraNightPrice ?? 0);
    return base + night;
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
