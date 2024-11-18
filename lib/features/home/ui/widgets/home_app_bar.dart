import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainPadding(),
      child: SizedBox(
        height: 40.h,
        child: Row(
          children: [
            Expanded(flex: 1, child: SvgPicture.asset(Assets.logo)),
            horizontalSpace(10),
            Expanded(flex: 2, child: SvgPicture.asset(Assets.appName, fit: BoxFit.contain)),
            const Spacer(flex: 4),
            Badge.count(count: 3, padding: const EdgeInsets.all(1), backgroundColor: AppColors.main, child: SvgPicture.asset(Assets.notification)),
            horizontalSpace(20),
            GestureDetector(onTap: () => context.pushNamed(Routes.profileScreen), child: SvgPicture.asset(Assets.profile)),
          ],
        ),
      ),
    );
  }
}
