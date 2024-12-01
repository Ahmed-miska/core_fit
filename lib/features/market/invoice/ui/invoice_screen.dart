import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/market/invoice/ui/widgets/products_list_in_voice.dart';
import 'package:flutter/material.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Invoice'),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const ProductsListInInvoice(),
                verticalSpace(16),
                Padding(
                  padding: mainPadding(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Customer Name', style: TextStyles.font18Dark600),
                      verticalSpace(8),
                      AppTextFormField(hintText: 'Name', validator: (string) {}),
                      verticalSpace(16),
                      Text('Phone Number', style: TextStyles.font18Dark600),
                      verticalSpace(8),
                      AppTextFormField(hintText: 'Phone Number', validator: (string) {}),
                      verticalSpace(16),
                      Text('Address', style: TextStyles.font18Dark600),
                      verticalSpace(8),
                      AppTextFormField(hintText: 'Address', validator: (string) {}),
                      verticalSpace(16),
                      Text('Note', style: TextStyles.font18Dark600),
                      verticalSpace(8),
                      AppTextFormField(hintText: 'Note', maxLines: 5, validator: (string) {}),
                      verticalSpace(16),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: mainPadding(),
            child: AppTextButton(
              text: 'Order Now',
              onTap: () {
                context.pushNamed(Routes.marketHomeScreen);
              },
            ),
          ),
          verticalSpace(16),
        ],
      ),
    );
  }
}

// class PaymentMethodContainer extends StatelessWidget {
//   final String text;
//   final Widget? icon;
//   const PaymentMethodContainer({
//     super.key,
//     required this.text,
//     this.icon,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       padding: const EdgeInsets.all(12),
//       width: double.infinity,
//       duration: const Duration(milliseconds: 400),
//       decoration: BoxDecoration(
//         color: AppColors.grey.withOpacity(.1),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Row(
//         children: [
//           Text(text, style: TextStyles.font14Dark400),
//           const Spacer(),
//           icon ?? const SizedBox(),
//         ],
//       ),
//     );
//   }
// }
