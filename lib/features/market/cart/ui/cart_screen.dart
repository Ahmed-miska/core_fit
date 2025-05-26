import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/market/cart/data/models/cart_response_model.dart';
import 'package:core_fit/features/market/cart/logic/cubit/cart_cubit.dart';
import 'package:core_fit/features/market/cart/ui/widgets/cart_item.dart';
import 'package:core_fit/features/market/cart/ui/widgets/total_price_and_order_now_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  void initState() {
    getIt<CartCubit>().getCart();
    super.initState();
  }

  List<CartProduct> cartProducts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Cart'),
      body: BlocConsumer<CartCubit, CartState>(
        bloc: getIt<CartCubit>(),
        listener: (context, state) {
          state.maybeWhen(
            success: (success) {
              cartProducts = success.data!.products ?? [];
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          if (cartProducts.isEmpty) {
            return const Center(child: Text('No products in cart'));
          }
          return Column(
            children: [
              Expanded(
                child: Padding(
                  padding: mainPadding(),
                  child: state is Loading
                      ? const Center(child: CircularProgressIndicator(color: AppColors.main))
                      : ListView.builder(
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: CartItem(
                                productModel: cartProducts[index],
                              ),
                            );
                          },
                          itemCount: cartProducts.length,
                        ),
                ),
              ),
              TotalPriceAndOrderNowButton(
                totalPrice: state.maybeWhen(
                  addSuccess: (data) {
                    return data.data!.totalPrice ?? 0;
                  },
                  success: (data) {
                    return data.data!.totalPrice ?? 0;
                  },
                  orElse: () => 0,
                ),
                onPressed: () {
                  context.pushNamed(Routes.invoiceScreen);
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
