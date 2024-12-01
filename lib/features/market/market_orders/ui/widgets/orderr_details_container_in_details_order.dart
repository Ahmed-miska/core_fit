import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:flutter/material.dart';

class OrderDetailsContainerInDetailsOrder extends StatelessWidget {
  const OrderDetailsContainerInDetailsOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.mainBG,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('2024/11/29 . 8:00 م', style: TextStyles.font12Dark400),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.location_on_outlined, color: AppColors.main),
            title: Text('Delivery address', style: TextStyles.font12Gray400),
            subtitle: Text('Cairo , 5th of october street', style: TextStyles.font14Dark700),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.payment_outlined, color: AppColors.main),
            title: Text('Payment method', style: TextStyles.font12Gray400),
            subtitle: Text('Cash', style: TextStyles.font14Dark700),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.notes_outlined, color: AppColors.main),
            title: Text('Notes', style: TextStyles.font12Gray400),
            subtitle: Text('Any notes', style: TextStyles.font14Dark700),
          ),
        ],
      ),
    );
  }
}
