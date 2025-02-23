import 'package:json_annotation/json_annotation.dart';

part 'sub_categories_response_model.g.dart';
@JsonSerializable()
class SubCategoriesResponseModel {

  String? message;
  @JsonKey(name: 'data')
  List<SubCategory>? subCategories;

  SubCategoriesResponseModel({this.message, this.subCategories});

  factory SubCategoriesResponseModel.fromJson(Map<String, dynamic> json) => _$SubCategoriesResponseModelFromJson(json);

}

@JsonSerializable()
class SubCategory {
  int? id;
  String? name;

  SubCategory({this.id, this.name});

  factory SubCategory.fromJson(Map<String, dynamic> json) => _$SubCategoryFromJson(json);
}