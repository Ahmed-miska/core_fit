import 'package:core_fit/features/notifacation/data/models/notifactions_response_model.dart';
import 'package:core_fit/features/notifacation/data/repos/notifactions_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifactions_state.dart';
part 'notifactions_cubit.freezed.dart';

class NotifactionsCubit extends Cubit<NotifactionsState> {
  NotifactionsCubit(this.notifactionsRepo) : super(NotifactionsState.initial());
  final NotifactionsRepo notifactionsRepo;

  List<Notification> notifactions = [];

  Future<void> getNotifactions() async {
    emit(NotifactionsState.notifactionsLoading());
    final result = await notifactionsRepo.getNotifactions();
    result.when(
      success: (success) async {
        notifactions = success.data!.notifications!;
        emit(NotifactionsState.notifactionsSuccess(success));
      },
      failure: (failure) {
        emit(NotifactionsState.notifactionsFailure(failure.apiErrorModel.message ?? ''));
      },
    );
  }
}
