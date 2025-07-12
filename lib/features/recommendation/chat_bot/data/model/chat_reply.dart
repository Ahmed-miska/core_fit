class ChatReply {
  final String reply;

  ChatReply({required this.reply});

  factory ChatReply.fromJson(Map<String, dynamic> json) {
    return ChatReply(reply: json['reply']);
  }

  Map<String, dynamic> toJson() {
    return {'reply': reply};
  }
}