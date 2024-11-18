import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GenderContainer extends StatefulWidget {
  final bool selected;
  final Function() onTap;
  final String genderText;
  final String gendericon;
  const GenderContainer({
    super.key,
    required this.selected,
    required this.onTap,
    required this.genderText,
    required this.gendericon,
  });

  @override
  State<GenderContainer> createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.onTap,
        child: AnimatedContainer(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: widget.selected ? AppColors.main : AppColors.mainBG,
              width: 2,
            ),
            color: widget.selected ? AppColors.mainBG : AppColors.inputBG,
          ),
          duration: const Duration(milliseconds: 400),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(widget.gendericon),
              horizontalSpace(10),
              Text(widget.genderText, style: TextStyles.font18Dark600.copyWith(color: widget.selected ? AppColors.main : AppColors.grey)),
            ],
          ),
        ),
      ),
    );
  }
}
