import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/function.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/add_favorite_icon.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/features/market/market_home/logic/favorite/favorite_cubit.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/offer_padge.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  final Product productModel;
  const ProductItem({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.productDetailsScreen, arguments: productModel.id);
      },
      child: Container(
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
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: CustomCachedImage(imageUrl: productModel.images!.isEmpty ? '' : productModel.images!.first),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: AddFavoriteIcon(
                      onTap: () async {
                        await getIt<FavoriteCubit>().toggleFavorite(productModel.id!, productModel.favourite!);
                      },
                      isFavorite: productModel.favourite ?? false,
                    ),
                  ),
                  productModel.offer != 0 ? Align(alignment: Alignment.topLeft, child: OfferPadge(title: productModel.offer.toString())) : const SizedBox(),
                ],
              ),
            ),
            verticalSpace(8),
            Text(productModel.description ?? '', style: TextStyles.font14Dark400, maxLines: 2),
            const Spacer(),
            Text(productModel.name ?? '', style: TextStyles.font12Main600),
            verticalSpace(8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(calculateNewPrice(productModel.price!, productModel.offer!).toString(), style: TextStyles.font16Dark700),
                horizontalSpace(4),
                Text('EG', style: TextStyles.font12Dark400),
                horizontalSpace(6),
                productModel.offer != 0 ? Text(productModel.price.toString(), style: TextStyles.font12Gray400.copyWith(decoration: TextDecoration.lineThrough)) : const SizedBox(),
                horizontalSpace(4),
                productModel.offer != 0 ? Text('EG', style: TextStyles.font12Gray400.copyWith(decoration: TextDecoration.lineThrough)) : const SizedBox(),
                const Spacer(),
                SizedBox(
                  height: 35.h,
                  width: 35.h,
                  child: IconButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      elevation: WidgetStateProperty.all(0),
                      shape: WidgetStateProperty.all(const CircleBorder()),
                      side: WidgetStateProperty.all(const BorderSide(color: AppColors.main, width: 2)),
                    ),
                    padding: EdgeInsets.zero,
                    icon: Icon(Icons.shopping_cart, color: AppColors.main, size: 18.h),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
