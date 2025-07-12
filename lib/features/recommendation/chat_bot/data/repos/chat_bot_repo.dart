
import 'package:core_fit/core/helpers/shared_pref_helper.dart';
import 'package:core_fit/core/networking/api_error_handler.dart';
import 'package:core_fit/core/networking/api_result.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/recommendation/chat_bot/data/apis/chat_bot_services.dart';
import 'package:core_fit/features/recommendation/chat_bot/data/model/auth_request_model.dart';
import 'package:core_fit/features/recommendation/chat_bot/data/model/chat_reply.dart';
import 'package:core_fit/features/recommendation/chat_bot/data/model/chat_history_message.dart';

class ChatBotRepo {
  final ChatBotServices chatBotServices;

  ChatBotRepo(this.chatBotServices);

  Future<ApiResult<MessageResponseModel>> register(AuthRequestModel authRequestModel) async {
    try {
      final response = await chatBotServices.register(
        authRequestModel.username,
        authRequestModel.password,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e.toString()));
    }
  }

  Future<ApiResult<MessageResponseModel>> login(AuthRequestModel authRequestModel) async {
    try {
      final response = await chatBotServices.login(
        authRequestModel.username,
        authRequestModel.password,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e.toString()));
    }
  }

  Future<ApiResult<ChatReply>> ask(String message) async {
    try {
      final userEmail = SharedPrefHelper().getUserData()?.email ?? '';
      final cookie = 'username=$userEmail';
      print('Sending chat request with cookie: $cookie, message: $message');
      final response = await chatBotServices.ask(cookie, message);
      return ApiResult.success(response);
    } catch (e) {
      print('Chat ask error: $e');
      return ApiResult.failure(ErrorHandler.handle(e.toString()));
    }
  }

  Future<ApiResult<List<ChatHistoryMessage>>> getHistory() async {
    try {
      final userEmail = SharedPrefHelper().getUserData()?.email ?? '';
      final cookie = 'username=$userEmail';
      final response = await chatBotServices.getHistory(cookie);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ErrorHandler.handle(e.toString()));
    }
  }
}
