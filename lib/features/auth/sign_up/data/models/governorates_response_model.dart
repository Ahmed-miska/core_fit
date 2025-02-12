class GovernoratesResponseModel {
  String? message;
  Data? data;

  GovernoratesResponseModel({
    this.message,
    this.data,
  });

  factory GovernoratesResponseModel.fromJson(Map<String, dynamic> json) => GovernoratesResponseModel(
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );
}

class Data {
  List<Governorate>? governorates;
  Data({
    this.governorates,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        governorates: json["governorates"] == null ? [] : List<Governorate>.from(json["governorates"]!.map((x) => Governorate.fromJson(x))),
      );
}

class Governorate {
  int? id;
  String? name;

  Governorate({
    this.id,
    this.name,
  });

  factory Governorate.fromJson(Map<String, dynamic> json) => Governorate(
        id: json["id"],
        name: json["name"],
      );
}
