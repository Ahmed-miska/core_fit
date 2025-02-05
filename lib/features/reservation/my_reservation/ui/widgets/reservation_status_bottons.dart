import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/states_of_orders_buttons.dart';
import 'package:flutter/material.dart';

class ReservationStatusBottons extends StatefulWidget {
  const ReservationStatusBottons({
    super.key,
  });

  @override
  State<ReservationStatusBottons> createState() => _ReservationStatusBottonsState();
}

class _ReservationStatusBottonsState extends State<ReservationStatusBottons> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.lightGrey,
        boxShadow: [
          BoxShadow(
            color: AppColors.dark.withOpacity(.1),
            blurRadius: 2,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Row(
        children: [
          OrdersStateButton(
              text: 'Current',
              isActive: currentIndex == 0,
              onTap: () {
                setState(() {
                  currentIndex = 0;
                });
              }),
          horizontalSpace(10),
          OrdersStateButton(
              text: 'Previous',
              isActive: currentIndex == 1,
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
              }),
          horizontalSpace(10),
          OrdersStateButton(
              text: 'Your',
              isActive: currentIndex == 2,
              onTap: () {
                setState(() {
                  currentIndex = 2;
                });
              }),
        ],
      ),
    );
  }
}
