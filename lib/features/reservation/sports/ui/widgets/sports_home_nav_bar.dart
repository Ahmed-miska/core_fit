import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SportsHomeNavBar extends StatefulWidget {
  final ValueChanged<int>? onValueSelected;

  const SportsHomeNavBar({super.key, this.onValueSelected});

  @override
  State<SportsHomeNavBar> createState() => _SportsHomeNavBarState();
}

class _SportsHomeNavBarState extends State<SportsHomeNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      height: 55,
      style: TabStyle.fixedCircle,
      initialActiveIndex: currentIndex,
      color: AppColors.grey,
      backgroundColor: AppColors.white,
      activeColor: AppColors.main,
      items: [
        TabItem(icon: SvgPicture.asset(Assets.homeGray), title: 'Home', activeIcon: SvgPicture.asset(Assets.homeGreen)),
        TabItem(icon: SvgPicture.asset(Assets.circleLogo), title: 'Discovery'),
        TabItem(icon: SvgPicture.asset(Assets.bookingGray), title: 'Bookings', activeIcon: SvgPicture.asset(Assets.bookingGreen)),
      ],
      onTap: (int i) {
        if (i == 1) {
          context.pop();
        }
        widget.onValueSelected?.call(i);
      },
    );
  }
}
