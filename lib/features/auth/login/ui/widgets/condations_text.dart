import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class CondationsText extends StatelessWidget {
  const CondationsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'By continuing, you agree to the',
              style: TextStyles.font14Gray400,
            ),
            TextSpan(
              text: ' terms and conditions',
              style: TextStyles.font14Gray400.copyWith(color: AppColors.mainColor),
            ),
            TextSpan(
              text: ' and ',
              style: TextStyles.font14Gray400,
            ),
            TextSpan(
              text: 'privacy policy',
              style: TextStyles.font14Gray400.copyWith(color: AppColors.mainColor),
            ),
            TextSpan(
              text: ' of the application',
              style: TextStyles.font14Gray400,
            ),
          ],
        ),
      ),
    );
  }
}
