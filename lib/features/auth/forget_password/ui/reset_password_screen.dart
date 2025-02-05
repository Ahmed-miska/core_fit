import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reset Password'),
      body: Padding(
        padding: mainPadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20),
            Text('Create New Password', style: TextStyles.font18Dark600),
            verticalSpace(16),
            AppTextFormField(
              hintText: 'Enter your password',
              validator: (string) {},
            ),
            verticalSpace(16),
            Text('Confirm Password', style: TextStyles.font18Dark600),
            verticalSpace(16),
            AppTextFormField(
              hintText: 'Confirm your password',
              validator: (string) {},
            ),
            verticalSpace(24),
            AppTextButton(
              text: 'Reset Password',
              onTap: () => context.pushNamedAndRemoveUntil(Routes.loginScreen, predicate: (Route<dynamic> route) {
                return false;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
