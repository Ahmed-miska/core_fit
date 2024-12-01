import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/market/product_details/ui/widgets/amount_row.dart';
import 'package:core_fit/features/market/product_details/ui/widgets/price_container.dart';
import 'package:flutter/material.dart';

class PriceAndAmountContainer extends StatelessWidget {
  const PriceAndAmountContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.lightGrey,
      ),
      child: Column(
        children: [
          const PriceContainer(),
          verticalSpace(12),
          const AmountRow(),
        ],
      ),
    );
  }
}
