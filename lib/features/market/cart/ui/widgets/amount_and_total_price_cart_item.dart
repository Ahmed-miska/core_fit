import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/increase_or_decrese_icon.dart';
import 'package:core_fit/features/market/market_home/data/product_model.dart';
import 'package:flutter/material.dart';

class AmountAndTotalPriceCartItem extends StatelessWidget {
  final ProductModel productModel;
  const AmountAndTotalPriceCartItem({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IncreaseOrDecreseIcon(
          onTap: () {},
          isIncrease: true,
          color: AppColors.lightGrey,
        ),
        horizontalSpace(8),
        Text('1', style: TextStyles.font16Dark700),
        horizontalSpace(8),
        IncreaseOrDecreseIcon(
          onTap: () {},
          isIncrease: false,
          color: AppColors.lightGrey,
        ),
        horizontalSpace(8),
        Text('Total : ', style: TextStyles.font14Dark400),
        horizontalSpace(8),
        Text('${productModel.price} EG', style: TextStyles.font16Dark700),
        const Spacer(),
        InkWell(
          onTap: () {
            removeItemFromCartDialog(context);
          },
          child: const Icon(Icons.delete_forever_outlined, color: AppColors.red),
        ),
      ],
    );
  }

  Future<dynamic> removeItemFromCartDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          title: const Text('Are you sure?'),
          content: const Text('You want to remove this item from cart?'),
          actions: [
            TextButton(
              child: const Text('No', style: TextStyle(color: AppColors.main)),
              onPressed: () {},
            ),
            TextButton(
              child: const Text('Yes', style: TextStyle(color: AppColors.red)),
              onPressed: () {
                context.pop();
              },
            )
          ],
        );
      },
    );
  }
}
