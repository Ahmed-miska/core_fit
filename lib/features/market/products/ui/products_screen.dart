import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/custom_search_bar.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:core_fit/features/market/stores/ui/widgets/types_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Products'),
      body: Column(
        children: [
          SizedBox(height: 35.h, child: const TypesItemsListView()),
          verticalSpace(16),
          const Padding(padding: EdgeInsets.all(8.0), child: CustomSearchBar()),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                runSpacing: 10.h,
                spacing: 10.w,
                children: List.generate(
                  testProducts.length,
                  (index) => Container(
                    color: AppColors.mainBG,
                    width: 170.w,
                    height: 300.h,
                    child: ProductItem(productModel: testProducts[index]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
