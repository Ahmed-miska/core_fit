import 'package:core_fit/core/helpers/assets.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_search_bar.dart';
import 'package:core_fit/features/market/market_store/logic/cubits/market/market_cubit.dart';
import 'package:core_fit/features/market/stores/ui/widgets/stores_list_view.dart';
import 'package:core_fit/features/market/stores/ui/widgets/types_item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class StoresScreen extends StatelessWidget {
  const StoresScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: Text('Stores', style: TextStyles.b16),
        leading: InkWell(
            onTap: () {
              context.pop();
            },
            child: Padding(padding: const EdgeInsets.all(16), child: SvgPicture.asset(Assets.backArrow))),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 35.h,
            child: TypesItemsListView(
              onCategorySelected: (id) {
                context.read<MarketCubit>().categoryId = id.toString();
                context.read<MarketCubit>().reset();
              },
            ),
          ),
          verticalSpace(16),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomSearchBar(
                controller: context.read<MarketCubit>().marketSearchController,
                onSearch: () {
                  context.read<MarketCubit>().reset();
                },
                onClear: () {
                  context.read<MarketCubit>().marketSearchController.clear();
                  context.read<MarketCubit>().reset();
                },
              )),
          const Expanded(
            child: StoresListView(),
          ),
        ],
      ),
    );
  }
}
