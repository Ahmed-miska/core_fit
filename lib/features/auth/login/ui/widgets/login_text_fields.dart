import 'package:core_fit/core/helpers/app_regex.dart';
import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/animated_widget.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/features/auth/login/data/models/login_request_body.dart';
import 'package:core_fit/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email', style: TextStyles.font18Dark600),
          verticalSpace(8),
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            hintText: 'Enter your email',
            prefixIcon: Padding(
              padding: const EdgeInsets.all(12),
              // ignore: deprecated_member_use
              child: SvgPicture.asset(Assets.email, color: AppColors.main),
            ),
            validator: (string) {
              // ignore: unnecessary_null_comparison
              if (string == null || string.isEmpty || !AppRegex.isEmailValid(string)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          verticalSpace(24),
          Text('Password', style: TextStyles.font18Dark600),
          verticalSpace(8),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: 'Enter your password',
            isObscureText: isObscure,
            prefixIcon: const Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.lock_outline, color: AppColors.main, size: 24),
            ),
            suffixIcon: InkWell(
              onTap: () => setState(() => isObscure = !isObscure),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Icon(isObscure ? Icons.visibility_off : Icons.visibility, color: AppColors.main),
              ),
            ),
            validator: (string) {
              if (string.isEmpty) {
                return 'Please enter a password';
              }
            },
          ),
          verticalSpace(16),
          InkWell(
            onTap: () {
              context.pushNamed(Routes.forgetPasswordScreen);
            },
            child: Text(
              'Forgot Password?',
              style: TextStyles.font18Dark600,
            ),
          ),
          verticalSpace(32),
          animatedWidget(
            begin: const Offset(0, 5),
            child: AppTextButton(
              text: 'Login',
              onTap: () {
                validateThenDoLogin(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().login(
            LoginRequestBody(
              email: context.read<LoginCubit>().emailController.text,
              password: context.read<LoginCubit>().passwordController.text,
            ),
          );
    }
  }
}
