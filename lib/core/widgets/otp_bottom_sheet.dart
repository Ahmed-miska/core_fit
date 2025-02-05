import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/features/auth/otp/ui/otp_screen.dart';
import 'package:flutter/material.dart';

Future<dynamic> otpBottomSheet(BuildContext context ,final VoidCallback onTap) {
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: AppColors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
    clipBehavior: Clip.hardEdge,
    context: context,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child:  OTPScreen(
          onTap: onTap ,
        ),
      ); // Your custom widget
    },
  );
}
