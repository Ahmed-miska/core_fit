import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/features/auth/sign_up/data/models/governorates_response_model.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectGovernrate extends StatefulWidget {
  final String hintText;
  const SelectGovernrate({super.key, required this.hintText});
  @override
  State<SelectGovernrate> createState() => _SelectGovernrateState();
}

class _SelectGovernrateState extends State<SelectGovernrate> {
  List<Governorate> governorateList = [];
  @override
  void initState() {
    governorateList = getIt<SignupCubit>().governoratesList;
    super.initState();
  }

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
                inputTextStyle: TextStyles.font16Dark700,
                prefixIcon: const Icon(Icons.search),
                onChanged: (p0) async {
                  governorateList = getIt<SignupCubit>().governoratesList.where((element) => element.name!.toLowerCase().contains(p0.toLowerCase())).toList();
                  setState(() {});
                },
                validator: (value) {
                  return null;
                }),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: governorateList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () async {
                        // print(governorateList[index].name);
                        getIt<SignupCubit>().governorateController.text = governorateList[index].name ?? '';
                        // print(getIt<SignupCubit>().governorateController.text);
                        getIt<SignupCubit>().governorateId = governorateList[index].id ?? 0;
                        // print('${getIt<SignupCubit>().governorateId}');
                        getIt<SignupCubit>().cityController.clear();
                        getIt<SignupCubit>().citiesList = [];
                        getIt<SignupCubit>().getCities(governorateList[index].id.toString());
                        context.pop();
                      },
                      child: Text(
                        governorateList[index].name ?? '',
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
