import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/add_favorite_icon.dart';
import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_home/logic/favorite/favorite_cubit.dart';
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
      buildWhen: (previous, current) => current is ProductByIdLoading || current is ProductByIdSuccess || current is ProductByIdError,
      builder: (context, state) {
        return state.maybeWhen(
          productByIdLoading: () => CustomShimmer(
            child: Row(children: [Text(''), Spacer(), AddFavoriteIcon(isFavorite: true)]),
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
                AddFavoriteIcon(
                    onTap: () => getIt<FavoriteCubit>().toggleFavorite(product.product!.id!, product.product!.favourite!), isFavorite: product.product!.favourite!, isBorder: true),
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
