import 'package:core_fit/core/networking/message_response_model.dart';
import 'package:core_fit/features/recommendation/chat_bot/data/model/auth_request_model.dart';
import 'package:core_fit/features/recommendation/chat_bot/data/model/chat_reply.dart';
import 'package:core_fit/features/recommendation/chat_bot/data/model/chat_history_message.dart';
import 'package:core_fit/features/recommendation/chat_bot/data/repos/chat_bot_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chatbot_state.dart';
part 'chatbot_cubit.freezed.dart';

class ChatbotCubit extends Cubit<ChatbotState> {
  ChatbotCubit(this.chatBotRepo) : super(ChatbotState.initial());

  final ChatBotRepo chatBotRepo;

  Future<void> register(AuthRequestModel authRequestModel) async {
    emit(ChatbotState.registerLoading());
    final result = await chatBotRepo.register(authRequestModel);
    result.when(success: (response) {
      emit(ChatbotState.registerSuccess(response));
    }, failure: (error) {
      emit(ChatbotState.registerError(error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> login(AuthRequestModel authRequestModel) async {
    emit(ChatbotState.loginLoading());
    final result = await chatBotRepo.login(authRequestModel);
    result.when(success: (response) {
      emit(ChatbotState.loginSuccess(response));
    }, failure: (error) {
      emit(ChatbotState.loginError(error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> ask(String message) async {
    emit(ChatbotState.askLoading());
    final result = await chatBotRepo.ask(message);
    result.when(success: (response) {
      emit(ChatbotState.askSuccess(response));
    }, failure: (error) {
      emit(ChatbotState.askError(error.apiErrorModel.message ?? ''));
    });
  }

  Future<void> fetchHistory() async {
    emit(ChatbotState.historyLoading());
    final result = await chatBotRepo.getHistory();
    result.when(
      success: (history) => emit(ChatbotState.historySuccess(history)),
      failure: (error) => emit(ChatbotState.historyError(error.apiErrorModel.message ?? '')),
    );
  }
}
