import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/market/product_details/ui/widgets/description_and_sub_cat.dart';
import 'package:core_fit/features/market/product_details/ui/widgets/image_and_rating_container.dart';
import 'package:core_fit/features/market/product_details/ui/widgets/name_and_favorite.dart';
import 'package:core_fit/features/market/product_details/ui/widgets/price_and_amount_container.dart';
import 'package:core_fit/features/market/product_details/ui/widgets/total_price_and_add_to_cart_button.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Product'),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: mainPadding(),
              child: ListView(
                children: [
                  const ImageAndRatingContainer(),
                  verticalSpace(20),
                  const NameAndFavorite(),
                  verticalSpace(10),
                  DescriptionAndSubCat(),
                  verticalSpace(10),
                  const PriceAndAmountContainer(),
                  verticalSpace(20),
                ],
              ),
            ),
          ),
          const TotalPriceAndAddToCartButton(),
        ],
      ),
    );
  }
}
