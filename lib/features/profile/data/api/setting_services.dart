import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/profile/data/models/app_contant_response_model.dart';
import 'package:core_fit/features/profile/data/models/support_request_model.dart';
import 'package:core_fit/features/profile/data/models/transactions_response_model.dart';
import 'package:core_fit/features/profile/data/models/wallet_response_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'setting_services.g.dart';
@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SettingServices  {
  factory SettingServices(Dio dio, {String baseUrl}) = _SettingServices;
  
  @GET('wallet')
  Future<WalletResponseModel> getWallet();

  @GET('wallet/transactions')
  Future<TransactionsResponseModel> getWalletTransactions();

  @POST('contact')
  Future<MessageResponseModel> contactUs(@Body() SupportRequestModel model);

  @GET('app-content')
  Future<AppContantResponseModel> getAppContant();
}