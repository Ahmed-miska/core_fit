import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/profile/ui/widgets/edit_profile_text_field.dart';
import 'package:core_fit/features/profile/ui/widgets/profile_frame_image.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Edit Profile'),
      body: Padding(
        padding: mainPadding(),
        child: ListView(
          children: [
            const ProfileFrameImage(),
            const EditProfileTextField(),
            AppTextButton(
              text: 'Save',
              onTap: () {
                context.pop();
              },
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
