import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/select_governrate_and_city.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/select_gender_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EditProfileTextField extends StatefulWidget {
  const EditProfileTextField({super.key});

  @override
  State<EditProfileTextField> createState() => _EditProfileTextFieldState();
}

class _EditProfileTextFieldState extends State<EditProfileTextField> {
  int gender = 1;
  TextEditingController dateController = TextEditingController();
  Future<void> selectDate() async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime(2020),
      firstDate: DateTime(1960),
      lastDate: DateTime(2023),
    );
    if (selectedDate != null) {
      setState(() {
        dateController.text = '${selectedDate.year}/${selectedDate.month}/${selectedDate.day}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('User Name', style: TextStyles.font18Dark600),
        verticalSpace(8),
        AppTextFormField(
          hintText: 'Enter your username',
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            // ignore: deprecated_member_use
            child: SvgPicture.asset(Assets.user, color: AppColors.main),
          ),
          validator: (string) {},
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
          validator: (string) {},
        ),
        verticalSpace(24),
        Text('Phone', style: TextStyles.font18Dark600),
        verticalSpace(8),
        AppTextFormField(
          hintText: 'Enter your phone',
          keyboardType: TextInputType.number,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            // ignore: deprecated_member_use
            child: SvgPicture.asset(Assets.phone, color: AppColors.main),
          ),
          validator: (string) {},
        ),
        verticalSpace(24),
        Text('Birth Date', style: TextStyles.font18Dark600),
        verticalSpace(8),
        AppTextFormField(
          hintText: 'Enter your birth date',
          controller: dateController,
          readOnly: true,
          onTap: selectDate,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12),
            // ignore: deprecated_member_use
            child: SvgPicture.asset(Assets.calendar, color: AppColors.main),
          ),
          validator: (string) {},
        ),
        verticalSpace(24),
        Text('Gender', style: TextStyles.font18Dark600),
        verticalSpace(8),
        const SelectGenderRow(),
        verticalSpace(24),
        const SelectGovernRateAndCity(),
        verticalSpace(20),
      ],
    );
  }
}
