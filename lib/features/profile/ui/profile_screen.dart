import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/shared_pref_helper.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/profile/ui/widgets/profile_frame_image.dart';
import 'package:core_fit/features/profile/ui/widgets/profile_item_row.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Profile'),
      body: Padding(
        padding: mainPadding(),
        child: ListView(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ProfileFrameImage(),
            Center(child: Text(SharedPrefHelper().getUserData()?.username ?? '', style: TextStyles.font18Dark700)),
            verticalSpace(8),
            Center(child: Text('Birthday date: ${SharedPrefHelper().getUserData()?.birthDate}', style: TextStyles.font14Gray400)),
            verticalSpace(16),
            Row(
              children: [
                Expanded(
                  child: AppTextButton(
                    text: 'Edit Profile',
                    icon: const Icon(Icons.edit, color: AppColors.white),
                    onTap: () {
                      context.pushNamed(Routes.editProfileScreen);
                    },
                  ),
                ),
                horizontalSpace(8),
                Expanded(
                  child: AppTextButton(
                    text: 'Favorite',
                    icon: const Icon(Icons.favorite_border, color: AppColors.white),
                    onTap: () {
                      context.pushNamed(Routes.favoriteStadiumsScreen);
                    },
                  ),
                ),
              ],
            ),
            verticalSpace(8),
            Row(
              children: [
                Expanded(
                  child: AppTextButton(
                    text: 'Private wallet',
                    icon: const Icon(Icons.wallet_outlined, color: AppColors.white),
                    onTap: () {
                      context.pushNamed(Routes.privatWalletScreen);
                    },
                  ),
                ),
                horizontalSpace(8),
                Expanded(
                  child: AppTextButton(
                    text: 'Support',
                    icon: const Icon(Icons.headphones_outlined, color: AppColors.white),
                    onTap: () {
                      context.pushNamed(Routes.supportScreen);
                    },
                  ),
                ),
              ],
            ),
            verticalSpace(22),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.inputStroke,
              ),
              child: Column(
                children: [
                  ProfileItemRow(
                    title: 'About App',
                    icon: Icons.info_outline,
                    onTap: () {},
                  ),
                  verticalSpace(12),
                  ProfileItemRow(
                    title: 'Terms & Conditions',
                    icon: Icons.description_outlined,
                    onTap: () {},
                  ),
                  verticalSpace(12),
                  ProfileItemRow(
                    title: 'privacy policy',
                    icon: Icons.verified_user_outlined,
                    onTap: () {},
                  ),
                  verticalSpace(12),
                  ProfileItemRow(
                    title: 'About App',
                    icon: Icons.info_outline,
                    onTap: () {},
                  ),
                  verticalSpace(12),
                  InkWell(
                    onTap: () {
                      SharedPrefHelper().logout();
                      context.pushNamedAndRemoveUntil(Routes.loginScreen, predicate: (Route<dynamic> route) => false);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.white,
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.cancel_outlined, color: AppColors.red),
                          horizontalSpace(8),
                          Text('Logout', style: TextStyles.font16Dark700.copyWith(color: AppColors.red)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
