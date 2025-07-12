import 'package:core_fit/core/networking/api_constants.dart';
import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/recommendation/chat_bot/data/model/chat_history_message.dart';
import 'package:core_fit/features/recommendation/chat_bot/data/model/chat_reply.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'chat_bot_services.g.dart';

@RestApi(baseUrl: ApiConstants.aiBaseUrl)
abstract class ChatBotServices {
  factory ChatBotServices(Dio dio, {String baseUrl}) = _ChatBotServices;

  @POST('chatbot/register')
  @FormUrlEncoded()
  Future<MessageResponseModel> register(
    @Field('username') String username,
    @Field('password') String password,
  );

  @POST('chatbot/login')
  @FormUrlEncoded()
  Future<MessageResponseModel> login(
    @Field('username') String username,
    @Field('password') String password,
  );

  @POST('chatbot/ask')
  @FormUrlEncoded()
  Future<ChatReply> ask(
    @Header('Cookie') String cookie,
    @Field('message') String message,
  );

  @GET('chatbot/history')
  Future<List<ChatHistoryMessage>> getHistory(
    @Header('Cookie') String cookie,
  );
}
