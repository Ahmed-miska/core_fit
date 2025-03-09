import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionAndSubCat extends StatelessWidget {
  const DescriptionAndSubCat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return state.maybeWhen(
          productByIdLoading: () => SizedBox(
            height: 100.h,
            child: CustomShimmer(
              child: Column(children: [Text(''), Spacer(), Text('')]),
            ),
          ),
          productByIdSuccess: (product) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.product!.subCategory!.name ?? '', style: TextStyles.font12Main600),
                verticalSpace(10),
                Text(product.product!.description ?? '', style: TextStyles.font12Gray400),
              ],
            );
          },
          productByIdError: (error) => Center(child: Text(error)),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
