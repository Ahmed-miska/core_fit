import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/core/widgets/custom_shimmer.dart';
import 'package:core_fit/features/market/market_home/logic/favorite/favorite_cubit.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/product_item.dart';
import 'package:core_fit/features/market/products/data/models/products_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  void initState() {
    getIt<FavoriteCubit>().getFavourites();
    super.initState();
  }

  List<Product> products = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Favorite'),
      body: Padding(
        padding: mainPadding(),
        child: BlocConsumer<FavoriteCubit, FavoriteState>(
          bloc: getIt<FavoriteCubit>(),

          listener: (BuildContext context, FavoriteState<dynamic> state) {
            state.maybeWhen(
              
              success: (success) {
                products = success;
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state is FavoriteLoading
                ? Center(child: CircularProgressIndicator(color: AppColors.main))
                : products.isEmpty
                    ? const Center(child: Text('No favorite products'))
                    : GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 16,
                          childAspectRatio: 0.6.sp,
                        ),
                        itemCount: products.length,
                        itemBuilder: (context, index) => ProductItem(productModel: products[index]),
                      );
          },
        ),
      ),
    );
  }
}
