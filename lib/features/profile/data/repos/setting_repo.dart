import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/profile/data/api/setting_services.dart';
import 'package:core_fit/features/profile/data/models/app_contant_response_model.dart';
import 'package:core_fit/features/profile/data/models/support_request_model.dart';
import 'package:core_fit/features/profile/data/models/transactions_response_model.dart';
import 'package:core_fit/features/profile/data/models/wallet_response_model.dart';

class SettingRepo {
  final SettingServices _settingServices;

  SettingRepo(this._settingServices);

  Future<ApiResult<WalletResponseModel>> getWallet() async {
    try {
      final response = await _settingServices.getWallet();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<TransactionsResponseModel>> getWalletTransactions() async {
    try {
      final response = await _settingServices.getWalletTransactions();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<MessageResponseModel>> contactUs(SupportRequestModel model) async {
    try {
      final response = await _settingServices.contactUs(model);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }

  Future<ApiResult<AppContantResponseModel>> getAppContant() async {
    try {
      final response = await _settingServices.getAppContant();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e));
    }
  }
}
