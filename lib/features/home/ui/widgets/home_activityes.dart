import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/features/home/ui/widgets/home_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeAvtivityes extends StatelessWidget {
  const HomeAvtivityes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280.h,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: HomeItem(
                    onTap: () => context.pushNamed(Routes.marketHomeScreen),
                    image: 'assets/images/4.jpeg',
                    title: 'Sports Market',
                  ),
                ),
                verticalSpace(10),
                Expanded(
                  child: HomeItem(
                    onTap: () {},
                    image: 'assets/images/5.jpeg',
                    title: 'Sports news',
                  ),
                )
              ],
            ),
          ),
          horizontalSpace(10),
          Expanded(
            child: HomeItem(
              onTap: () {},
              title: 'Sports Booking',
              image: 'assets/images/6.jpeg',
            ),
          )
        ],
      ),
    );
  }
}
