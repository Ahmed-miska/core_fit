import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MarketHomeAppBar extends StatelessWidget {
  const MarketHomeAppBar({
    super.key,
  });

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
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.lightGrey,
            ),
            child: Badge.count(
              count: 3,
              padding: const EdgeInsets.all(1),
              backgroundColor: AppColors.main,
              child: SvgPicture.asset(Assets.cart),
            ),
          ),
        ),
        horizontalSpace(8),
        InkWell(
          onTap: () {
            context.pushNamed(Routes.favoriteScreen);
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors.lightGrey,
            ),
            child: SvgPicture.asset(Assets.favorite),
          ),
        ),
      ],
    );
  }
}
