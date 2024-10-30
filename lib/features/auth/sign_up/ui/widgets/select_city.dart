import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/select_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectCity extends StatelessWidget {
  const SelectCity({
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
                readOnly: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  // ignore: deprecated_member_use
                  child: SvgPicture.asset(Assets.flag, color: AppColors.mainColor),
                ),
                suffixIcon: const Icon(Icons.arrow_drop_down, color: AppColors.darkColor),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    useSafeArea: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => const SelectArea(
                      hintText: 'The governorate',
                    ),
                  );
                },
                hintText: 'The governorate',
                validator: (string) {},
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
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  // ignore: deprecated_member_use
                  child: SvgPicture.asset(Assets.tawn, color: AppColors.mainColor),
                ),
                suffixIcon: const Icon(Icons.arrow_drop_down, color: AppColors.darkColor),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    useSafeArea: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => const SelectArea(
                      hintText: 'The city',
                    ),
                  );
                },
                hintText: 'The city',
                validator: (string) {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
