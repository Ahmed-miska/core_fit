import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/add_favorite_icon.dart';
import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/products/logic/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameAndFavorite extends StatelessWidget {
  const NameAndFavorite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return state.maybeWhen(
          productByIdLoading: () => CustomShimmer(
            child: Row(children: [Text('ddddddddddddd'), Spacer(), AddFavoriteIcon(isFavorite: false)]),
          ),
          productByIdSuccess: (product) {
            return Row(
              children: [
                Expanded(
                  child: AnimatedTextKit(
                    isRepeatingAnimation: false,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        product.product!.name ?? '',
                        textStyle: TextStyles.font16Dark700,
                      ),
                    ],
                  ),
                ),
                verticalSpace(10),
                const AddFavoriteIcon(isFavorite: false, isBorder: true),
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
