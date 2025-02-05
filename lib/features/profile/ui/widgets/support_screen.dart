import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Support and assistance'),
      body: Padding(
        padding: mainPadding(),
        child: ListView(
          children: [
            Center(child: SvgPicture.asset('assets/icons/support.svg')),
            verticalSpace(22),
            Text('Name', style: TextStyles.font18Dark600),
            verticalSpace(8),
            AppTextFormField(
              hintText: 'Name',
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                // ignore: deprecated_member_use
                child: SvgPicture.asset(Assets.user, color: AppColors.main),
              ),
              validator: (string) {},
            ),
            verticalSpace(24),
            Text('Phone', style: TextStyles.font18Dark600),
            verticalSpace(8),
            AppTextFormField(
              hintText: 'Enter your phone',
              keyboardType: TextInputType.number,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                // ignore: deprecated_member_use
                child: SvgPicture.asset(Assets.phone, color: AppColors.main),
              ),
              validator: (string) {},
            ),
            verticalSpace(24),
            Text('Message Title', style: TextStyles.font18Dark600),
            verticalSpace(8),
            AppTextFormField(
              hintText: 'Enter your message title',
              prefixIcon: const Padding(
                padding: EdgeInsets.all(12),
                // ignore: deprecated_member_use
                child: Icon(Icons.mark_email_unread_outlined, color: AppColors.main),
              ),
              validator: (string) {},
            ),
            verticalSpace(24),
            Text('Message', style: TextStyles.font18Dark600),
            verticalSpace(8),
            AppTextFormField(
              hintText: 'Enter your message',
              maxLines: 10,
              validator: (string) {},
            ),
            verticalSpace(24),
            AppTextButton(text: 'Send', onTap: () {}),
          ],
        ),
      ),
    );
  }
}
