import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/reservation/staduims/data/models/playgrounds_response_model.dart';
import 'package:core_fit/features/reservation/staduims/logic/play_grounds_cubit/playgrounds_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class ChooseTimeContainer extends StatefulWidget {
  final PlaygroundModel playgroundModel;

  const ChooseTimeContainer({super.key, required this.playgroundModel});

  @override
  State<ChooseTimeContainer> createState() => _ChooseTimeContainerState();
}

class _ChooseTimeContainerState extends State<ChooseTimeContainer> {
  List<String> morningSlots = [];
  List<String> nightSlots = [];
  List<String> selectedSlots = [];
  List<String> reservedSlots = [];

  @override
  void initState() {
    super.initState();
    generateTimeSlots();
  }

  void generateTimeSlots() {
    try {
      final morningStart = _parseTime(widget.playgroundModel.morningShiftStart!);
      final morningEnd = _parseTime(widget.playgroundModel.morningShiftEnd!);
      final nightStart = _parseTime(widget.playgroundModel.nightShiftStart!);
      final nightEnd = _parseTime(widget.playgroundModel.nightShiftEnd!);

      morningSlots = _generateHourlySlots(morningStart, morningEnd);
      nightSlots = _generateHourlySlots(nightStart, nightEnd);
    } catch (e) {
      print("Error parsing time: $e");
    }
  }

  DateTime _parseTime(String timeStr) {
    try {
      if (timeStr.trim().split(":").length == 2) {
        return DateFormat("HH:mm").parse(timeStr.trim());
      } else {
        return DateFormat("HH:mm:ss").parse(timeStr.trim());
      }
    } catch (e) {
      print("Invalid time format: $timeStr");
      return DateTime.now(); // fallback
    }
  }

  List<String> _generateHourlySlots(DateTime start, DateTime end) {
    List<String> slots = [];
    DateTime current = start;

    while (current.isBefore(end)) {
      slots.add(DateFormat.Hm().format(current)); // HH:mm
      final next = current.add(const Duration(hours: 1));

      if (next.isAfter(end)) {
        final remainingMinutes = end.difference(current).inMinutes;
        if (remainingMinutes >= 30) {
          slots.add(DateFormat.Hm().format(current.add(const Duration(minutes: 30))));
        }
        break;
      }

      current = next;
    }

    return slots;
  }

  Widget _buildSlot(String time, bool isNight, int index) {
    final isReserved = reservedSlots.contains(time);
    final isSelected = selectedSlots.contains(time);

    return GestureDetector(
      onTap: () {
        if (isReserved) return;
        context.read<PlaygroundsCubit>().setSelectedSlots(selectedSlots);

        setState(() {
          isSelected ? selectedSlots.remove(time) : selectedSlots.add(time);
        });
      },
      child: Container(
        width: 100.w,
        height: 40.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isReserved
              ? Colors.grey[400]
              : isSelected
                  ? Colors.green
                  : Colors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.black12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Builder(
              builder: (_) {
                try {
                  final parsed = DateFormat.Hm().parse(time);
                  return Text(
                    DateFormat.jm('en').format(parsed),
                    style: TextStyle(
                      color: isReserved
                          ? Colors.white
                          : isSelected
                              ? Colors.white
                              : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                } catch (_) {
                  return Text(
                    time,
                    style: TextStyle(
                      color: isReserved
                          ? Colors.white
                          : isSelected
                              ? Colors.white
                              : Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                }
              },
            ),
            if (isNight)
              const Padding(
                padding: EdgeInsets.only(left: 5),
                child: Icon(Icons.nightlight_round, color: Colors.amber, size: 16),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final allSlots = [...morningSlots, ...nightSlots];

    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          BlocBuilder<PlaygroundsCubit, PlaygroundsState>(
            buildWhen: (previous, current) => current is ReservationSlotsError || current is ReservationSlotsSuccess || current is ReservationSlotsLoading,
            bloc: context.read<PlaygroundsCubit>(),
            builder: (context, state) {
              return state.maybeWhen(
                reservationSlotsLoading: () => const CircularProgressIndicator(
                  color: AppColors.main,
                ),
                reservationSlotsError: (error) => Text(error),
                reservationSlotsSuccess: (data) {
                  reservedSlots = data;
                  selectedSlots = selectedSlots.where((e) => !reservedSlots.contains(e)).toList();
                  return Wrap(
                    spacing: 10.w,
                    runSpacing: 10.h,
                    children: List.generate(allSlots.length, (index) {
                      final isNight = index >= morningSlots.length;
                      return _buildSlot(allSlots[index], isNight, index);
                    }),
                  );
                },
                orElse: () => Container(),
              );
            },
          ),
          SizedBox(height: 15.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildLegend('Morning period', Colors.white),
                verticalSpace(8),
                _buildLegend('Evening period with extra charge', Colors.white, night: true),
                verticalSpace(8),
                _buildLegend('Selected time', Colors.green),
                verticalSpace(8),
                _buildLegend('Reserved', Colors.grey[400]!),
                verticalSpace(8),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildLegend(String text, Color color, {bool night = false}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.black12),
          ),
          child: night ? const Icon(Icons.nightlight_round, color: Colors.amber, size: 14) : null,
        ),
        const SizedBox(width: 5),
        Text(text, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
