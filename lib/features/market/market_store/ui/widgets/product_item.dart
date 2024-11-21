import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/add_favorite_icon.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/features/market/market_home/data/product_model.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/offer_padge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  final ProductModel productModel;
  const ProductItem({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 6.w),
      width: 170.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.lightGrey, width: 1),
        color: AppColors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.inputHint,
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(borderRadius: BorderRadius.circular(8), child: CustomCachedImage(imageUrl: productModel.image)),
                Align(alignment: Alignment.topRight, child: AddFavoriteIcon(isFavorite: productModel.isFavorite)),
                productModel.isOffer ? Align(alignment: Alignment.topLeft, child: OfferPadge(title: productModel.discount)) : const SizedBox(),
              ],
            ),
          ),
          verticalSpace(8),
          Text(productModel.title, style: TextStyles.font14Dark400, maxLines: 2),
          const Spacer(),
          Text(productModel.type, style: TextStyles.font12Main600),
          verticalSpace(8),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(productModel.price, style: TextStyles.font16Dark700),
                horizontalSpace(4),
                Text(productModel.currency, style: TextStyles.font12Dark400),
                horizontalSpace(6),
                productModel.isOffer ? Text(productModel.oldPrice, style: TextStyles.font12Gray400.copyWith(decoration: TextDecoration.lineThrough)) : const SizedBox(),
                horizontalSpace(4),
                productModel.isOffer ? Text(productModel.currency, style: TextStyles.font12Gray400.copyWith(decoration: TextDecoration.lineThrough)) : const SizedBox(),
                const Spacer(),
                SizedBox(
                  height: 35,
                  width: 35,
                  child: IconButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: WidgetStateProperty.all(0),
                      shape: WidgetStateProperty.all(const CircleBorder()),
                      side: WidgetStateProperty.all(const BorderSide(color: AppColors.main, width: 2)),
                    ),
                    padding: EdgeInsets.zero,
                    icon: const Icon(Icons.shopping_cart, color: AppColors.main),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
