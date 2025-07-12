class ChatAskRequestModel {
  final String username;
  final String message;

  ChatAskRequestModel({required this.username, required this.message});

  factory ChatAskRequestModel.fromJson(Map<String, dynamic> json) {
    return ChatAskRequestModel(
      username: json['username'],
      message: json['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'message': message,
    };
  }
}
