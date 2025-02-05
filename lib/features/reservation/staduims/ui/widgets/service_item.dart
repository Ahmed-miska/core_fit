import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class ServiceItem extends StatefulWidget {
  const ServiceItem({
    super.key,
  });

  @override
  State<ServiceItem> createState() => _ServiceItemState();
}

class _ServiceItemState extends State<ServiceItem> {
  bool isHovered = false;
  @override
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          isHovered = !isHovered;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: isHovered ? AppColors.main : AppColors.white,
          border: Border.all(color: AppColors.lightGrey),
          boxShadow: const [
            BoxShadow(
              color: AppColors.lightGrey,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Text('Service ', style: isHovered ? TextStyles.font12White600 : TextStyles.font12Dark400),
      ),
    );
  }
}
