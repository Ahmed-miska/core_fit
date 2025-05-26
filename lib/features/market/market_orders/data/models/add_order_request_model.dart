
class AddOrderRequestModel {
  String? clientName;
  String? clientPhone;
  String? latitude;
  String? longitude;
  String? additionalInfo;
  String? paymentMethod;
  String? clientAddress;

  AddOrderRequestModel({
    this.clientName,
    this.clientPhone,
    this.latitude,
    this.longitude,
    this.additionalInfo,
    this.paymentMethod,
    this.clientAddress,
  });


  Map<String, dynamic> toJson() => {
        "clientName": clientName,
        "clientPhone": clientPhone,
        "latitude": latitude,
        "longitude": longitude,
        "additionalInfo": additionalInfo,
        "paymentMethod": paymentMethod,
        "clientAddress": clientAddress,
      };
}
