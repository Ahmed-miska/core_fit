import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectArea extends StatefulWidget {
  final String hintText;

  const SelectArea({super.key, required this.hintText});

  @override
  State<SelectArea> createState() => _SelectAreaState();
}

class _SelectAreaState extends State<SelectArea> {
  List<String> areasList = [
    'الجزيره',
    'المنطقه الشرقيه',
    'المنطقه الشماليه',
    'المنطقه الغربيه',
    'المنطقه الشرقيه',
    'المنطقه الشماليه',
    'المنطقه الغربيه',
  ];

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
                hintText: widget.hintText,
                prefixIcon: const Icon(Icons.search),
                onChanged: (p0) async {},
                validator: (value) {
                  return null;
                }),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: areasList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        areasList[index],
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
