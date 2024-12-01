import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/order_items_list_in_details_order.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/order_status_in_details_order.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/orderr_details_container_in_details_order.dart';
import 'package:core_fit/features/market/market_orders/ui/widgets/total_price_and_details_in_details_order.dart';
import 'package:flutter/material.dart';

class OrderDetailsScreen extends StatelessWidget {
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Order Details'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: mainPadding(),
              child: const OrderStatusInDetailsOrder(),
            ),
            verticalSpace(15),
            const OrderItemsListInDetailsOrder(),
            verticalSpace(12),
            Padding(
              padding: mainPadding(),
              child: const OrderDetailsContainerInDetailsOrder(),
            ),
            verticalSpace(12),
            Padding(
              padding: mainPadding(),
              child: const TotalPriceAndDetailsInDetailsOrder(),
            ),
            verticalSpace(12),
          ],
        ),
      ),
    );
  }
}
