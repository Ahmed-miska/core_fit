import 'package:core_fit/core/helpers/function.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/features/market/cart/data/models/cart_response_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAndDescriptionCartItem extends StatelessWidget {
  final CartProduct productModel;
  const ImageAndDescriptionCartItem({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 90.h,
          width: 90.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CustomCachedImage(imageUrl: productModel.images!.isEmpty ? '' : productModel.images!.first),
          ),
        ),
        horizontalSpace(12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productModel.name ?? '',
                style: TextStyles.font14Dark400,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              verticalSpace(8),
              Text(productModel.subCategoryName ?? '', style: TextStyles.font12Main600, maxLines: 1),
              verticalSpace(8),
              Row(
                children: [
                  Text('${calculateNewPrice(productModel.price ?? 0, productModel.offer ?? 0)} EG', style: TextStyles.font14Dark400),
                  const Spacer(),
                  productModel.offer != 0
                      ? Text('${productModel.price} EG', style: TextStyles.font14Dark400.copyWith(color: AppColors.red, decoration: TextDecoration.lineThrough))
                      : Text('', style: TextStyles.font14Dark400),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
