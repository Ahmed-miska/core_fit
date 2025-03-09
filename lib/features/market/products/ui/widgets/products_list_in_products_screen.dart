import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/widgets/custom_refresh_indicator.dart';
import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsListInProductsScreen extends StatefulWidget {
  const ProductsListInProductsScreen({super.key});

  @override
  State<ProductsListInProductsScreen> createState() => _ProductsListInProductsScreenState();
}

class _ProductsListInProductsScreenState extends State<ProductsListInProductsScreen> {
  ScrollController scrollController = ScrollController();
  @override
  void initState() {
    scrollController.addListener(onScroll);
    super.initState();
  }

  onScroll() {
    if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
      if (!context.read<ProductsCubit>().hasReachedMax) {
        context.read<ProductsCubit>().getProducts();
      }
    }
  }

  @override
  void dispose() {
    scrollController.removeListener(onScroll);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return state.maybeWhen(
          productsLoading: () {
            return CustomShimmer(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.5.sp,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) => ProductItem(
                    productModel: Product(id: 0, name: '', description: '', price: 0, images: [], offer: 10),
                  ),
                ),
              ),
            );
          },
          productsSuccess: (products) {
            return products.isEmpty
                ? const Center(child: Text('No products'))
                : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomRefreshIndicator(
                      onRefresh: () {
                        context.read<ProductsCubit>().reset();
                      },
                      child: GridView.builder(
                        controller: scrollController,
                        physics: const BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.6,
                          crossAxisSpacing: 10.w,
                          mainAxisSpacing: 10.h,
                        ),
                        itemCount: context.read<ProductsCubit>().hasReachedMax ? products.length : products.length + 1,
                        itemBuilder: (context, index) => index == products.length
                            ? const Center(child: CircularProgressIndicator(color: AppColors.main))
                            : ProductItem(
                                productModel: products[index],
                              ),
                      ),
                    ),
                  );
          },
          productsError: (error) {
            return Center(child: Text(error));
          },
          orElse: () {
            return SizedBox.shrink();
          },
        );
      },
    );
  }
}
