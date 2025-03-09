import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/features/market/market_store/data/models/categories_response_model.dart';
import 'package:core_fit/features/market/market_store/data/models/markets_response_model.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../products/data/models/products_response_model.dart';

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
            child: ProductItem(productModel: Product(
              id: index,
              name: 'Product $index',
              description: 'Description $index',
              price: 100,
              images: ['uploads/ea93cb40-7286-4b1e-9129-2af05e68820d_1.jpg'],
              offer: 10,
             
            )),
          );
        },
      ),
    );
  }
}
