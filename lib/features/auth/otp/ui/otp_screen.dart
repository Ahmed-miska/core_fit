import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  final Function() onTap;
  const OTPScreen({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainPadding(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            verticalSpace(10),
            Container(
              height: 5.h,
              width: 70.w,
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                borderRadius: BorderRadius.circular(8.r),
              ),
            ),
            verticalSpace(20),
            SvgPicture.asset(Assets.otpLogo),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'ادخل رمز التحقق او انتظر ليتم تعبئته تلقائياً 9647703333710+',
                style: TextStyles.b16,
                textAlign: TextAlign.center,
              ),
            ),
            verticalSpace(20),
            Pinput(
              length: 5,
              showCursor: true,
              defaultPinTheme: PinTheme(
                width: 50.w,
                height: 50.h,
                textStyle: TextStyles.font28Main700,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColors.inputHint,
                ),
              ),
              focusedPinTheme: PinTheme(
                width: 50.w,
                height: 50.h,
                textStyle: TextStyles.font12Main600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: AppColors.main),
                ),
              ),
              errorPinTheme: PinTheme(
                width: 50.w,
                height: 50.h,
                textStyle: TextStyles.font12Main600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: AppColors.red,
                ),
              ),
              onCompleted: (value) {},
              onChanged: (value) {},
            ),
            verticalSpace(20),
            Row(
              children: [
                Text('00:48', style: TextStyles.r14),
                const Spacer(),
                Text(
                  'اعادة ارسال الرمز',
                  style: TextStyles.font14Main700,
                ),
              ],
            ),
            verticalSpace(20),
            AppTextButton(
              text: 'تأكيد',
              onTap: onTap,
            ),
            verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
