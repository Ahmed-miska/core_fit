import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account?  ',
            style: TextStyles.font14Gray400,
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.signUpScreen);
              },
            text: 'Create an account',
            style: TextStyles.font16Dark700.copyWith(color: AppColors.main),
          ),
        ],
      ),
    );
  }
}
