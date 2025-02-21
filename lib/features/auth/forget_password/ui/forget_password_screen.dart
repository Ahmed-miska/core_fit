import 'package:core_fit/core/helpers/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core_fit/core/helpers/app_regex.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/loading_widget.dart';
import 'package:core_fit/features/auth/forget_password/logic/cubit/forget_password_cubit.dart';
import 'package:core_fit/features/auth/forget_password/logic/cubit/forget_password_state.dart';
import 'package:core_fit/features/auth/forget_password/ui/widgets/forget_password_bottom_sheet.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Forget Password'),
      body: Padding(
        padding: mainPadding(),
        child: BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
          //  listenWhen: (previous, current) => current is ForgetPassworLoading || current is ForgetPasswordSuccess || current is ForgetPasswordError,
          listener: (context, state) {
            state.whenOrNull(
              checkCodeLoading: () => loadingDialog(context),
              checkCodeSuccess: (message) {
                context.pop();
                context.pushNamed(
                  Routes.resetPasswordScreen,
                  arguments: {
                    'email': context.read<ForgetPasswordCubit>().emailController.text,
                    'otp': context.read<ForgetPasswordCubit>().otpController.text,
                  },
                );
              },
              checkCodeError: (error) {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Icon(Icons.error, color: AppColors.red),
                    content: Text(
                      error,
                      style: TextStyles.font16Dark700,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
              forgetPasswordLoading: () => loadingDialog(context),
              forgetPasswordSuccess: (message) {
                Navigator.pop(context);
                showModalBottomSheet(
                  isScrollControlled: true,
                  elevation: 0,
                  backgroundColor: AppColors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  clipBehavior: Clip.hardEdge,
                  context: context,
                  builder: (_) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: ForgetPasswordBottomSheet(
                        email: context.read<ForgetPasswordCubit>().emailController.text,
                        onResentOtp: context.read<ForgetPasswordCubit>().forgetPassword,
                        onVerifyOtp: () {
                          if (context.read<ForgetPasswordCubit>().otpController.text.length == 6) {
                            context.read<ForgetPasswordCubit>().checkCode();
                          }
                        },
                        otpController: context.read<ForgetPasswordCubit>().otpController,
                      ),
                    );
                  },
                );
              },
              forgetPasswordError: (error) {
                Navigator.pop(context);
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Icon(Icons.error, color: AppColors.red),
                    content: Text(
                      error,
                      style: TextStyles.font16Dark700,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            );
          },
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(20),
                Text('Please enter your email to reset the password', style: TextStyles.font14Dark700),
                verticalSpace(50),
                Text('Your Email', style: TextStyles.font18Dark600),
                verticalSpace(16),
                Form(
                  key: context.read<ForgetPasswordCubit>().formKey,
                  child: AppTextFormField(
                    controller: context.read<ForgetPasswordCubit>().emailController,
                    hintText: 'Enter your email',
                    validator: (value) {
                      if (value.trim().isEmpty || !AppRegex.isEmailValid(value.trim())) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                ),
                verticalSpace(24),
                AppTextButton(
                  text: 'Send',
                  onTap: () {
                    if (context.read<ForgetPasswordCubit>().formKey.currentState!.validate()) {
                      context.read<ForgetPasswordCubit>().forgetPassword();
                    }
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

// Widget forgetPasswordBlocListener(BuildContext context, ForgetPasswordCubit cubit) {
//   return BlocListener<ForgetPasswordCubit, ForgetPasswordState>(
//     bloc: cubit,
//     listenWhen: (previous, current) => current is CheckCodeSuccess || current is CheckCodeLoading || current is CheckCodeError,
//     listener: (context, state) {
//       state.whenOrNull(
//         checkCodeLoading: () => loadingDialog(context),
//         checkCodeSuccess: (message) {
//           Navigator.pop(context);
//           Navigator.pushNamed(context, Routes.resetPasswordScreen);
//         },
//         checkCodeError: (error) {
//           Navigator.pop(context);
//           showDialog(
//             context: context,
//             builder: (_) => AlertDialog(
//               title: const Icon(Icons.error, color: AppColors.red),
//               content: Text(
//                 error,
//                 style: TextStyles.font16Dark700,
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           );
//         },
//       );
//     },
//     child: const SizedBox.shrink(),
//   );
// }
