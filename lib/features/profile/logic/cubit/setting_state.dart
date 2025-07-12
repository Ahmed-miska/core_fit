part of 'setting_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial() = _Initial;

  const factory SettingState.walletLoadding() = WalletLoadding;

  const factory SettingState.walletSuccess(WalletResponseModel walletResponseModel) = WalletSuccess;

  const factory SettingState.walletError(String error) = WalletError;


  const factory SettingState.walletTransactionLoadding() = WalletTransactionLoadding;

  const factory SettingState.walletTransactionSuccess(List<Transaction> transactionList) = WalletTransactionSuccess;

  const factory SettingState.walletTransactionError(String error) = WalletTransactionError;


  const factory SettingState.contactUsLoadding() = ContactUsLoadding;

  const factory SettingState.contactUsSuccess(String message) = ContactUsSuccess;

  const factory SettingState.contactUsError(String error) = ContactUsError;

  const factory SettingState.getAppContantLoadding() = GetAppContant;
  const factory SettingState.getAppContantSuccess(AppContantResponseModel appContantResponseModel) = GetAppContantSuccess;
  const factory SettingState.getAppContantError(String error) = GetAppContantError;
}
