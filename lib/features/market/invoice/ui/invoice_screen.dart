import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/app_regex.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/widgets/loading_widget.dart';
import 'package:core_fit/features/market/cart/logic/cubit/cart_cubit.dart';
import 'package:core_fit/features/market/invoice/ui/widgets/map_screen.dart';
import 'package:core_fit/features/market/market_orders/logic/cubit/orders_cubit.dart';
import 'package:flutter/material.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/app_text_form_field.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/market/invoice/ui/widgets/products_list_in_voice.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  InvoiceScreenState createState() => InvoiceScreenState();
}

class InvoiceScreenState extends State<InvoiceScreen> {
  final cuibt = getIt<OrdersCubit>();
  @override
  void initState() {
    cuibt.clear();
    super.initState();
  }

  void _showPaymentMethodBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Select Payment Method', style: TextStyles.font18Dark600),
                  verticalSpace(16),

                  /// Cash on Delivery option
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    decoration: BoxDecoration(
                      color: cuibt.paymentMethodController.text == "CASH_ON_DELIVERY" ? Colors.green.withOpacity(0.2) : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.attach_money, color: Colors.green),
                      title: Text("CASH ON DELIVERY", style: TextStyles.font16Dark700),
                      onTap: () {
                        cuibt.chosePaymentMethod(0);
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Divider(),

                  /// Wallet option
                  AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    decoration: BoxDecoration(
                      color: cuibt.paymentMethodController.text == "WALLET" ? Colors.green.withOpacity(0.2) : Colors.transparent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.account_balance_wallet, color: Colors.blue),
                      title: Text("WALLET", style: TextStyles.font16Dark700),
                      onTap: () {
                        cuibt.chosePaymentMethod(1);
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Invoice'),
      body: BlocBuilder<OrdersCubit, OrdersState>(
        bloc: getIt<OrdersCubit>(),
        buildWhen: (previous, current) => current is AddOrderLoading || current is AddOrderFailure || current is AddOrderSuccess,
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    const ProductsListInInvoice(),
                    verticalSpace(16),
                    Form(
                      key: cuibt.formKey,
                      child: Padding(
                        padding: mainPadding(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Customer Name', style: TextStyles.font18Dark600),
                            verticalSpace(8),
                            AppTextFormField(
                                controller: cuibt.clientName,
                                hintText: 'Name',
                                validator: (string) {
                                  if (string.isEmpty) {
                                    return 'Please enter client name';
                                  }
                                  return null;
                                }),
                            verticalSpace(16),
                            Text('Phone Number', style: TextStyles.font18Dark600),
                            verticalSpace(8),
                            AppTextFormField(
                                controller: cuibt.clientPhone,
                                hintText: 'Phone Number',
                                validator: (string) {
                                  if (AppRegex.isPhoneNumberValid(string) == false) {
                                    return 'Please enter valid phone number';
                                  }
                                  null;
                                }),
                            verticalSpace(16),
                            Text(
                              'Address',
                              style: TextStyles.font18Dark600,
                            ),
                            verticalSpace(8),
                            Row(
                              children: [
                                Expanded(
                                    child: AppTextFormField(
                                        controller: cuibt.clientAddress,
                                        hintText: 'Address',
                                        validator: (string) {
                                          if (string.isEmpty) {
                                            return 'Please enter client address';
                                          }
                                          return null;
                                        })),
                                horizontalSpace(8),
                                InkWell(
                                  onTap: () async {
                                    final result = await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const LocationPickerScreen(),
                                      ),
                                    );

                                    if (result != null) {
                                      cuibt.latitude = result.latitude.toString();
                                      cuibt.longitude = result.longitude.toString();
                                      setState(() {});
                                    }
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(12.r),
                                      decoration: BoxDecoration(
                                        color: AppColors.inputBG,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.edit_location_outlined, color: AppColors.main)),
                                )
                              ],
                            ),
                            verticalSpace(16),
                            Text('Payment Method', style: TextStyles.font18Dark600),
                            verticalSpace(8),
                            AppTextFormField(
                              hintText: 'Select Payment Method',
                              readOnly: true,
                              controller: cuibt.paymentMethodController,
                              onTap: () => _showPaymentMethodBottomSheet(context),
                              validator: (String) {},
                            ),
                            verticalSpace(16),
                            Text('Note', style: TextStyles.font18Dark600),
                            verticalSpace(8),
                            AppTextFormField(controller: cuibt.additionalInfo, hintText: 'Note', maxLines: 5, validator: (string) {}),
                            verticalSpace(16),
                          ],
                        ),
                      ),
                    ),
                    //  AddOrderBlocListener(context),
                  ],
                ),
              ),
              Padding(
                padding: mainPadding(),
                child: AppTextButton(
                  text: 'Order Now',
                  onTap: () async {
                    if (cuibt.formKey.currentState!.validate()) {
                      loadingDialog(context);
                      await cuibt.addOrder();
                      cuibt.state.maybeWhen(
                        addOrderLoading: () {
                          loadingDialog(context);
                        },
                        addOrderSuccess: () {
                          context.pop();
                          getIt<CartCubit>().getCart();
                          context.pop();
                          context.pop();
                        },
                        addOrderFailure: (error) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Icon(Icons.error, color: AppColors.red),
                                content: Text(
                                  error,
                                  style: TextStyles.font16Dark700,
                                  textAlign: TextAlign.center,
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => context.pop(),
                                    child: Text(
                                      'OK',
                                      style: TextStyles.font16Dark700.copyWith(color: AppColors.main),
                                    ),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        orElse: () => SizedBox(),
                      );
                      // context.pushNamed(Routes.marketHomeScreen);
                    }
                  },
                ),
              ),
              verticalSpace(16),
            ],
          );
        },
      ),
    );
  }
}
