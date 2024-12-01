import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/features/market/market_home/data/product_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageAndDescriptionCartItem extends StatelessWidget {
  final ProductModel productModel;
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
          height: 70.h,
          width: 70.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: CustomCachedImage(imageUrl: productModel.image),
          ),
        ),
        horizontalSpace(12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productModel.title,
                style: TextStyles.font14Dark400,
                maxLines: 2,
              ),
              verticalSpace(8),
              Text(productModel.type, style: TextStyles.font12Main600),
              verticalSpace(8),
              Text('${productModel.price} EG', style: TextStyles.font14Dark400),
            ],
          ),
        ),
      ],
    );
  }
}
