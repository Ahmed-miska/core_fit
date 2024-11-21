import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarketHomeProductsListView extends StatelessWidget {
  const MarketHomeProductsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: testProducts.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: ProductItem(
            productModel: testProducts[index],
          ),
        );
      },
    );
  }
}
