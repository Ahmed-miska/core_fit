part of 'chatbot_cubit.dart';

@freezed
class ChatbotState with _$ChatbotState {
  const factory ChatbotState.initial() = _Initial;

  const factory ChatbotState.registerLoading() = RegisterLoading;
  const factory ChatbotState.registerSuccess(MessageResponseModel response) = RegisterSuccess;
  const factory ChatbotState.registerError(String error) = RegisterError;

  const factory ChatbotState.loginLoading() = LoginLoading;
  const factory ChatbotState.loginSuccess(MessageResponseModel response) = LoginSuccess;
  const factory ChatbotState.loginError(String error) = LoginError;

  const factory ChatbotState.askLoading() = AskLoading;
  const factory ChatbotState.askSuccess(ChatReply response) = AskSuccess;
  const factory ChatbotState.askError(String error) = AskError;

  const factory ChatbotState.historyLoading() = HistoryLoading;
  const factory ChatbotState.historySuccess(List<ChatHistoryMessage> history) = HistorySuccess;
  const factory ChatbotState.historyError(String error) = HistoryError;
}
