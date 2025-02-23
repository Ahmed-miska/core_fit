import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/custom_search_bar.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:core_fit/features/market/products/ui/widgets/products_list_in_products_screen.dart';
import 'package:core_fit/features/market/stores/ui/widgets/types_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Products'),
      body: Column(
        children: [
          SizedBox(
            height: 35.h,
            child: TypesItemsListView(
              onCategorySelected: (id) {
                context.read<ProductsCubit>().categoryId = id;
                context.read<ProductsCubit>().reset();
              },
            ),
          ),
          verticalSpace(16),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomSearchBar(
                controller: context.read<ProductsCubit>().searchController,
                onSearch: () {
                  context.read<ProductsCubit>().reset();
                },
                onClear: () {
                  context.read<ProductsCubit>().searchController.clear();
                  context.read<ProductsCubit>().reset();
                },
              )),
          Expanded(
            child: ProductsListInProductsScreen(),
          ),
        ],
      ),
    );
  }
}
