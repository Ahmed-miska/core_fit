class ReservetionsResponseModel {
  String? message;
  List<ReservationModel>? data;

  ReservetionsResponseModel({
    this.message,
    this.data,
  });

  factory ReservetionsResponseModel.fromJson(Map<String, dynamic> json) => ReservetionsResponseModel(
        message: json["message"],
        data: json["data"] == null ? [] : List<ReservationModel>.from(json["data"]!.map((x) => ReservationModel.fromJson(x))),
      );
}

class ReservationModel {
  int? id;
  int? userId;
  String? date;
  List<String>? slots;
  double? price; // <-- change from int to double
  bool? cancelled;
  bool? ended;
  List<String>? playgroundImages;

  String? createdAt;
  int? playgroundId;
  String? playgroundName;
  String? playgroundAddress;
  int? playgroundAvgRate;
  int? numberPlaygroundRates;
  int? teamMembers;

  ReservationModel({
    this.id,
    this.userId,
    this.date,
    this.slots,
    this.price,
    this.cancelled,
    this.ended,
    this.createdAt,
    this.playgroundId,
    this.playgroundName,
    this.playgroundAddress,
    this.playgroundAvgRate,
    this.numberPlaygroundRates,
    this.teamMembers,
    this.playgroundImages,
  });

  factory ReservationModel.fromJson(Map<String, dynamic> json) => ReservationModel(
        id: json["id"],
        userId: json["userId"],
        date: json["date"],
        slots: json["slots"] == null ? [] : List<String>.from(json["slots"].map((x) => x.toString())),
        price: json["price"]?.toDouble(),
        cancelled: json["cancelled"],
        ended: json["ended"],
        createdAt: json["createdAt"],
        playgroundId: json["playgroundId"],
        playgroundName: json["playgroundName"],
        playgroundAddress: json["playgroundAddress"],
        playgroundImages: json["playgroundImages"] == null ? [] : List<String>.from(json["playgroundImages"].map((x) => x.toString())),
        playgroundAvgRate: json["playgroundAvgRate"],
        numberPlaygroundRates: json["numberPlaygroundRates"],
        teamMembers: json["teamMembers"],
      );
}
