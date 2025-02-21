import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/loading_widget.dart';
import 'package:core_fit/features/auth/forget_password/logic/cubit/forget_password_cubit.dart';
import 'package:core_fit/features/auth/forget_password/logic/cubit/forget_password_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordScreen extends StatelessWidget {
  final String email;
  final String otp;

  const ResetPasswordScreen({
    super.key,
    required this.email,
    required this.otp,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Reset Password'),
      body: BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
        listener: (context, state) {
          state.whenOrNull(
            resetPasswordLoading: () {
              loadingDialog(context);
            },
            resetPasswordSuccess: (data) {
              context.pop();
              context.pushNamedAndRemoveUntil(Routes.loginScreen, predicate: (route) => false);
            },
            resetPasswordError: (error) {
              context.pop();
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog();
                },
              );
            },
          );
        },
        builder: (context, state) {
          return Padding(
            padding: mainPadding(),
            child: Form(
              key: context.read<ForgetPasswordCubit>().resetFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(20),
                  Text('New Password', style: TextStyles.font18Dark600),
                  verticalSpace(16),
                  AppTextFormField(
                    controller: context.read<ForgetPasswordCubit>().newPasswordController,
                    hintText: 'Enter your password',
                    validator: (string) {
                      if (string.isEmpty) {
                        return 'Please enter a valid password';
                      }
                    },
                  ),
                  verticalSpace(16),
                  Text('Confirm Password', style: TextStyles.font18Dark600),
                  verticalSpace(16),
                  AppTextFormField(
                    controller: context.read<ForgetPasswordCubit>().confirmPasswordController,
                    hintText: 'Confirm your password',
                    validator: (string) {
                      if (string.isEmpty) {
                        return 'Please enter a valid password';
                      }
                      if (string != context.read<ForgetPasswordCubit>().newPasswordController.text) {
                        return 'Password does not match';
                      }
                    },
                  ),
                  verticalSpace(24),
                  AppTextButton(
                    text: 'Reset Password',
                    onTap: () async {
                      if (context.read<ForgetPasswordCubit>().resetFormKey.currentState!.validate()) {
                        context.read<ForgetPasswordCubit>().emailController.text = email;
                        context.read<ForgetPasswordCubit>().otpController.text = otp;
                        context.read<ForgetPasswordCubit>().resetPassword();
                      }
                    },
                  ),
                  // resetPassWordBlocListener(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
