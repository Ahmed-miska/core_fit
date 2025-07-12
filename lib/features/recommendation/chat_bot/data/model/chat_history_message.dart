class ChatHistoryMessage {
  final String role;
  final List<ChatHistoryPart> parts;

  ChatHistoryMessage({required this.role, required this.parts});

  factory ChatHistoryMessage.fromJson(Map<String, dynamic> json) {
    return ChatHistoryMessage(
      role: json['role'],
      parts: (json['parts'] as List).map((e) => ChatHistoryPart.fromJson(e)).toList(),
    );
  }
}

class ChatHistoryPart {
  final String text;

  ChatHistoryPart({required this.text});

  factory ChatHistoryPart.fromJson(Map<String, dynamic> json) {
    return ChatHistoryPart(text: json['text']);
  }
}
