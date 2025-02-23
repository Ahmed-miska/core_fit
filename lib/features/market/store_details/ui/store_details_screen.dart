import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/custom_search_bar.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:core_fit/features/market/store_details/ui/widgets/products_of_store_list_view.dart';
import 'package:core_fit/features/market/store_details/ui/widgets/store_image_and_title.dart';
import 'package:core_fit/features/market/store_details/ui/widgets/types_items_in_store_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreDetailsScreen extends StatefulWidget {
  const StoreDetailsScreen({super.key});

  @override
  State<StoreDetailsScreen> createState() => _StoreDetailsScreenState();
}

class _StoreDetailsScreenState extends State<StoreDetailsScreen> {
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
    return Scaffold(
      appBar: const CustomAppBar(title: 'Store'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: mainPadding(), child: const StoreImageAndTitle()),
            verticalSpace(20),
            SizedBox(height: 35.h, child: const TypesItemsInStoreListView()),
            verticalSpace(20),
            Padding(
              padding: mainPadding(),
              child: CustomSearchBar(
                controller: context.read<ProductsCubit>().searchController,
                onSearch: () {
                  context.read<ProductsCubit>().reset();
                },
                onClear: () {
                  context.read<ProductsCubit>().searchController.clear();
                  context.read<ProductsCubit>().reset();
                },
              ),
            ),
            verticalSpace(20),
            Padding(
              padding: mainPadding(),
              child: const ProductsOfStoreListView(),
            ),
          ],
        ),
      ),
    );
  }
}
