import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/loading_widget.dart';
import 'package:core_fit/features/reservation/reservation_details/ui/widgets/reservation_details_container.dart';
import 'package:core_fit/features/reservation/staduims/logic/play_grounds_cubit/playgrounds_cubit.dart';
import 'package:core_fit/features/reservation/staduims/ui/widgets/staduim_item_in_staduims_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReservationBookingDetailsScreenTwo extends StatelessWidget {
  const ReservationBookingDetailsScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reservation'),
      body: Padding(
        padding: mainPadding(),
        child: BlocBuilder<PlaygroundsCubit, PlaygroundsState>(
          bloc: context.read<PlaygroundsCubit>(),
          builder: (context, state) {
            final cubit = context.read<PlaygroundsCubit>();
            return ListView(
              children: [
                StaduimItemInStaduimsScreen(
                  playground: cubit.playgroundModel!,
                ),
                verticalSpace(10),
                ReservationDetailsContainer(
                  cubit: cubit,
                ),
                verticalSpace(10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.lightGrey,
                  ),
                  child: Column(
                    children: [
                      AppTextButton(
                        text: 'Confirm And Pay',
                        onTap: () async {
                          showModalBottomSheet(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                            ),
                            builder: (context) => PaymentMethodSheet(
                              onSelect: (paymentMethod) async {
                                Navigator.pop(context); // Close BottomSheet
                                await cubit.bookReservation(paymentMethod); // Pass payment method
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                verticalSpace(20),
                ReserblocLosterner(),
              ],
            );
          },
        ),
      ),
    );
  }
}

class ReserblocLosterner extends StatelessWidget {
  const ReserblocLosterner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<PlaygroundsCubit, PlaygroundsState>(
      listenWhen: (previous, current) => current is ReserveSuccess || current is ReserveError || current is ReserveLoading,
      listener: (context, state) {
        state.maybeWhen(reserveSuccess: () {
          context.pop();
          context.pushNamedAndRemoveUntil(Routes.sportsHomeScreen, predicate: (Route<dynamic> route) {
            return false;
          });
        }, reserveLoading: () {
          loadingDialog(context);
        }, reserveError: (error) {
          context.pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(error),
              behavior: SnackBarBehavior.floating,
              backgroundColor: AppColors.red,
              duration: const Duration(seconds: 3),
              dismissDirection: DismissDirection.up,
              elevation: 0,
            ),
          );
        }, orElse: () {
          return null;
        });
      },
      child: SizedBox.shrink(),
    );
  }
}

class PaymentMethodSheet extends StatelessWidget {
  final Function(String) onSelect;

  const PaymentMethodSheet({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Choose Payment Method', style: TextStyles.font12Dark400),
          verticalSpace(20),
          AppTextButton(
            text: 'Pay with Wallet',
            onTap: () => onSelect('WALLET'),
          ),
          verticalSpace(10),
          AppTextButton(
            text: 'Pay with Cash',
            onTap: () => onSelect('CASH_ON_DELIVERY'),
          ),
        ],
      ),
    );
  }
}
