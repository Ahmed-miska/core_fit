import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderItemsListInDetailsOrder extends StatelessWidget {
  const OrderItemsListInDetailsOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: testProducts.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: index == testProducts.length - 1 ? 16 : 8, left: index == 0 ? 16 : 0),
            child: ProductItem(productModel: testProducts[index]),
          );
        },
      ),
    );
  }
}
