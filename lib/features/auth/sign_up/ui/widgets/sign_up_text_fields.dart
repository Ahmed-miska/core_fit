import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/app_regex.dart';
import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/core/widgets/loading_widget.dart';
import 'package:core_fit/core/widgets/otp_bottom_sheet.dart';
import 'package:core_fit/features/auth/sign_up/data/models/can_signup_request_model.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/select_governrate_and_city.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/select_gender_row.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/signup_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SignUpTextFields extends StatefulWidget {
  const SignUpTextFields({
    super.key,
  });

  @override
  State<SignUpTextFields> createState() => _SignUpTextFieldsState();
}

class _SignUpTextFieldsState extends State<SignUpTextFields> {
  bool isObscure = true;
  int gender = 1;

  Future<void> selectDate() async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2020),
      firstDate: DateTime(1960),
      lastDate: DateTime(2023),
    );

    if (selectedDate != null) {
      String formattedDate = '${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}';
      getIt<SignupCubit>().birthDateController.text = formattedDate;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listenWhen: (previous, current) => current is CanSignUpLoading || current is CanSignUpSuccess || current is CanSignUpError,
      listener: (context, state) {
        state.whenOrNull(
          canSignUpLoading: () {
            loadingDialog(context);
          },
          canSignUpSuccess: (response) {
            context.pop();
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
            otpBottomSheet(context);
          },
          canSignUpError: (error) {
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
          },
        );
      },
      builder: (context, state) {
        return Form(
          key: context.read<SignupCubit>().formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('User Name', style: TextStyles.font18Dark600),
              verticalSpace(8),
              AppTextFormField(
                controller: context.read<SignupCubit>().userNameController,
                hintText: 'Enter your username',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  // ignore: deprecated_member_use
                  child: SvgPicture.asset(Assets.user, color: AppColors.main),
                ),
                validator: (string) {
                  if (string.isEmpty) {
                    return 'Please enter a valid username';
                  }
                  return null;
                },
              ),
              verticalSpace(24),
              Text('Email', style: TextStyles.font18Dark600),
              verticalSpace(8),
              AppTextFormField(
                controller: context.read<SignupCubit>().emailController,
                hintText: 'Enter your email',
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  // ignore: deprecated_member_use
                  child: SvgPicture.asset(Assets.email, color: AppColors.main),
                ),
                validator: (string) {
                  if (string.isEmpty || !AppRegex.isEmailValid(string)) {
                    return 'Please enter a valid email';
                  }
                },
              ),
              verticalSpace(24),
              Text('Phone', style: TextStyles.font18Dark600),
              verticalSpace(8),
              AppTextFormField(
                controller: context.read<SignupCubit>().phoneController,
                hintText: 'Enter your phone',
                keyboardType: TextInputType.number,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  // ignore: deprecated_member_use
                  child: SvgPicture.asset(Assets.phone, color: AppColors.main),
                ),
                validator: (string) {
                  if (string.isEmpty || !AppRegex.isPhoneNumberValid(string)) {
                    return 'Please enter a valid phone';
                  }
                },
              ),
              verticalSpace(24),
              Text('Password', style: TextStyles.font18Dark600),
              verticalSpace(8),
              AppTextFormField(
                controller: context.read<SignupCubit>().passwordController,
                hintText: 'Enter your password',
                isObscureText: isObscure,
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(12),
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
                  if (string.isEmpty || string.length < 6) {
                    return 'Please enter a valid password';
                  }
                },
              ),
              verticalSpace(24),
              Text('Birth Date', style: TextStyles.font18Dark600),
              verticalSpace(8),
              AppTextFormField(
                hintText: 'Enter your birth date',
                controller: context.read<SignupCubit>().birthDateController,
                readOnly: true,
                onTap: selectDate,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  // ignore: deprecated_member_use
                  child: SvgPicture.asset(Assets.calendar, color: AppColors.main),
                ),
                validator: (string) {
                  if (string.isEmpty) {
                    return 'Please enter a valid birth date';
                  }
                },
              ),
              verticalSpace(24),
              Text('Gender', style: TextStyles.font18Dark600),
              verticalSpace(8),
              const SelectGenderRow(),
              verticalSpace(24),
              const SelectGovernRateAndCity(),
              verticalSpace(20),
              AppTextButton(
                text: 'Sign Up',
                onTap: () async {
                  if (getIt<SignupCubit>().formKey.currentState!.validate()) {
                    if (getIt<SignupCubit>().image == null) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              content: Text('Please select an image', style: TextStyles.font16Dark700),
                              actions: [
                                TextButton(
                                  child: Text('OK', style: TextStyles.font16Dark700.copyWith(color: AppColors.main)),
                                  onPressed: () => context.pop(),
                                ),
                              ],
                            );
                          });
                    } else {
                      getIt<SignupCubit>().canSignup(
                        CanSignupRequestModel(
                          email: getIt<SignupCubit>().emailController.text,
                          phone: getIt<SignupCubit>().phoneController.text,
                        ),
                      );
                    }
                  }
                },
              ),
              SignupBlocListener(),
            ],
          ),
        );
      },
    );
  }
}
