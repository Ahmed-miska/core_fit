import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/gender_container.dart';
import 'package:flutter/material.dart';

class EditGenderInEditProfile extends StatefulWidget {
  const EditGenderInEditProfile({super.key});

  @override
  State<EditGenderInEditProfile> createState() => _EditGenderInEditProfileState();
}

class _EditGenderInEditProfileState extends State<EditGenderInEditProfile> {
  int gender = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderContainer(
          selected: gender == 1,
          onTap: () {
            setState(() {
              gender = 1;
            });
          },
          genderText: 'Male',
          gendericon: Assets.male,
        ),
        horizontalSpace(16),
        GenderContainer(
          selected: gender == 0,
          onTap: () {
          
            setState(() {
              gender = 0;
            });
          },
          genderText: 'Female',
          gendericon: Assets.female,
        ),
      ],
    );
  }
}
