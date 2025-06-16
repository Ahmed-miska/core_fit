import 'package:core_fit/core/helpers/function.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PriceContainer extends StatelessWidget {
  const PriceContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.white,
      ),
      child: BlocBuilder<ProductsCubit, ProductsState>(
        buildWhen: (previous, current) => current is ProductByIdLoading || current is ProductByIdSuccess || current is ProductByIdError,
        builder: (context, state) {
          return Row(
            children: [
              Text('Price : ', style: TextStyles.font12Dark600),
              const Spacer(),
              Text(state.maybeWhen(productByIdSuccess: (product) => product.product!.offer != 0 ? product.product!.price.toString() : '', orElse: () => ''),
                  style: TextStyles.font12Gray400.copyWith(decoration: TextDecoration.lineThrough)),
              horizontalSpace(4),
              Text(state.maybeWhen(productByIdSuccess: (product) => product.product!.offer != 0 ? 'EG' : '', orElse: () => ''),
                  style: TextStyles.font12Gray400.copyWith(decoration: TextDecoration.lineThrough)),
              horizontalSpace(6),
              Text(state.maybeWhen(productByIdSuccess: (product) => calculateNewPrice(product.product!.price ?? 0, product.product!.offer ?? 0).toString(), orElse: () => ''),
                  style: TextStyles.font16Dark700),
              horizontalSpace(4),
              Text('EG', style: TextStyles.font12Dark400),
            ],
          );
        },
      ),
    );
  }
}
