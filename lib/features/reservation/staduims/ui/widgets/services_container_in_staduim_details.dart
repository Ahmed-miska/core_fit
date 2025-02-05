import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/reservation/staduims/ui/widgets/service_item.dart';
import 'package:flutter/material.dart';

class ServicesContainerInStaduimDetails extends StatelessWidget {
  const ServicesContainerInStaduimDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.mainBG,
        boxShadow: const [
          BoxShadow(
            color: AppColors.lightGrey,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Available services', style: TextStyles.font16Dark700),
          verticalSpace(12),
          Wrap(
            spacing: 6,
            runSpacing: 8,
            alignment: WrapAlignment.start,
            children: List.generate(
              7,
              (index) => const ServiceItem(),
            ),
          )
        ],
      ),
    );
  }
}
