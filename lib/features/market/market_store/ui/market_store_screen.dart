import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/helpers/test_lists.dart';
import 'package:core_fit/features/home/ui/widgets/home_swiper.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/items_types_list_view.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/market_home_products_list_view.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/show_more_stores_row.dart';
import 'package:core_fit/features/market/market_store/ui/widgets/verified_stores_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MarketStoresScreen extends StatelessWidget {
  const MarketStoresScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        verticalSpace(10),
        SizedBox(height: 172.h, child: HomeSwiper(swiperImages: testSwiperImages)),
        verticalSpace(20),
        SizedBox(height: 100.h, child: const ItemsTypesListView()),
        verticalSpace(20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: ShowMoreStoresRow(
            onTap: () {},
            title: 'Verified Stores',
            subtitle: 'Shops that have been verified',
          ),
        ),
        verticalSpace(16),
        SizedBox(height: 140.h, child: const VerifiedStoresListView()),
        verticalSpace(20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: ShowMoreStoresRow(
            onTap: () {},
            title: 'Most requested',
            subtitle: 'Most requested products from stores',
          ),
        ),
        verticalSpace(16),
        SizedBox(height: 300.h, child: const MarketHomeProductsListView()),
      ],
    );
  }
}
