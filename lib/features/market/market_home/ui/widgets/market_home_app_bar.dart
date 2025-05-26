import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/market/cart/logic/cubit/cart_cubit.dart';
import 'package:core_fit/features/market/market_home/logic/favorite/favorite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class MarketHomeAppBar extends StatefulWidget {
  const MarketHomeAppBar({
    super.key,
  });

  @override
  State<MarketHomeAppBar> createState() => _MarketHomeAppBarState();
}

class _MarketHomeAppBarState extends State<MarketHomeAppBar> {
  int cartCount = 0;
  int favouriteCount = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 110, height: 20, child: SvgPicture.asset(Assets.appName, fit: BoxFit.fill)),
        const Spacer(),
        InkWell(
          onTap: () {
            context.pushNamed(Routes.cartScreen);
          },
          child: BlocListener<CartCubit, CartState>(
            bloc: getIt<CartCubit>(),
            listener: (context, state) {
              state.maybeWhen(
                success: (success) {
                  cartCount = success.data!.products?.length ?? 0;
                  setState(() {});
                },
                orElse: () {},
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.lightGrey,
              ),
              child: cartCount == 0
                  ? SvgPicture.asset(Assets.cart)
                  : Badge.count(
                      count: cartCount,
                      padding: const EdgeInsets.all(1),
                      backgroundColor: AppColors.main,
                      child: SvgPicture.asset(Assets.cart),
                    ),
            ),
          ),
        ),
        horizontalSpace(8),
        InkWell(
          onTap: () {
            context.pushNamed(Routes.favoriteScreen);
          },
          child: BlocListener<FavoriteCubit, FavoriteState>(
            bloc: getIt<FavoriteCubit>(),
            listener: (context, state) {
              state.maybeWhen(
                success: (success) {
                  favouriteCount = success.length;
                  setState(() {});
                },
                orElse: () {},
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.lightGrey,
              ),
              child: favouriteCount == 0
                  ? SvgPicture.asset(Assets.favorite)
                  : Badge.count(
                      count: favouriteCount,
                      padding: const EdgeInsets.all(1),
                      backgroundColor: AppColors.main,
                      child: SvgPicture.asset(
                        Assets.favorite,
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
