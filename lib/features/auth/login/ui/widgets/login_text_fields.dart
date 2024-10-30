import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginTextFields extends StatefulWidget {
  const LoginTextFields({
    super.key,
  });

  @override
  State<LoginTextFields> createState() => _LoginTextFieldsState();
}

class _LoginTextFieldsState extends State<LoginTextFields> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email', style: TextStyles.font18Dark600),
        verticalSpace(8),
        AppTextFormField(
          hintText: 'Enter your email',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            // ignore: deprecated_member_use
            child: SvgPicture.asset(Assets.email, color: AppColors.mainColor),
          ),
          validator: (string) {},
        ),
        verticalSpace(24),
        Text('Password', style: TextStyles.font18Dark600),
        verticalSpace(8),
        AppTextFormField(
          hintText: 'Enter your password',
          isObscureText: isObscure,
          prefixIcon: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.lock_outline, color: AppColors.mainColor, size: 24),
          ),
          suffixIcon: InkWell(
            onTap: () => setState(() => isObscure = !isObscure),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Icon(isObscure ? Icons.visibility_off : Icons.visibility, color: AppColors.mainColor),
            ),
          ),
          validator: (string) {},
        ),
        verticalSpace(16),
        Text(
          'Forgot Password?',
          style: TextStyles.font18Dark600,
        ),
        verticalSpace(32),
        AppTextButton(
          text: 'Login',
          onTap: () {},
        ),
      ],
    );
  }
}
