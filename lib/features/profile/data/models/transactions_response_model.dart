class TransactionsResponseModel {
  String? message;
  Data? data;

  TransactionsResponseModel({
    this.message,
    this.data,
  });

  factory TransactionsResponseModel.fromJson(Map<String, dynamic> json) => TransactionsResponseModel(
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );
}

class Data {
  int? totalPages;
  int? pageSize;
  List<Transaction>? transactions;
  int? currentPage;
  int? totalElements;

  Data({
    this.totalPages,
    this.pageSize,
    this.transactions,
    this.currentPage,
    this.totalElements,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        totalPages: json["totalPages"],
        pageSize: json["pageSize"],
        transactions: json["transactions"] == null ? [] : List<Transaction>.from(json["transactions"]!.map((x) => Transaction.fromJson(x))),
        currentPage: json["currentPage"],
        totalElements: json["totalElements"],
      );
}

class Transaction {
  int? id;
  int? userId;
  String? userName;
  String? type;
  num? amount;
  String? purpose;
  String? timestamp;

  Transaction({
    this.id,
    this.userId,
    this.userName,
    this.type,
    this.amount,
    this.purpose,
    this.timestamp,
  });

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
        id: json["id"],
        userId: json["userId"],
        userName: json["userName"],
        type: json["type"],
        amount: json["amount"],
        purpose: json["purpose"],
        timestamp: json["timestamp"],
      );
}
