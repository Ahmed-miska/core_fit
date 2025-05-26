import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/market/market_orders/logic/cubit/orders_cubit.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/order_status_in_details_order.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/orderr_details_container_in_details_order.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/total_price_and_details_in_details_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OrderDetailsScreen extends StatefulWidget {
  final int ordrId;
  const OrderDetailsScreen({super.key, required this.ordrId});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<OrdersCubit>().getOrderDetails(widget.ordrId);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Order Details'),
      body: SingleChildScrollView(
        child: BlocBuilder<OrdersCubit, OrdersState>(
          builder: (context, state) {
            return state.maybeWhen(
              initial: () => const SizedBox(),
              getOrderDetailsLoading: () => const Center(
                  child: CircularProgressIndicator(
                color: AppColors.main,
              )),
              getOrderDetailsFailure: (error) => Center(child: Text(error)),
              getOrderDetailsSuccess: (order) {
                print(order.additionalInfo);
                return Column(
                  children: [
                    Padding(
                      padding: mainPadding(),
                      child:  OrderStatusInDetailsOrder(order: order,),
                    ),
                    // verticalSpace(15),
                    // const OrderItemsListInDetailsOrder(),
                    verticalSpace(12),
                    Padding(
                      padding: mainPadding(),
                      child: OrderDetailsContainerInDetailsOrder(order: order),
                    ),
                    verticalSpace(12),
                    Padding(
                      padding: mainPadding(),
                      child: TotalPriceAndDetailsInDetailsOrder(
                        order: order,
                      ),
                    ),
                    verticalSpace(12),
                  ],
                );
              },
              orElse: () => const Center(child: Text('No orders found')),
            );
            // if (state is GetOrderDetailsLoading) return const Center(child: CircularProgressIndicator());
            // if (state is GetOrderDetailsFailure) return Center(child: Text(state.error));
            // return Column(
            //   children: [
            //     Padding(
            //       padding: mainPadding(),
            //       child: const OrderStatusInDetailsOrder(),
            //     ),
            //     // verticalSpace(15),
            //     // const OrderItemsListInDetailsOrder(),
            //     verticalSpace(12),
            //     Padding(
            //       padding: mainPadding(),
            //       child:  OrderDetailsContainerInDetailsOrder(),
            //     ),
            //     verticalSpace(12),
            //     Padding(
            //       padding: mainPadding(),
            //       child: const TotalPriceAndDetailsInDetailsOrder(),
            //     ),
            //     verticalSpace(12),
            //   ],
            // );
          },
        ),
      ),
    );
  }
}
