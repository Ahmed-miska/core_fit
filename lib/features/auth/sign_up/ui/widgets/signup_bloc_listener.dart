import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/loading_widget.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/theming/colors.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) => current is SignupLoading || current is SignupSuccess || current is SignupError,
      listener: (context, state) {
        state.whenOrNull(signupLoading: () {
          loadingDialog(context);
        }, signupSuccess: (response) {
          context.pop();
          context.pushNamedAndRemoveUntil(Routes.loginScreen, predicate: (route) => true);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('${response.message}'),
              behavior: SnackBarBehavior.floating,
              backgroundColor: AppColors.main,
              duration: const Duration(seconds: 3),
              dismissDirection: DismissDirection.up,
              elevation: 0,
            ),
          );
        }, signupError: (error) {
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
