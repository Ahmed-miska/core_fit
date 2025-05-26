import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/market/market_orders/logic/cubit/orders_cubit.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/order_container.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/states_of_orders_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MarketOrdersScreen extends StatefulWidget {
  const MarketOrdersScreen({super.key});

  @override
  State<MarketOrdersScreen> createState() => _MarketOrdersScreenState();
}

class _MarketOrdersScreenState extends State<MarketOrdersScreen> {
  @override
  void initState() {
    context.read<OrdersCubit>().getOrders('current');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        return Padding(
          padding: mainPadding(),
          child: Column(
            children: [
              verticalSpace(10),
              const StatesOfOrdersButtons(),
              verticalSpace(20),
              Expanded(
                child: state.maybeWhen(
                  initial: () => const SizedBox(),
                  getOrdersLoading: () => const Center(
                      child: CircularProgressIndicator(
                    color: AppColors.main,
                  )),
                  getOrdersSuccess: (orders) => orders.isEmpty
                      ? const Center(child: Text('No orders found'))
                      : ListView.builder(
                          itemBuilder: (context, index) {
                            final order = orders[index];
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: OrderContainer(
                                order: order,
                              ),
                            );
                          },
                          itemCount: orders.length,
                        ),
                  getOrdersFailure: (error) => Center(child: Text(error)),
                  orElse: () {
                    return const Center(child: Text('Something went wrong'));
                  },
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
