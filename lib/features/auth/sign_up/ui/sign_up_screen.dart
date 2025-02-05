import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/otp_bottom_sheet.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/sign_up_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sign Up'),
      body: SafeArea(
        child: Padding(
          padding: mainPadding(),
          child: Column(
            children: [
              verticalSpace(10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: SizedBox(
                          height: 60.h,
                          width: 60.h,
                          child: SvgPicture.asset('assets/icons/logo_named.svg'),
                        ),
                      ),
                      const SignUpTextFields(),
                    ],
                  ),
                ),
              ),
              AppTextButton(
                text: 'Sign Up',
                onTap: () {
                  otpBottomSheet(context, () {
                    context.pushNamed(Routes.homeScreen);
                  });
                },
              ),
              verticalSpace(15),
            ],
          ),
        ),
      ),
    );
  }
}
