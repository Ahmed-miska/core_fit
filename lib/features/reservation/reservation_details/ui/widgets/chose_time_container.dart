import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChooseTimeContainer extends StatefulWidget {
  const ChooseTimeContainer({super.key});

  @override
  State<ChooseTimeContainer> createState() => _ChooseTimeContainerState();
}

class _ChooseTimeContainerState extends State<ChooseTimeContainer> {
  final List<String> availableTimeSlots = [
    "12:00 ص",
    "11:00 ص",
    "10:00 ص",
    "9:00 ص",
    "8:00 ص",
    "5:00 م",
    "4:00 م",
    "3:00 م",
    "2:00 م",
    "1:00 م",
    "10:00 م",
    "9:00 م",
    "8:00 م",
    "7:00 م",
    "6:00 م"
  ];

  final List<int> reservedSlots = [2, 3, 8];
  final List<int> extraCostSlots = [10, 11, 12, 13];

  List<int> selectedSlots = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 350.h,
      child: Column(
        children: [
          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 8.w,
                mainAxisSpacing: 8.h,
                childAspectRatio: 1.2.sp,
              ),
              itemCount: availableTimeSlots.length,
              itemBuilder: (context, index) {
                final bool isBooked = reservedSlots.contains(index);
                final bool isSelected = selectedSlots.contains(index);
                final bool isNight = extraCostSlots.contains(index);

                return GestureDetector(
                  onTap: () {
                    if (!isBooked) {
                      setState(() {
                        isSelected ? selectedSlots.remove(index) : selectedSlots.add(index);
                      });
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isBooked
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
                        Text(
                          availableTimeSlots[index],
                          style: TextStyle(
                            color: isBooked ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (isNight)
                          const Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Icon(Icons.nightlight_round, color: Colors.amber, size: 18),
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildLegend('Morning period', Colors.white),
              _buildLegend('Reserved time', Colors.grey[400]!),
              _buildLegend('Chosen time', Colors.green),
            ],
          ),
          verticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.nightlight_round, color: Colors.amber, size: 16),
              horizontalSpace(5),
              Text('Evening period', style: TextStyles.font14Dark400),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildLegend(String text, Color color) {
    return Row(
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: Colors.black12),
          ),
        ),
        const SizedBox(width: 5),
        Text(text, style: TextStyles.font14Dark400),
      ],
    );
  }
}
