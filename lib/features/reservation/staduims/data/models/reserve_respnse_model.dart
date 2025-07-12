class ReserveResponseModel {
  String? message;
  Data? data;

  ReserveResponseModel({
    this.message,
    this.data,
  });

  factory ReserveResponseModel.fromJson(Map<String, dynamic> json) {
    return ReserveResponseModel(
      message: json["message"],
      data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  int? id;
  int? userId;
  int? playgroundId;
  String? date;
  List<String>? slots;
  num? price; // can be double or int depending on backend

  Data({
    this.id,
    this.userId,
    this.playgroundId,
    this.date,
    this.slots,
    this.price,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json["id"],
      userId: json["userId"],
      playgroundId: json["playgroundId"],
      date: json["date"],
      slots: json["slots"] == null ? [] : List<String>.from(json["slots"].map((x) => x.toString())),
      price: json["price"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "userId": userId,
        "playgroundId": playgroundId,
        "date": date,
        "slots": slots,
        "price": price,
      };
}
