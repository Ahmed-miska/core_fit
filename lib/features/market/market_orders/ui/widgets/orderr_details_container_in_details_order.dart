import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/market/market_orders/data/models/order_details_response_model.dart';
import 'package:flutter/material.dart';

class OrderDetailsContainerInDetailsOrder extends StatelessWidget {
  final OrderDetailsItem order;
  const OrderDetailsContainerInDetailsOrder({
    super.key,
    required this.order,
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
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(order.createdAt, style: TextStyles.font12Dark400),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.location_on_outlined, color: AppColors.main),
            title: Text('Delivery address', style: TextStyles.font12Gray400),
            subtitle: Text(order.clientAddress ?? '', style: TextStyles.font14Dark700),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Icons.payment_outlined, color: AppColors.main),
            title: Text('Payment method', style: TextStyles.font12Gray400),
            subtitle: Text(order.paymentMethod ?? '', style: TextStyles.font14Dark700),
          ),
          order.additionalInfo != null && order.additionalInfo != ''
              ? ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.notes_outlined, color: AppColors.main),
                  title: Text('Notes', style: TextStyles.font12Gray400),
                  subtitle: Text(order.additionalInfo ?? '', style: TextStyles.font14Dark700),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
