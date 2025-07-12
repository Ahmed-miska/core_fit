import 'package:core_fit/core/di/dependency_injection.dart';
import 'package:core_fit/core/theming/colors.dart';
import 'package:core_fit/core/widgets/custom_app_bar.dart';
import 'package:core_fit/features/recommendation/chat_bot/logic/cubit/chatbot_cubit.dart';
import 'package:core_fit/features/recommendation/chat_bot/data/model/chat_history_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<_ChatMessage> messages = [];
  final TextEditingController messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final Color primaryColor = const Color(0xFF0BAB59);
  bool _historyLoaded = false;
  bool isHistoryLoading = true;

  @override
  void initState() {
    super.initState();
    // Add a welcome message
    messages.add(_ChatMessage(
      message: "Hello! I'm your AI fitness assistant. How can I help you today?",
      isUser: false,
    ));
    // Fetch chat history after the first frame
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        getIt<ChatbotCubit>().fetchHistory();
      }
    });
  }

  void sendMessage() {
    final text = messageController.text.trim();
    if (text.isEmpty) return;

    setState(() {
      messages.add(_ChatMessage(message: text, isUser: true));
    });
    _scrollToBottom();

    messageController.clear();

    // Send message to API using cubit
    getIt<ChatbotCubit>().ask(text);
  }

  void _addHistory(List<ChatHistoryMessage> history) {
    // Only add history once
    if (_historyLoaded) return;
    final historyMessages = <_ChatMessage>[];
    for (final msg in history) {
      for (final part in msg.parts) {
        historyMessages.add(_ChatMessage(
          message: part.text,
          isUser: msg.role == 'user',
        ));
      }
    }
    setState(() {
      // Insert after the welcome message
      messages.insertAll(1, historyMessages);
      _historyLoaded = true;
      isHistoryLoading = false;
    });
    _scrollToBottom();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Chat Bot'),
      body: Column(
        children: [
          Expanded(
            child: isHistoryLoading
                ? Center(
                    child: CircularProgressIndicator(
                    color: AppColors.main,
                  ))
                : ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(16),
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final msg = messages[index];
                      return Align(
                        alignment: msg.isUser ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: msg.isUser ? primaryColor : Colors.grey[200],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            msg.message,
                            style: TextStyle(
                              color: msg.isUser ? Colors.white : Colors.black87,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
          BlocListener<ChatbotCubit, ChatbotState>(
            bloc: getIt<ChatbotCubit>(),
            listenWhen: (previous, current) => current is AskSuccess || current is AskError || current is HistorySuccess,
            listener: (context, state) {
              state.whenOrNull(
                historyLoading: () {
                  setState(() {
                    isHistoryLoading = true;
                  });
                },
                historySuccess: (history) {
                  _addHistory(history);
                },
                askSuccess: (response) {
                  setState(() {
                    messages.add(_ChatMessage(
                      message: response.reply,
                      isUser: false,
                    ));
                  });
                  _scrollToBottom();
                },
                askError: (error) {
                  setState(() {
                    messages.add(_ChatMessage(
                      message: "Sorry, I couldn't process your request. Please try again.",
                      isUser: false,
                    ));
                  });
                  _scrollToBottom();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Error: $error'),
                      backgroundColor: Colors.red,
                      duration: const Duration(seconds: 3),
                    ),
                  );
                },
                loginError: (error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Chatbot authentication failed: $error'),
                      backgroundColor: Colors.orange,
                      duration: const Duration(seconds: 5),
                    ),
                  );
                },
              );
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: const Border(top: BorderSide(color: Colors.grey)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: const InputDecoration(
                        hintText: "Type a message...",
                        border: InputBorder.none,
                      ),
                      onSubmitted: (_) => sendMessage(),
                    ),
                  ),
                  BlocBuilder<ChatbotCubit, ChatbotState>(
                    buildWhen: (previous, current) => current is AskLoading || current is AskSuccess || current is AskError,
                    bloc: getIt<ChatbotCubit>(),
                    builder: (context, state) {
                      final isLoading = state.maybeWhen(
                        askLoading: () => true,
                        orElse: () => false,
                      );

                      return IconButton(
                        onPressed: isLoading ? null : sendMessage,
                        icon: isLoading
                            ? SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(primaryColor),
                                ),
                              )
                            : Icon(Icons.send, color: primaryColor),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ChatMessage {
  final String message;
  final bool isUser;

  _ChatMessage({required this.message, required this.isUser});
}
