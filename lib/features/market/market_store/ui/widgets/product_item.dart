import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/function.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/add_favorite_icon.dart';
import 'package:core_fit/core/widgets/app_text_button.dart';
import 'package:core_fit/core/widgets/custom_cached_image.dart';
import 'package:core_fit/core/widgets/loading_widget.dart';
import 'package:core_fit/features/market/cart/logic/cubit/cart_cubit.dart';
import 'package:core_fit/features/market/market_home/logic/favorite/favorite_cubit.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/offer_padge.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatefulWidget {
  final bool? isOrder;
  final Product productModel;
  const ProductItem({super.key, required this.productModel, this.isOrder = false});

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.productDetailsScreen, arguments: widget.productModel.id);
      },
      child: IntrinsicWidth(
        child: Container(
          constraints: BoxConstraints(minWidth: 170.w, maxWidth: 200.w),
          padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 6.w),
          // width: 170.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.lightGrey, width: 1),
            color: AppColors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// صورة المنتج والمفضلة والعرض
              Container(
                height: 120.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.inputHint,
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    /// صورة المنتج
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: CustomCachedImage(
                        imageUrl: widget.productModel.images!.isEmpty ? '' : widget.productModel.images!.first,
                        fit: BoxFit.fill,
                      ),
                    ),

                    /// أيقونة المفضلة
                    !widget.isOrder!
                        ? Align(
                            alignment: Alignment.topRight,
                            child: BlocListener<FavoriteCubit, FavoriteState>(
                              bloc: getIt<FavoriteCubit>(),
                              listener: (context, state) {
                                state.maybeWhen(
                                  success: (success) {
                                    for (var element in success) {
                                      if (element.id == widget.productModel.id) {
                                        widget.productModel.favourite = true;
                                        break;
                                      } else {
                                        widget.productModel.favourite = false;
                                      }
                                      setState(() {});
                                    }
                                  },
                                  orElse: () {},
                                );
                              },
                              child: AddFavoriteIcon(
                                onTap: () async {
                                  await getIt<FavoriteCubit>().toggleFavorite(widget.productModel.id!, widget.productModel.favourite!);
                                },
                                isFavorite: widget.productModel.favourite ?? false,
                              ),
                            ),
                          )
                        : SizedBox(),

                    /// شارة العرض إذا كان هناك خصم
                    if (widget.productModel.offer != 0)
                      Align(
                        alignment: Alignment.topLeft,
                        child: OfferPadge(title: widget.productModel.offer.toString()),
                      ),
                  ],
                ),
              ),

              verticalSpace(8),

              /// وصف المنتج
              Text(
                widget.productModel.name ?? '',
                style: TextStyles.font14Dark400,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              /// اسم المنتج
              Text(
                widget.productModel.subCategoryName ?? '',
                style: TextStyles.font12Main600,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              verticalSpace(8),

              /// السعر القديم والجديد
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// السعر الجديد (بعد الخصم)
                  Flexible(
                    child: Text(
                      '${calculateNewPrice(widget.productModel.price!, widget.productModel.offer!)} EG',
                      style: TextStyles.font14Dark700,
                    ),
                  ),

                  /// السعر القديم (يظهر فقط إذا كان هناك خصم)
                  if (widget.productModel.offer != 0)
                    Flexible(
                      child: Text(
                        '${widget.productModel.price} EG',
                        style: TextStyles.font12Gray400.copyWith(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.red,
                        ),
                        overflow: TextOverflow.ellipsis, // يمنع الـ Overflow
                      ),
                    ),

                  /// زر إضافة المنتج إلى السلة
                ],
              ),
              !widget.isOrder!
                  ? BlocBuilder<CartCubit, CartState>(
                      bloc: getIt<CartCubit>(),
                      builder: (context, state) {
                        return AppTextButton(
                          hight: 30,
                          onTap: () async {
                            loadingDialog(context);
                            await getIt<CartCubit>().addCartItem(widget.productModel.id!, 1);
                            getIt<CartCubit>().state.maybeWhen(
                                  addSuccess: (data) {
                                    context.pop();
                                  },
                                  addError: (error) {
                                    context.pop();
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          backgroundColor: AppColors.white,
                                          title: Text('Error', style: TextStyles.font28Dark700),
                                          content: Text('You can\'t add items from another market. Remove existing cart items first.', style: TextStyles.font14Dark400),
                                          actions: [
                                            TextButton(
                                              child: const Text('Cancel', style: TextStyle(color: AppColors.red)),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ),
                                            TextButton(
                                              child: const Text('OK', style: TextStyle(color: AppColors.main)),
                                              onPressed: () async {
                                                loadingDialog(context);
                                                await getIt<CartCubit>().deleteCartItem();
                                                getIt<CartCubit>().state.maybeWhen(
                                                  deleteSuccess: (data) async {
                                                    await getIt<CartCubit>().addCartItem(widget.productModel.id!, 1);
                                                    // ignore: use_build_context_synchronously
                                                    context.pop();
                                                    // ignore: use_build_context_synchronously
                                                    context.pop();
                                                  },
                                                  deleteError: (error) {
                                                    context.pop();
                                                  },
                                                  orElse: () {
                                                    context.pop();
                                                  },
                                                );
                                              },
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  },
                                  orElse: () {},
                                );
                          },
                          text: 'Add to Cart',
                        );
                      },
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
