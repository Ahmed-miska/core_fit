// To parse this JSON data, do
//
//     final playerResponseModel = playerResponseModelFromJson(jsonString);

import 'dart:convert';

PlayerResponseModel playerResponseModelFromJson(String str) => PlayerResponseModel.fromJson(json.decode(str));

String playerResponseModelToJson(PlayerResponseModel data) => json.encode(data.toJson());

class PlayerResponseModel {
  String? playerInfo;
  String? resultImageUrl;
  String? status;

  PlayerResponseModel({
    this.playerInfo,
    this.resultImageUrl,
    this.status,
  });

  factory PlayerResponseModel.fromJson(Map<String, dynamic> json) => PlayerResponseModel(
        playerInfo: json["player_info"],
        resultImageUrl: json["result_image_url"],
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "player_info": playerInfo,
        "result_image_url": resultImageUrl,
        "status": status,
      };
}
