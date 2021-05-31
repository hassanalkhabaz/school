import 'dart:convert';

List<AlertModel> alertModelFromJson(String str) =>
    List<AlertModel>.from(json.decode(str).map((x) => AlertModel.fromJson(x)));

class AlertModel {
  AlertModel({
    this.id,
    this.reason,
    this.userName,
    this.date,
  });

  int id;
  String reason;
  String userName;
  DateTime date;

  factory AlertModel.fromJson(Map<String, dynamic> json) => AlertModel(
        id: json["id"],
        reason: json["reason"],
        userName: json["userName"],
        date: DateTime.parse(json["date"]),
      );
}
