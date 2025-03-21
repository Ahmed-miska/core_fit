import 'dart:async' show Timer;
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

class ForgetPasswordBottomSheet extends StatefulWidget {
  final String email;
  final Function() onResentOtp;
  final Function() onVerifyOtp;
  final TextEditingController otpController ;
  const ForgetPasswordBottomSheet({super.key, required this.email, required this.onResentOtp, required this.onVerifyOtp, required this.otpController});

  @override
  State<ForgetPasswordBottomSheet> createState() => _ForgetPasswordBottomSheetState();
}

class _ForgetPasswordBottomSheetState extends State<ForgetPasswordBottomSheet> {
    Timer? _timer;
  int _start = 10;
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }
  void resetTimer() {
    setState(() {
      _start = 10;
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void resentOtp() {
    context.pop();
    widget.onResentOtp();
    resetTimer();
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.dark,
            blurRadius: 4,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Padding(
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
                  'ادخل رمز التحقق او انتظر ليتم تعبئته تلقائياً ${widget.email}',
                  style: TextStyles.b16,
                  textAlign: TextAlign.center,
                ),
              ),
              verticalSpace(20),
              Pinput(
                length: 6,
             controller: widget.otpController,
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
                  Text('00:$_start', style: TextStyles.r14),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      if (_start == 0) {
                        resentOtp();
                      }
                    },
                    child: Text(
                      'اعادة ارسال الرمز',
                      style: _start == 0 ? TextStyles.font14Main700 : TextStyles.font12Gray400,
                    ),
                  ),
                ],
              ),
              verticalSpace(20),
              AppTextButton(
                text: 'تأكيد',
                onTap: widget.onVerifyOtp,
                color: AppColors.main,
              ),
              verticalSpace(20),
            ],
          ),
        ),
      ),
    );
  }
}