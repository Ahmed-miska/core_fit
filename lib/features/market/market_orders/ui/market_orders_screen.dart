import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/order_container.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/states_of_orders_buttons.dart';
import 'package:flutter/material.dart';

class MarketOrdersScreen extends StatelessWidget {
  const MarketOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainPadding(),
      child: Column(
        children: [
          verticalSpace(10),
          const StatesOfOrdersButtons(),
          verticalSpace(20),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: OrderContainer(),
                );
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
