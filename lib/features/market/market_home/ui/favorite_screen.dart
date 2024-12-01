import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            productModel: testProducts[index],
          ),
        ),
      ),
    );
  }
}
