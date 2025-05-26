import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/market/market_orders/data/models/order_details_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class OrderStatusInDetailsOrder extends StatefulWidget {
  final OrderDetailsItem order;
  const OrderStatusInDetailsOrder({
    super.key,
    required this.order,
  });

  @override
  State<OrderStatusInDetailsOrder> createState() => _OrderStatusInDetailsOrderState();
}

class _OrderStatusInDetailsOrderState extends State<OrderStatusInDetailsOrder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.white,
        border: Border.all(color: AppColors.lightGrey),
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
          Row(
            children: [
              SvgPicture.asset(Assets.order1),
              horizontalSpace(12),
              Text(widget.order.status ?? '', style: TextStyles.font14Dark700),
            ],
          ),
          verticalSpace(12),
          LinearPercentIndicator(
            padding: EdgeInsets.zero,
            animation: true,
            animationDuration: 1000,
            lineHeight: 10,
            percent: statusPercent(),
            barRadius: const Radius.circular(100),
            backgroundColor: AppColors.lightGrey,
            progressColor: AppColors.main,
          ),
        ],
      ),
    );
  }

  statusPercent() {
    switch (widget.order.status) {
      case 'ORDER_RECEIVED':
        return 0.2;
      case 'ORDER_CONFIRMED':
        return 0.4;
      case 'ORDER_UNDER_PREPARATION':
        return 0.6;
      case 'ORDER_UNDER_DELIVERY':
        return 0.8;
      case 'ORDER_DELIVERED':
        return 1.0;
      case 'ORDER_CANCELED':
        return 0.0;
      default:
        return 0.0;
    }
  }
}
