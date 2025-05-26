import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/market/market_orders/data/models/order_details_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TotalPriceAndDetailsInDetailsOrder extends StatelessWidget {
  final OrderDetailsItem order;
  const TotalPriceAndDetailsInDetailsOrder({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: AppColors.inputStroke, boxShadow: [
        BoxShadow(
          // ignore: deprecated_member_use
          color: AppColors.dark.withOpacity(.1),
          blurRadius: 2,
          offset: const Offset(0, 2),
        )
      ]),
      child: Column(
        children: [
          ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: order.orderItems?.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(order.orderItems?[index].name ?? '', style: TextStyles.font14Dark700, maxLines: 3, textAlign: TextAlign.start),
                      ),
                      horizontalSpace(8),
                      Text("x ${order.orderItems?[index].count ?? '0'}", style: TextStyles.font14Dark400),
                      horizontalSpace(8),
                      Text(order.orderItems?[index].price.toString() ?? '', style: TextStyles.font16Dark700),
                      horizontalSpace(8),
                      Text('EG', style: TextStyles.font14Gray400),
                    ],
                  ),
                  Divider(color: AppColors.grey.withOpacity(.2), thickness: 1, height: 30.h),
                ],
              );
            },
          ),
          verticalSpace(10),
          Row(
            children: [
              Text('Total Price : ', style: TextStyles.font18Dark700),
              const Spacer(),
              Text(order.totalPrice.toString(), style: TextStyles.font18Main600),
              horizontalSpace(8),
              Text('EG', style: TextStyles.font14Main700),
            ],
          ),
        ],
      ),
    );
  }
}
