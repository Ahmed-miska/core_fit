// To parse this JSON data, do

class NotifiactionsResponseModel {
  String? message;
  Data? data;

  NotifiactionsResponseModel({
    this.message,
    this.data,
  });

  factory NotifiactionsResponseModel.fromJson(Map<String, dynamic> json) => NotifiactionsResponseModel(
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );
}

class Data {
  int? totalPages;
  int? pageSize;
  List<Notification>? notifications;
  int? totalElements;

  Data({
    this.totalPages,
    this.pageSize,
    this.notifications,
    this.totalElements,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalPages: json["totalPages"],
        pageSize: json["pageSize"],
        notifications: json["notifications"] == null ? [] : List<Notification>.from(json["notifications"]!.map((x) => Notification.fromJson(x))),
        totalElements: json["totalElements"],
      );
}

class Notification {
  int? id;
  String? title;
  String? message;
  String? createdAt;
  bool? isRead;

  Notification({
    this.id,
    this.title,
    this.message,
    this.createdAt,
    this.isRead,
  });

  factory Notification.fromJson(Map<String, dynamic> json) => Notification(
        id: json["id"],
        title: json["title"],
        message: json["message"],
        createdAt: json["createdAt"],
        isRead: json["isRead"],
      );
}
