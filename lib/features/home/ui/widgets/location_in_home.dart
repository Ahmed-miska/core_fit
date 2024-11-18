import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LocationInHome extends StatelessWidget {
  const LocationInHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // ignore: deprecated_member_use
        SvgPicture.asset(Assets.location, color: AppColors.main),
        horizontalSpace(8),
        Text('Cairo', style: TextStyles.font12Dark400),
        horizontalSpace(8),
        Text('-', style: TextStyles.font12Dark400),
        horizontalSpace(8),
        Text('Cairo', style: TextStyles.font12Dark400),
        const Spacer(),
        Text('change', style: TextStyles.font12Dark400.copyWith(color: AppColors.main)),
      ],
    );
  }
}
