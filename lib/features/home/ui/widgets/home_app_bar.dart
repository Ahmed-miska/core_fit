import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
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
        height: 50.h,
        child: Row(
          children: [
            Expanded(child: SvgPicture.asset(Assets.logo)),
            horizontalSpace(10),
            Text('Ahmed Miska', style: TextStyles.font18Dark600),
            const Spacer(flex: 5),
            Badge.count(count: 3, padding: const EdgeInsets.all(1), backgroundColor: AppColors.mainColor, child: SvgPicture.asset(Assets.notification)),
            horizontalSpace(20),
            SvgPicture.asset(Assets.profile),
          ],
        ),
      ),
    );
  }
}
