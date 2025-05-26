import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/market/market_orders/logic/cubit/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatesOfOrdersButtons extends StatefulWidget {
  const StatesOfOrdersButtons({
    super.key,
  });

  @override
  State<StatesOfOrdersButtons> createState() => _StatesOfOrdersButtonsState();
}

class _StatesOfOrdersButtonsState extends State<StatesOfOrdersButtons> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.lightGrey,
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
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
                context.read<OrdersCubit>().getOrders('current');
              }),
          OrdersStateButton(
              text: 'Previous',
              isActive: currentIndex == 1,
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
                context.read<OrdersCubit>().getOrders('previous');
              }),
        ],
      ),
    );
  }
}

class OrdersStateButton extends StatelessWidget {
  final String text;
  final bool isActive;
  final Function()? onTap;
  const OrdersStateButton({
    super.key,
    required this.text,
    required this.isActive,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: AnimatedContainer(
          padding: const EdgeInsets.all(16),
          duration: const Duration(milliseconds: 300),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: isActive ? AppColors.main : null,
          ),
          child: Center(child: Text(text, style: isActive ? TextStyles.font16White700 : TextStyles.font16Dark700)),
        ),
      ),
    );
  }
}
