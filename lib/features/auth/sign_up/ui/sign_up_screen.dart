import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/back_arrow.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/sign_up_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: mainPadding(),
          child: Column(
            children: [
              verticalSpace(20),
              Row(
                children: [
                  const BackArrow(),
                  horizontalSpace(20),
                  Text('Sign Up', style: TextStyles.font16Dark700),
                ],
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
