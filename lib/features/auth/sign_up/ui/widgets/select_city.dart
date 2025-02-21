import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/features/auth/sign_up/data/models/cities_response_model.dart';
import 'package:core_fit/features/auth/sign_up/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectCity extends StatefulWidget {
  final String hintText;

  const SelectCity({super.key, required this.hintText});

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  List<City> citysList = [];
  @override
  void initState() {
    citysList = getIt<SignupCubit>().citiesList;
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
                controller: getIt<SignupCubit>().cityController,
                hintText: widget.hintText,
                inputTextStyle: TextStyles.font16Dark700,
                prefixIcon: const Icon(Icons.search),
                onChanged: (p0) async {
                  citysList = getIt<SignupCubit>().citiesList.where((element) => element.name!.toLowerCase().contains(p0.toLowerCase())).toList();
                },
                validator: (value) {
                  return null;
                }),
            citysList.isEmpty ? const Center(child: Text('No cities found')) : const SizedBox(),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: citysList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        getIt<SignupCubit>().cityController.text = citysList[index].name ?? '';
                        getIt<SignupCubit>().cityId = citysList[index].id ?? 0;
                        context.pop();
                      },
                      child: Text(
                        citysList[index].name ?? '',
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
