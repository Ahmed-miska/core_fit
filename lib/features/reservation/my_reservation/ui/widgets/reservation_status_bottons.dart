import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/states_of_orders_buttons.dart';
import 'package:core_fit/features/reservation/my_reservation/logic/cubit/reservations_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocBuilder<ReservationsCubit, ReservationsState>(
      bloc: getIt<ReservationsCubit>(),
      //  buildWhen: (previous, current) => previous is Re || current is ReservationsSuccess || current is ReservationsLoading,
      builder: (context, state) {
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
                    getIt<ReservationsCubit>().getReservations('current');
                  }),
              horizontalSpace(10),
              OrdersStateButton(
                  text: 'Previous',
                  isActive: currentIndex == 1,
                  onTap: () {
                    setState(() {
                      currentIndex = 1;
                    });
                    getIt<ReservationsCubit>().getReservations('previous');
                  }),
            ],
          ),
        );
      },
    );
  }
}
