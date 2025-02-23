import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/market/market_store/data/models/markets_response_model.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../market_store/data/models/categories_response_model.dart';
import '../../products/data/models/products_response_model.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Favorite'),
      body: Padding(
        padding: mainPadding(),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 0.45.sp,
          ),
          itemCount: testProducts.length,
          itemBuilder: (context, index) => ProductItem(
            productModel: Product(
              id: index,
              name: 'Product $index',
              description: 'Description $index',
              price: 100,
              images: ['uploads/ea93cb40-7286-4b1e-9129-2af05e68820d_1.jpg'],
              offer: 10,
              market: Market(),
              subCategory: Category(),
            ),
          ),
        ),
      ),
    );
  }
}
