import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/features/market/cart/logic/cubit/cart_cubit.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsListInInvoice extends StatelessWidget {
  const ProductsListInInvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartCubit, CartState>(
      bloc: getIt<CartCubit>(),
      builder: (context, state) {
        return SizedBox(
          height: 290.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: getIt<CartCubit>().cartResponseModel!.data!.products!.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 8, left: index == 0 ? 16 : 0),
                child: ProductItem(
                  isOrder: true,
                  productModel: Product(
                    id: getIt<CartCubit>().cartResponseModel!.data!.products![index].id,
                    name: getIt<CartCubit>().cartResponseModel!.data!.products![index].name,
                    description: getIt<CartCubit>().cartResponseModel!.data!.products![index].description,
                    price: getIt<CartCubit>().cartResponseModel!.data!.products![index].price,
                    images: getIt<CartCubit>().cartResponseModel!.data!.products![index].images,
                    offer: getIt<CartCubit>().cartResponseModel!.data!.products![index].offer,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
