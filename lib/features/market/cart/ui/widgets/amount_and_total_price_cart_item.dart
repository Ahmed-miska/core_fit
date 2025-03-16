import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/function.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/increase_or_decrese_icon.dart';
import 'package:core_fit/core/widgets/loading_widget.dart';
import 'package:core_fit/features/market/cart/data/models/cart_response_model.dart';
import 'package:core_fit/features/market/cart/logic/cubit/cart_cubit.dart';
import 'package:flutter/material.dart';

class AmountAndTotalPriceCartItem extends StatefulWidget {
  final CartProduct productModel;
  const AmountAndTotalPriceCartItem({
    super.key,
    required this.productModel,
  });

  @override
  State<AmountAndTotalPriceCartItem> createState() => _AmountAndTotalPriceCartItemState();
}

class _AmountAndTotalPriceCartItemState extends State<AmountAndTotalPriceCartItem> {
  final Debouncer _debouncer = Debouncer(milliseconds: 1000);

  void _updateCartItem(int newCount) {
    _debouncer.run(() {
      getIt<CartCubit>().addCartItem(widget.productModel.id!, newCount);
    });
  }

  @override
  void dispose() {
    _debouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IncreaseOrDecreseIcon(
          onTap: () {
            setState(() {
              widget.productModel.count = widget.productModel.count! + 1;
              widget.productModel.total = widget.productModel.count! * calculateNewPrice(widget.productModel.price!, widget.productModel.offer!);
            });
            _updateCartItem(widget.productModel.count!);
          },
          isIncrease: true,
          color: AppColors.lightGrey,
        ),
        horizontalSpace(8),
        Text('${widget.productModel.count}', style: TextStyles.font16Dark700),
        horizontalSpace(8),
        IncreaseOrDecreseIcon(
          onTap: () {
            if (widget.productModel.count! > 1) {
              setState(() {
                widget.productModel.count = widget.productModel.count! - 1;
                widget.productModel.total = widget.productModel.count! * calculateNewPrice(widget.productModel.price!, widget.productModel.offer!);
              });
              _updateCartItem(widget.productModel.count!);
            }
          },
          isIncrease: false,
          color: AppColors.lightGrey,
        ),
        horizontalSpace(8),
        Text('Total : ', style: TextStyles.font14Dark400),
        horizontalSpace(8),
        Expanded(
          child: Text(
            '${widget.productModel.total} EG',
            style: TextStyles.font16Dark700,
            maxLines: 1,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            removeItemFromCartDialog(context, widget.productModel.id!);
          },
          child: const Icon(Icons.delete_forever_outlined, color: AppColors.red),
        ),
      ],
    );
  }

  Future<dynamic> removeItemFromCartDialog(BuildContext context, int id) {
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
              onPressed: () {
                context.pop();
              },
            ),
            TextButton(
              child: const Text('Yes', style: TextStyle(color: AppColors.red)),
              onPressed: () async {
                loadingDialog(context);
                await getIt<CartCubit>().addCartItem(id, 0);
                // ignore: use_build_context_synchronously
                context.pop();
                // ignore: use_build_context_synchronously
                context.pop();
              },
            )
          ],
        );
      },
    );
  }
}
