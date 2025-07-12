import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/increase_or_decrese_icon.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AmountRow extends StatefulWidget {
  const AmountRow({
    super.key,
  });

  @override
  State<AmountRow> createState() => _AmountRowState();
}

class _AmountRowState extends State<AmountRow> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      buildWhen: (previous, current) => current is ProductByIdLoading || current is ProductByIdSuccess || current is ProductByIdError,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IncreaseOrDecreseIcon(
              onTap: () {
                setState(() {
                  amount++;
                });
                context.read<ProductsCubit>().productAmount = amount;
                context.read<ProductsCubit>().getTotalPriceOfProduct();
              },
              isIncrease: true,
            ),
            horizontalSpace(12),
            Text('$amount', style: TextStyles.font18Dark700),
            horizontalSpace(12),
            IncreaseOrDecreseIcon(
              onTap: () {
                setState(() {
                  if (amount > 1) amount--;
                });
                context.read<ProductsCubit>().productAmount = amount;
                context.read<ProductsCubit>().getTotalPriceOfProduct();
              },
              isIncrease: false,
            ),
          ],
        );
      },
    );
  }
}
