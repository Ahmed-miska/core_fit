import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/shared_pref_helper.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/animated_widget.dart';
import 'package:core_fit/features/home/ui/widgets/home_activityes.dart';
import 'package:core_fit/features/home/ui/widgets/home_app_bar.dart';
import 'package:core_fit/features/home/ui/widgets/home_swiper.dart';
import 'package:core_fit/features/home/ui/widgets/location_in_home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(10),
            const HomeAppBar(),
            verticalSpace(16),
            Expanded(child: HomeSwiper(swiperImages: testSwiperImages)),
            verticalSpace(12),
            Expanded(
              child: Padding(
                padding: mainPadding(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    animatedWidget(
                        delay: Duration(milliseconds: 500),
                        begin: const Offset(-10, 0),
                        child: Text('Welcome ${SharedPrefHelper().getUserData()?.username}...!', style: TextStyles.font18Dark700)),
                    verticalSpace(8),
                    animatedWidget(delay: Duration(milliseconds: 600), begin: const Offset(10, 0), child: const LocationInHome()),
                    verticalSpace(12),
                    const Expanded(child: HomeAvtivityes()),
                    verticalSpace(12),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
