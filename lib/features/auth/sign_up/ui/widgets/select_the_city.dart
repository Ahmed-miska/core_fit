import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/features/auth/sign_up/data/models/governorates_response_model.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectTheCity extends StatefulWidget {
    final List<Governorate> governorateList;
  final String hintText;
  const SelectTheCity({super.key, required this.governorateList, required this.hintText});

  @override
  State<SelectTheCity> createState() => _SelectTheCityState();
}

class _SelectTheCityState extends State<SelectTheCity> {
  @override
    Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Container(
        height: 350.h,
        width: 300.w,
        padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xffF9F9F9),
        ),
        child: Column(
          children: [
            AppTextFormField(
                controller: getIt<SignupCubit>().governorateController,
                hintText: widget.hintText,
                prefixIcon: const Icon(Icons.search),
                onChanged: (p0) async {},
                validator: (value) {
                  return null;
                }),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: widget.governorateList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        print(widget.governorateList[index].name);
                        getIt<SignupCubit>().governorateController.text = widget.governorateList[index].name ?? '';
                        print(getIt<SignupCubit>().governorateController.text);
                        getIt<SignupCubit>().governorateId = widget.governorateList[index].id ?? 0;
                        print('${getIt<SignupCubit>().governorateId}');

                        setState(() {});
                      },
                      child: Text(
                        widget.governorateList[index].name ?? '',
                        style: TextStyles.font16Dark700,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
