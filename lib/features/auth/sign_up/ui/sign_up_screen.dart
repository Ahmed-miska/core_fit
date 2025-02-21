import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/pick_image_in_signup.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/sign_up_text_fields.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Sign Up'),
      body: SafeArea(
        child: Padding(
          padding: mainPadding(),
          child: Column(
            children: [
              verticalSpace(10),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Center(
                        child: PickImageInSignup(),
                      ),
                      const SignUpTextFields(),
                    ],
                  ),
                ),
              ),
              verticalSpace(15),
              
            ],
          ),
        ),
      ),
    );
  }
}
