import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/theming/styles.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/notifacation/logic/cubit/notifactions_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotifacationsScreen extends StatefulWidget {
  const NotifacationsScreen({super.key});

  @override
  State<NotifacationsScreen> createState() => _NotifacationsScreenState();
}

class _NotifacationsScreenState extends State<NotifacationsScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      getIt<NotifactionsCubit>().notifactions.clear();
      getIt<NotifactionsCubit>().getNotifactions();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Notifacations'),
      body: Padding(
        padding: mainPadding(),
        child: BlocBuilder<NotifactionsCubit, NotifactionsState>(
          bloc: getIt<NotifactionsCubit>(),
          buildWhen: (previous, current) => current is NotifactionsLoading || current is NotifactionsFailure || current is NotifactionsSuccess,
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () => const Center(child: CircularProgressIndicator()),
              notifactionsLoading: () => const Center(child: CircularProgressIndicator()),
              notifactionsFailure: (failure) => Center(child: Text(failure)),
              notifactionsSuccess: (success) => getIt<NotifactionsCubit>().notifactions.isEmpty
                  ? const Center(child: Text('No notifactions'))
                  : ListView.builder(
                      itemCount: getIt<NotifactionsCubit>().notifactions.length,
                      itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.lightGrey),
                          color: getIt<NotifactionsCubit>().notifactions[index].isRead == false ? AppColors.mainBG : Colors.transparent,
                        ),
                        child: ListTile(
                          title: Text(
                            getIt<NotifactionsCubit>().notifactions[index].title ?? '',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyles.font16Dark700,
                          ),
                          subtitle: Text(getIt<NotifactionsCubit>().notifactions[index].createdAt!.substring(0, 10).toString(), maxLines: 2, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
            );
          },
        ),
      ),
    );
  }
}
