import 'dart:convert';

List<PaymentModel> paymentModelFromJson(String str) => List<PaymentModel>.from(
    json.decode(str).map((x) => PaymentModel.fromJson(x)));

class PaymentModel {
  PaymentModel({
    this.id,
    this.paidFees,
    this.unPaidFees,
    this.paidDate,
  });

  int id;
  int paidFees;
  int unPaidFees;
  DateTime paidDate;

  factory PaymentModel.fromJson(Map<String, dynamic> json) => PaymentModel(
        id: json["id"],
        paidFees: json["paidFees"],
        unPaidFees: json["unPaidFees"],
        paidDate: DateTime.parse(json["paidDate"]),
      );
}
