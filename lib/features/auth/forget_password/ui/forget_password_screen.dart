import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/otp_bottom_sheet.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Forget Password'),
      body: Padding(
        padding: mainPadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(20),
            Text(
              'Please enter your email to reset the password',
              style: TextStyles.font14Dark700,
            ),
            verticalSpace(50),
            Text('Your Email', style: TextStyles.font18Dark600),
            verticalSpace(16),
            AppTextFormField(
              hintText: 'Enter your email',
              validator: (string) {},
            ),
            verticalSpace(24),
            AppTextButton(
              text: 'Send',
              onTap: () {
                otpBottomSheet(context, () {
                  context.pushNamed(Routes.resetPasswordScreen);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
