import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/features/auth/sign_up/data/models/governorates_response_model.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:core_fit/features/auth/sign_up/ui/widgets/select_governrate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class SelectCity extends StatefulWidget {
  const SelectCity({
    super.key,
  });

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  List<Governorate> governorateList = [];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {
            return Text('wwwwwwwwwwwwwwwwww');
          },
          governoratesSuccess: (response) {
            governorateList = response;
          },
          governoratesError: (error) {
            print(error);
          },
        );
      },
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('The governorate', style: TextStyles.font18Dark600),
                  verticalSpace(8),
                  AppTextFormField(
                    controller: getIt<SignupCubit>().governorateController,
                    readOnly: true,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12),
                      // ignore: deprecated_member_use
                      child: SvgPicture.asset(Assets.flag, color: AppColors.main),
                    ),
                    suffixIcon: const Icon(Icons.arrow_drop_down, color: AppColors.dark),
                    onChanged: (p0) {
                      print(p0);
                    },
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        useSafeArea: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => SelectGovernrate(
                          governorateList: governorateList,
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
                      child: SvgPicture.asset(Assets.tawn, color: AppColors.main),
                    ),
                    suffixIcon: const Icon(Icons.arrow_drop_down, color: AppColors.dark),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        useSafeArea: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => const SelectGovernrate(
                          governorateList: [],
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
      },
    );
  }
}
