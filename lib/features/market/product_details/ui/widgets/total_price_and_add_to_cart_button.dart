import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/market/product_details/ui/widgets/add_to_cart_button.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TotalPriceAndAddToCartButton extends StatelessWidget {
  const TotalPriceAndAddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 12,
            offset: const Offset(0, -2),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Text('Total Price : ', style: TextStyles.font12Dark600),
            horizontalSpace(8),
            BlocBuilder<ProductsCubit, ProductsState>(
              builder: (context, state) {
                return Text(
                  context.read<ProductsCubit>().productTotalPrice.toString(),
                  style: TextStyles.font16Dark700,
                );
              },
            ),
            horizontalSpace(4),
            Text('EG', style: TextStyles.font12Dark400),
            const Spacer(),
            const AddToCartButton(),
          ],
        ),
      ),
    );
  }
}
