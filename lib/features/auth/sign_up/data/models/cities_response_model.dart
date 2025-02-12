class CitiesResponseModel {
  String? message;
  Data? data;

  CitiesResponseModel({
    this.message,
    this.data,
  });

  factory CitiesResponseModel.fromJson(Map<String, dynamic> json) => CitiesResponseModel(
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );
}

class Data {
  List<City>? cities;

  Data({
    this.cities,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        cities: json["cities"] == null ? [] : List<City>.from(json["cities"]!.map((x) => City.fromJson(x))),
      );
}

class City {
  int? id;
  String? name;

  City({
    this.id,
    this.name,
  });

  factory City.fromJson(Map<String, dynamic> json) => City(
        id: json["id"],
        name: json["name"],
      );
}
