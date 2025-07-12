import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/reservation/staduims/logic/play_grounds_cubit/playgrounds_cubit.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoseDayContainer extends StatefulWidget {
  final int playgroundId;
  const ChoseDayContainer({
    super.key,
    required this.playgroundId,
  });

  @override
  State<ChoseDayContainer> createState() => _ChoseDayContainerState();
}

class _ChoseDayContainerState extends State<ChoseDayContainer> {
  // DatePickerController controller = DatePickerController();
  // @override
  // void initState() {
  //   controller = DatePickerController();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlaygroundsCubit, PlaygroundsState>(
      bloc: context.read<PlaygroundsCubit>(),
      buildWhen: (previous, current) => current is ReservationSlotsError || current is ReservationSlotsSuccess || current is ReservationSlotsLoading,
      builder: (context, state) {
        return Container(
          color: AppColors.lightGrey,
          height: 100.h,
          child: DatePicker(
            DateTime.now(),
            initialSelectedDate: DateTime.now(),
            selectionColor: AppColors.main,
            selectedTextColor: Colors.white,
            onDateChange: (date) {
              context.read<PlaygroundsCubit>().setSelectedDay(date.toIso8601String().split('T').first);
              context.read<PlaygroundsCubit>().getReservationSlots(
                    widget.playgroundId,
                    date.toIso8601String().split('T').first,
                  );
            },
          ),
        );
      },
    );
  }
}
