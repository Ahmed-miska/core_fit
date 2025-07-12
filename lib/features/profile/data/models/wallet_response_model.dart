class WalletResponseModel {
  String? message;
  num? data;

  WalletResponseModel({this.message, this.data});

  WalletResponseModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'];
  }
}
