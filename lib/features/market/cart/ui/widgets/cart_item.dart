import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/market/cart/ui/widgets/amount_and_total_price_cart_item.dart';
import 'package:core_fit/features/market/cart/ui/widgets/image_and_description_cart_item.dart';
import 'package:core_fit/features/market/market_home/data/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  final ProductModel productModel;
  const CartItem({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 150.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.inputStroke, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageAndDescriptionCartItem(productModel: productModel),
          AmountAndTotalPriceCartItem(productModel: productModel),
        ],
      ),
    );
  }
}
