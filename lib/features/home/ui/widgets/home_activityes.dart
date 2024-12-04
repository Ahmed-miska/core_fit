import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/widgets/stacket_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAvtivityes extends StatelessWidget {
  const HomeAvtivityes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                context.pushNamed(Routes.sportsHomeScreen);
              },
              child: const StacketImage(imageUrl: Assets.cachImage, text: 'Sports Bookings'),
            ),
          ),
          horizontalSpace(8),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      context.pushNamed(Routes.marketHomeScreen);
                    },
                    child: const StacketImage(imageUrl: Assets.cachImage2, text: 'Sports Market'),
                  ),
                ),
                verticalSpace(8),
                const Expanded(child: StacketImage(imageUrl: Assets.cachImage3, text: 'Tennis')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
