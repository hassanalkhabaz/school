import 'dart:convert';

List<AttendanceModel> attendanceModelFromJson(String str) =>
    List<AttendanceModel>.from(
        json.decode(str).map((x) => AttendanceModel.fromJson(x)));

class AttendanceModel {
  AttendanceModel({
    this.id,
    this.isPresense,
    this.date,
  });

  int id;
  int isPresense;
  DateTime date;

  factory AttendanceModel.fromJson(Map<String, dynamic> json) =>
      AttendanceModel(
        id: json["id"],
        isPresense: json["isPresense"],
        date: DateTime.parse(json["date"]),
      );
}
