import 'package:json_annotation/json_annotation.dart';
part 'categories_response_model.g.dart';

@JsonSerializable()
class CategoriesResponseModel {
  String? message;
  CategoriesData? data;

  CategoriesResponseModel({this.message, this.data});

  factory CategoriesResponseModel.fromJson(Map<String, dynamic> json) => _$CategoriesResponseModelFromJson(json);
}

@JsonSerializable()
class CategoriesData {
  List<Category>? categories;

  CategoriesData({this.categories});
  factory CategoriesData.fromJson(Map<String, dynamic> json) => _$CategoriesDataFromJson(json);
}

@JsonSerializable()
class Category {
  int? id;
  String? name;
  String? imageUrl;

  Category({this.id, this.name, this.imageUrl});

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
