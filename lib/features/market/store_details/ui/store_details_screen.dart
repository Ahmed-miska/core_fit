import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/custom_search_bar.dart';
import 'package:core_fit/features/market/store_details/ui/widgets/products_of_store_list_view.dart';
import 'package:core_fit/features/market/store_details/ui/widgets/store_image_and_title.dart';
import 'package:core_fit/features/market/store_details/ui/widgets/types_items_in_store_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreDetailsScreen extends StatelessWidget {
  const StoreDetailsScreen({super.key});

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
            Padding(padding: mainPadding(), child: const CustomSearchBar()),
            verticalSpace(20),
            const ProductsOfStoreListView(),
          ],
        ),
      ),
    );
  }
}
