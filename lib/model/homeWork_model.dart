import 'dart:convert';

List<HomeWorkModel> homeWorkModelFromJson(String str) =>
    List<HomeWorkModel>.from(
        json.decode(str).map((x) => HomeWorkModel.fromJson(x)));

class HomeWorkModel {
  HomeWorkModel({
    this.id,
    this.subName,
    this.description,
    this.startDate,
    this.endDate,
  });

  int id;
  String subName;
  String description;
  DateTime startDate;
  DateTime endDate;

  factory HomeWorkModel.fromJson(Map<String, dynamic> json) => HomeWorkModel(
        id: json["id"],
        subName: json["subName"],
        description: json["description"],
        startDate: DateTime.parse(json["startDate"]),
        endDate: DateTime.parse(json["endDate"]),
      );
}
