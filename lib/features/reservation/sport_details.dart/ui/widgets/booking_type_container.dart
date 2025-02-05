import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BookingTypeContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final Function()? onTap;
  const BookingTypeContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: AppColors.inputStroke), color: AppColors.white, boxShadow: const [
          BoxShadow(color: AppColors.lightGrey, blurRadius: 4, offset: Offset(0, 4)),
        ]),
        child: Row(
          children: [
            SvgPicture.asset(image),
            horizontalSpace(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyles.font16Dark700),
                  verticalSpace(8),
                  Text(
                    subtitle,
                    style: TextStyles.font12Gray400,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
