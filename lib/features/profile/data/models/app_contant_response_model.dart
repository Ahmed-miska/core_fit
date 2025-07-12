
class AppContantResponseModel {
  String? message;
  Data? data;

  AppContantResponseModel({
    this.message,
    this.data,
  });

  factory AppContantResponseModel.fromJson(Map<String, dynamic> json) => AppContantResponseModel(
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "data": data?.toJson(),
      };
}

class Data {
  String? about;
  String? privacy;
  String? termsCondition;

  Data({
    this.about,
    this.privacy,
    this.termsCondition,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        about: json["ABOUT"],
        privacy: json["PRIVACY"],
        termsCondition: json["TERMS_CONDITION"],
      );

  Map<String, dynamic> toJson() => {
        "ABOUT": about,
        "PRIVACY": privacy,
        "TERMS_CONDITION": termsCondition,
      };
}
