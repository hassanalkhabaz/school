import 'dart:convert';

List<ProgramModel> programModelFromJson(String str) => List<ProgramModel>.from(
    json.decode(str).map((x) => ProgramModel.fromJson(x)));

class ProgramModel {
  ProgramModel({
    this.id,
    this.name,
    this.img,
  });

  int id;
  String name;
  String img;

  factory ProgramModel.fromJson(Map<String, dynamic> json) => ProgramModel(
        id: json["id"],
        name: json["name"],
        img: json["img"],
      );
}
