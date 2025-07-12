import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/app_regex.dart';
import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/profile/data/models/support_request_model.dart';
import 'package:core_fit/features/profile/logic/cubit/setting_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController subjectController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Support and assistance'),
      body: BlocBuilder<SettingCubit, SettingState>(
        bloc: getIt<SettingCubit>(),
        builder: (context, state) {
          // if (state is ContactUsLoadding) {
          //   return const Center(child: CircularProgressIndicator());
          // }
          // if (state is ContactUsSuccess) {
          //   context.pop();
          //   return const Center(child: Text('Your message has been sent successfully'));
          // }
          // if (state is ContactUsError) {}
          return Form(
            key: _formKey,
            child: Padding(
              padding: mainPadding(),
              child: ListView(
                children: [
                  Center(child: SvgPicture.asset('assets/icons/support.svg')),
                  verticalSpace(22),
                  Text('Name', style: TextStyles.font18Dark600),
                  verticalSpace(8),
                  AppTextFormField(
                    controller: nameController,
                    hintText: 'Name',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      // ignore: deprecated_member_use
                      child: SvgPicture.asset(Assets.user, color: AppColors.main),
                    ),
                    validator: (string) {
                      if (string == null || string.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(24),
                  Text('Email', style: TextStyles.font18Dark600),
                  verticalSpace(8),
                  AppTextFormField(
                    hintText: 'Enter your email',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      // ignore: deprecated_member_use
                      child: SvgPicture.asset(Assets.email, color: AppColors.main),
                    ),
                    validator: (string) {
                      if (string == null || string.isEmpty) {
                        return 'Please enter your email';
                      }
                      if (!AppRegex.isEmailValid(string)) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(24),
                  Text('Message Title', style: TextStyles.font18Dark600),
                  verticalSpace(8),
                  AppTextFormField(
                    controller: subjectController,
                    hintText: 'Enter your message title',
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(12),
                      // ignore: deprecated_member_use
                      child: Icon(Icons.mark_email_unread_outlined, color: AppColors.main),
                    ),
                    validator: (string) {
                      if (string == null || string.isEmpty) {
                        return 'Please enter your message title';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(24),
                  Text('Message', style: TextStyles.font18Dark600),
                  verticalSpace(8),
                  AppTextFormField(
                    controller: messageController,
                    hintText: 'Enter your message',
                    maxLines: 6,
                    validator: (string) {
                      if (string == null || string.isEmpty) {
                        return 'Please enter your message';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(24),
                  AppTextButton(
                    text: 'Send',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<SettingCubit>().contactUs(
                              SupportRequestModel(
                                name: nameController.text,
                                email: emailController.text,
                                subject: subjectController.text,
                                message: messageController.text,
                              ),context
                            );
                      }
                    },
                  ),
                  verticalSpace(24),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
