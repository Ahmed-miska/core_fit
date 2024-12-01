import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MarketHomeNavBar extends StatefulWidget {
  final ValueChanged<int>? onValueSelected;

  const MarketHomeNavBar({super.key, this.onValueSelected});

  @override
  State<MarketHomeNavBar> createState() => _MarketHomeNavBarState();
}

class _MarketHomeNavBarState extends State<MarketHomeNavBar> with TickerProviderStateMixin {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      height: 60,
      style: TabStyle.fixedCircle,
      initialActiveIndex: currentIndex,
      color: AppColors.grey,
      backgroundColor: AppColors.white,
      activeColor: AppColors.main,
      items: [
        TabItem(
          icon: SvgPicture.asset(Assets.storesGray),
          title: 'Stores',
          activeIcon: SvgPicture.asset(Assets.storesGreen),
        ),
        TabItem(icon: SvgPicture.asset(Assets.circleLogo), title: 'Discovery'),
        TabItem(
          icon: SvgPicture.asset(Assets.ordersGray),
          title: 'Orders',
          activeIcon: SvgPicture.asset(
            Assets.ordersGreen,
          ),
        ),
      ],
      onTap: (int i) {
        if (i == 1) {
          context.pop();
        }
        widget.onValueSelected?.call(i);
      },
    );
//   return Container(
    //   height: 65,
    //   padding: const EdgeInsets.only(),
    //   decoration: BoxDecoration(
    //     color: AppColors.white,
    //     boxShadow: [BoxShadow(color: AppColors.dark.withOpacity(0.2), blurRadius: 10)],
    //     borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //     children: [
    //       InkWell(
    //         onTap: () {
    //           setState(() => currentIndex = 0);
    //           widget.onValueSelected?.call(currentIndex);
    //         },
    //         child: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             SvgPicture.asset(currentIndex == 0 ? Assets.storesGreen : Assets.storesGray),
    //             verticalSpace(4),
    //             Text(
    //               'Stores',
    //               style: currentIndex == 0 ? TextStyles.font12Main600 : TextStyles.font12Gray400,
    //             ),
    //           ],
    //         ),
    //       ),
    //       InkWell(
    //         onTap: () {
    //           context.pop();
    //         },
    //         child: SizedBox(width: 60, height: 60, child: SvgPicture.asset(Assets.circleLogo)),
    //       ),
    //       InkWell(
    //         onTap: () {
    //           setState(() => currentIndex = 1);
    //           widget.onValueSelected?.call(currentIndex);
    //         },
    //         child: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             SvgPicture.asset(currentIndex == 1 ? Assets.ordersGreen : Assets.ordersGray),
    //             verticalSpace(4),
    //             Text(
    //               'Orders',
    //               style: currentIndex == 1 ? TextStyles.font12Main600 : TextStyles.font12Gray400,
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
