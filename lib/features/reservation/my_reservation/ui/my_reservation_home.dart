import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/reservation/my_reservation/logic/cubit/reservations_cubit.dart';
import 'package:core_fit/features/reservation/my_reservation/ui/widgets/my_reservation_list_item.dart';
import 'package:core_fit/features/reservation/my_reservation/ui/widgets/reservation_status_bottons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyReservationHome extends StatefulWidget {
  const MyReservationHome({super.key});

  @override
  State<MyReservationHome> createState() => _MyReservationHomeState();
}

class _MyReservationHomeState extends State<MyReservationHome> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getIt<ReservationsCubit>().getReservations('current');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationsCubit, ReservationsState>(
      bloc: getIt<ReservationsCubit>(),
      // buildWhen: (previous, current) => current is Reservation || current is ReservationsSuccess || current is ReservationsLoading,
      builder: (context, state) {
        return Expanded(
          child: Padding(
            padding: mainPadding(),
            child: Column(
              children: [
                const ReservationStatusBottons(),
                verticalSpace(20),
                state.maybeWhen(
                    reservationsLoading: () => Expanded(
                          child: Center(
                              child: CircularProgressIndicator(
                            color: AppColors.main,
                          )),
                        ),
                    reservationsSuccess: (reservations) => reservations.isNotEmpty
                        ? Expanded(
                            child: ListView.builder(
                              itemCount: reservations.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.only(bottom: 16.h),
                                  child: InkWell(
                                    onTap: () {
                                      context.pushNamed(Routes.myReservationDetailsScreen, arguments: reservations[index]);
                                    },
                                    child: MyReservationListItem(
                                      reservationModel: reservations[index],
                                    ),
                                  ),
                                );
                              },
                            ),
                          )
                        : Expanded(child: const Center(child: Text('No reservations found'))),
                    reservationsError: (message) => Expanded(child: Center(child: Text(message))),
                    orElse: () => const SizedBox.shrink()),
              ],
            ),
          ),
        );
      },
    );
  }
}
