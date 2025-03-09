import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_home/logic/favorite/favorite_cubit.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    getIt<FavoriteCubit>().getFavourites();
    return Scaffold(
      appBar: const CustomAppBar(title: 'Favorite'),
      body: Padding(
        padding: mainPadding(),
        child: BlocBuilder<FavoriteCubit, FavoriteState>(
          bloc: getIt<FavoriteCubit>(),
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => CustomShimmer(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: 0.45.sp,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) => ProductItem(productModel: Product(
                    id: index,
                    name: '',
                    description: '',
                    price: 0,
                    images: [],
                    offer: 10,
                  )),
                ),
              ),
              success: (products) => products.isEmpty
                  ? const Center(child: Text('No products'))
                  : GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 0.45.sp,
                      ),
                      itemCount: products.length,
                      itemBuilder: (context, index) => ProductItem(productModel: products[index]),
                    ),
              error: (error) => Center(child: Text(error)),
              orElse: () => const SizedBox(),
            );
          },
        ),
      ),
    );
  }
}
