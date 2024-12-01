import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsOfStoreListView extends StatelessWidget {
  const ProductsOfStoreListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      crossAxisAlignment: WrapCrossAlignment.center,
      runAlignment: WrapAlignment.center,
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
    );
  }
}
