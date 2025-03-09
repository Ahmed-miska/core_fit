import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_store/data/models/categories_response_model.dart';
import 'package:core_fit/features/market/market_store/data/models/markets_response_model.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsOfStoreListView extends StatelessWidget {
  const ProductsOfStoreListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return state.maybeWhen(
          productsLoading: () {
            return CustomShimmer(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ProductItem(
                    productModel: Product(
                      id: 0,
                      name: '',
                      description: '',
                      price: 0,
                      images: [],
                      offer: 10,
                     
                    ),
                  );
                },
              ),
            );
          },
          productsSuccess: (products) {
            return products.isEmpty
                ? const Center(child: Text('No products'))
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.45.sp,
                      crossAxisSpacing: 10.w,
                      mainAxisSpacing: 10.h,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductItem(
                        productModel: products[index],
                      );
                    },
                  );
          },
          productsError: (message) {
            return Center(child: Text(message));
          },
          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }
}
