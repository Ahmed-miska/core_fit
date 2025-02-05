import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChoseDayContainer extends StatefulWidget {
  const ChoseDayContainer({
    super.key,
  });

  @override
  State<ChoseDayContainer> createState() => _ChoseDayContainerState();
}

class _ChoseDayContainerState extends State<ChoseDayContainer> {
  DatePickerController controller = DatePickerController();
  @override
  void initState() {
    controller = DatePickerController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightGrey,
      height: 100.h,
      child: DatePicker(
        DateTime.now(),
        daysCount: 30,
        width: 60.w,
        initialSelectedDate: DateTime.now(),
        selectionColor: AppColors.main,
        selectedTextColor: Colors.white,
        dateTextStyle: TextStyles.font18Dark700,
        onDateChange: (date) {
          // New date selected
          setState(() {
          });
         
        },
      ),
    );
  }
}
