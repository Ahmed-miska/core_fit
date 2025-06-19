import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/helpers/spacing.dart';
import 'package:core_fit/core/routing/routes.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/features/reservation/reservation_type/ui/widgets/search_for_staduim_bar.dart';
import 'package:core_fit/features/reservation/staduims/logic/play_grounds_cubit/playgrounds_cubit.dart';
import 'package:core_fit/features/reservation/staduims/ui/widgets/staduim_item_in_staduims_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theming/colors.dart';

class StaduimsScreen extends StatefulWidget {
  const StaduimsScreen({super.key});

  @override
  State<StaduimsScreen> createState() => _StaduimsScreenState();
}

class _StaduimsScreenState extends State<StaduimsScreen> {
  final cubit = getIt<PlaygroundsCubit>();
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.pixels == scrollController.position.maxScrollExtent) {
        if (cubit.page < cubit.totalPages) {
          cubit.page++;
          cubit.getPlaygrounds();
        }
      }
    });
    cubit.getPlaygrounds();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: mainPadding(),
        child: ListView(
          controller: scrollController,
          shrinkWrap: true,
          children: [
            SearchForStaduimBar(
              cuibt: cubit,
            ),
            verticalSpace(12),
            BlocBuilder<PlaygroundsCubit, PlaygroundsState>(
              buildWhen: (previous, current) => current is GetPlaygroundsLoading || current is GetPlaygroundsSuccess || current is GetPlaygroundsFailure,
              bloc: cubit,
              builder: (context, state) {
                return state.maybeWhen(
                  getPlaygroundsLoading: () => Center(
                      child: CircularProgressIndicator(
                    color: AppColors.main,
                  )),
                  getPlaygroundsFailure: (error) {
                    return Center(
                      child: Text(error, style: TextStyles.font16Dark700),
                    );
                  },
                  getPlaygroundsSuccess: (playgrounds) {
                    return playgrounds.isEmpty
                        ? Center(child: Text('No Playgrounds Found', style: TextStyles.font16Dark700))
                        : ListView.builder(
                            itemCount: playgrounds.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(bottom: 12),
                                child: InkWell(
                                  onTap: () {
                                    context.pushNamed(Routes.staduimDetailsScreen, arguments: playgrounds[index]);
                                  },
                                  child: StaduimItemInStaduimsScreen(
                                    playground: playgrounds[index],
                                  ),
                                ),
                              );
                            },
                          );
                  },
                  orElse: () => const Center(child: CircularProgressIndicator()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
