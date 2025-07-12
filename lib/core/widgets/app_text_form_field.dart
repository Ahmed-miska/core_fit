import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contantPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? backgroundColor;
  final Function(String) validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  final TextDirection? textDirection;
  final FocusNode? focusNode;
  final Function()? onEditingComplete;
  final TextInputAction? textInputAction;
  final int? maxLines;

  const AppTextFormField({
    super.key,
    this.contantPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.backgroundColor,
    required this.validator,
    this.controller,
    this.prefixIcon,
    this.keyboardType,
    this.readOnly,
    this.onTap,
    this.onChanged,
    this.textDirection,
    this.focusNode,
    this.onEditingComplete,
    this.textInputAction,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines ?? 1,
      textInputAction: textInputAction,
      focusNode: focusNode,
      onEditingComplete: onEditingComplete,
      textDirection: textDirection ?? TextDirection.ltr,
      readOnly: readOnly ?? false,
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contantPadding ?? EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.main, width: 1),
              borderRadius: BorderRadius.circular(16),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.inputStroke, width: 1),
              borderRadius: BorderRadius.circular(16),
            ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 1.3),
          borderRadius: BorderRadius.circular(16),
        ),
        hintStyle: hintStyle ?? TextStyles.font14Gray400,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: backgroundColor ?? AppColors.inputBG,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: inputTextStyle ?? TextStyles.font14Dark700,
      validator: (value) {
        return validator(value!);
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onTap: onTap,
      onChanged: onChanged,
    );
  }
}
