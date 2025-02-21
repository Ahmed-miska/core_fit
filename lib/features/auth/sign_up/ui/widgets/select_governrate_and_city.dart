import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/select_city.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/select_governrate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SelectGovernRateAndCity extends StatelessWidget {
  const SelectGovernRateAndCity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('The governorate', style: TextStyles.font18Dark600),
              verticalSpace(8),
              AppTextFormField(
                controller: context.read<SignupCubit>().governorateController,
                readOnly: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  // ignore: deprecated_member_use
                  child: SvgPicture.asset(Assets.flag, color: AppColors.main),
                ),
                suffixIcon: const Icon(Icons.arrow_drop_down, color: AppColors.dark),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    useSafeArea: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => SelectGovernrate(
                      hintText: 'The governorate',
                    ),
                  );
                },
                hintText: 'The governorate',
                validator: (string) {
                  if (string.isEmpty || context.read<SignupCubit>().governoratesList.where((element) => element.name!.toLowerCase().contains(string.toLowerCase())).isEmpty) {
                    return 'Please enter a valid governorate';
                  }
                },
              ),
            ],
          ),
        ),
        horizontalSpace(16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('The city', style: TextStyles.font18Dark600),
              verticalSpace(8),
              AppTextFormField(
                readOnly: true,
                controller: context.read<SignupCubit>().cityController,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  // ignore: deprecated_member_use
                  child: SvgPicture.asset(Assets.tawn, color: AppColors.main),
                ),
                suffixIcon: const Icon(Icons.arrow_drop_down, color: AppColors.dark),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    useSafeArea: true,
                    backgroundColor: Colors.transparent,
                    builder: (contextt) => const SelectCity(
                      hintText: 'The city',
                    ),
                  );
                },
                hintText: 'The city',
                validator: (string) {
                  if (string.isEmpty) {
                    return 'Please enter a valid city';
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
