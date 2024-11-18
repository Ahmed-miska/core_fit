import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              verticalSpace(10),
              const HomeAppBar(),
              verticalSpace(16),
              const HomeSwiper(),
              verticalSpace(12),
              Padding(
                padding: mainPadding(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome Ahmed...!', style: TextStyles.font18Dark700),
                    verticalSpace(8),
                    const LocationInHome(),
                    verticalSpace(12),
                    const HomeAvtivityes(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
