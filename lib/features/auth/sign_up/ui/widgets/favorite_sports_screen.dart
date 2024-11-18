import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/favorite_sports_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FavoriteSportsScreen extends StatelessWidget {
  const FavoriteSportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Sports', style: TextStyles.b16),
        leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: Padding(padding: const EdgeInsets.all(16), child: SvgPicture.asset(Assets.backArrow))),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: mainPadding().copyWith(top: 10.h),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.horizontal,
                spacing: 10,
                runSpacing: 10,
                children: List.generate(13, (index) => const FavoriteSportsCard()),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.h, top: 10.h),
                  child: AppTextButton(
                    text: 'Next',
                    onTap: () {
                      context.pushNamed(Routes.homeScreen);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
