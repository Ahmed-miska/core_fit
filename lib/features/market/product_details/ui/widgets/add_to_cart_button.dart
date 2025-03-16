import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/loading_widget.dart';
import 'package:core_fit/features/market/cart/logic/cubit/cart_cubit.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductsCubit>();
    return BlocBuilder<CartCubit, CartState>(
      bloc: getIt<CartCubit>(),
      builder: (context, state) {
        return ElevatedButton(
          onPressed: () async {
            loadingDialog(context);
            await getIt<CartCubit>().addCartItem(cubit.product!.id!, cubit.productAmount);
            getIt<CartCubit>().state.maybeWhen(
                  addSuccess: (data) {
                    context.pop();
                  },
                  addError: (error) {
                    context.pop();
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: AppColors.white,
                          title: Text('Error', style: TextStyles.font28Dark700),
                          content: Text('You can\'t add items from another market. Remove existing cart items first.', style: TextStyles.font14Dark400),
                          actions: [
                            TextButton(
                              child: const Text('Cancel', style: TextStyle(color: AppColors.red)),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: const Text('OK', style: TextStyle(color: AppColors.main)),
                              onPressed: () async {
                                loadingDialog(context);
                                await getIt<CartCubit>().deleteCartItem();
                                getIt<CartCubit>().state.maybeWhen(
                                  deleteSuccess: (data) async {
                                    await getIt<CartCubit>().addCartItem(cubit.product!.id!, cubit.productAmount);
                                    // ignore: use_build_context_synchronously
                                    context.pop();
                                    // ignore: use_build_context_synchronously
                                    context.pop();
                                  },
                                  deleteError: (error) {
                                    context.pop();
                                  },
                                  orElse: () {
                                    context.pop();
                                  },
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  orElse: () {},
                );
          },
          style: ButtonStyle(
            padding: WidgetStateProperty.all(const EdgeInsets.all(10)),
            backgroundColor: WidgetStateProperty.all(AppColors.main),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          ),
          child: Row(
            children: [
              Text('Add to cart', style: TextStyles.font16White700),
              horizontalSpace(8),
              // ignore: deprecated_member_use
              SvgPicture.asset(Assets.ordersGreen, color: AppColors.white),
            ],
          ),
        );
      },
    );
  }
}
