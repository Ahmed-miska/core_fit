import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarketHomeProductsListView extends StatelessWidget {
  const MarketHomeProductsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return state.maybeWhen(productsLoading: () {
          return CustomShimmer(
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: ProductItem(
                    productModel: Product(id: 0, name: '', description: '', price: 0, images: [], offer: 10,),
                  ),
                );
              },
            ),
          );
        }, productsSuccess: (products) {
          return products.isEmpty
              ? const Center(child: Text('No products'))
              : ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: ProductItem(
                        productModel: products[index],
                      ),
                    );
                  },
                );
        }, productsError: (error) {
          return Center(child: Text(error));
        }, orElse: () {
          return const SizedBox.shrink();
        });
      },
    );
  }
}
