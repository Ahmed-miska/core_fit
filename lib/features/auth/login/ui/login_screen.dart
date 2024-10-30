import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/auth/login/ui/widgets/condations_text.dart';
import 'package:core_fit/features/auth/login/ui/widgets/create_account_text.dart';
import 'package:core_fit/features/auth/login/ui/widgets/login_text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: mainPadding(),
            child: Column(
              children: [
                verticalSpace(46),
                Center(
                  child: SizedBox(
                    height: 120.h,
                    width: 120.h,
                    child: SvgPicture.asset('assets/icons/logo_named.svg'),
                  ),
                ),
                verticalSpace(24),
                Text('Welcome Back...! ', style: TextStyles.font28Dark700),
                verticalSpace(36),
                const LoginTextFields(),
                verticalSpace(36),
                const CondationsText(),
                verticalSpace(24),
                const Center(
                  child: CreateAccountText(),
                ),
                verticalSpace(24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
