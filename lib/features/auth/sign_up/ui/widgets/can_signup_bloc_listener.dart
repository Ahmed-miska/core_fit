import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/widgets/loading_widget.dart';

class CanSignupBlocListener extends StatelessWidget {
  const CanSignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      //  listenWhen: (previous, current) => current is CanSignUpLoading || current is CanSignUpSuccess || current is CanSignUpError,
      listener: (context, state) {
        state.whenOrNull(canSignUpLoading: () {
          loadingDialog(context);
        }, canSignUpSuccess: (response) {
          context.pop();
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text('${response.message}'),
          //     behavior: SnackBarBehavior.floating,
          //     backgroundColor: AppColors.main,
          //     duration: const Duration(seconds: 3),
          //     dismissDirection: DismissDirection.up,
          //     elevation: 0,
          //   ),
          // );
          // otpBottomSheet(context);

          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Icon(Icons.error, color: AppColors.red),
                  content: Column(
                    children: [
                      Text(
                        response.message,
                        style: TextStyles.font16Dark700,
                        textAlign: TextAlign.center,
                      ),
                      AppTextFormField(
                        controller: getIt<SignupCubit>().otpController,
                        hintText: response.message.toString(),
                        validator: (String) {},
                      ),
                      AppTextButton(
                          text: 'ssss',
                          onTap: () {
                            getIt<SignupCubit>().signup();
                          })
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => context.pop(),
                      child: Text(
                        'OK',
                        style: TextStyles.font16Dark700.copyWith(color: AppColors.main),
                      ),
                    ),
                  ],
                );
              });
        }, canSignUpError: (error) {
          context.pop();
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Icon(Icons.error, color: AppColors.red),
                content: Text(
                  error,
                  style: TextStyles.font16Dark700,
                  textAlign: TextAlign.center,
                ),
                actions: [
                  TextButton(
                    onPressed: () => context.pop(),
                    child: Text(
                      'OK',
                      style: TextStyles.font16Dark700.copyWith(color: AppColors.main),
                    ),
                  ),
                ],
              );
            },
          );
        });
      },
      child: SizedBox.shrink(),
    );
  }
}
