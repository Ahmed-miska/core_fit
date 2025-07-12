import 'package:core_fit/core/helpers/extensions.dart';
import 'package:core_fit/features/profile/data/models/app_contant_response_model.dart';
import 'package:core_fit/features/profile/data/models/support_request_model.dart';
import 'package:core_fit/features/profile/data/models/transactions_response_model.dart';
import 'package:core_fit/features/profile/data/models/wallet_response_model.dart';
import 'package:core_fit/features/profile/data/repos/setting_repo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.dart';
part 'setting_cubit.freezed.dart';

class SettingCubit extends Cubit<SettingState> {
  SettingCubit(this._settingRepo) : super(SettingState.initial());

  final SettingRepo _settingRepo;

  Future<void> getWallet() async {
    emit(SettingState.walletLoadding());
    final result = await _settingRepo.getWallet();
    result.when(
      success: (success) async {
        await getWalletTransactions();
        emit(SettingState.walletSuccess(success));
      },
      failure: (failure) {
        emit(SettingState.walletError(failure.apiErrorModel.message ?? ''));
      },
    );
  }

  List<Transaction> transactionList = [];

  Future<void> getWalletTransactions() async {
    emit(SettingState.walletTransactionLoadding());
    final result = await _settingRepo.getWalletTransactions();
    result.when(
      success: (success) {
        transactionList = success.data!.transactions ?? [];
        emit(SettingState.walletTransactionSuccess(success.data!.transactions ?? []));
      },
      failure: (failure) {
        emit(SettingState.walletTransactionError(failure.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> contactUs(SupportRequestModel model, BuildContext context) async {
    emit(SettingState.contactUsLoadding());
    final result = await _settingRepo.contactUs(model);
    result.when(
      success: (success) {
        context.pop();

        emit(SettingState.contactUsSuccess(success.message ?? ''));
      },
      failure: (failure) {
        emit(SettingState.contactUsError(failure.apiErrorModel.message ?? ''));
      },
    );
  }

  Future<void> getAppContant() async {
    emit(SettingState.getAppContantLoadding());
    final result = await _settingRepo.getAppContant();
    result.when(
      success: (success) {
        emit(SettingState.getAppContantSuccess(success));
      },
      failure: (failure) {
        emit(SettingState.getAppContantError(failure.apiErrorModel.message ?? ''));
      },
    );
  }
}
