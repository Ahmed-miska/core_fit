import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/market/cart/ui/widgets/cart_item.dart';
import 'package:core_fit/features/market/cart/ui/widgets/total_price_and_order_now_button.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Cart'),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: mainPadding(),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: CartItem(
                      productModel: testProducts[index],
                    ),
                  );
                },
                itemCount: testProducts.length,
              ),
            ),
          ),
          TotalPriceAndOrderNowButton(
            onPressed: () {
              context.pushNamed(Routes.invoiceScreen);
            },
          ),
        ],
      ),
    );
  }
}
