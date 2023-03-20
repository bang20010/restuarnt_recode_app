import 'dart:convert';

List<restuantCard> busCardFromJson(String str) => List<restuantCard>.from(
    json.decode(str).map((x) => restuantCard.fromJson(x)));

String busCardToJson(List<restuantCard> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class restuantCard {
  String restuantName;
  String restuantCallNum;
  String restuantCallNum2;
  String restuantCallNum3;
  String grade;
  String createDate;

  restuantCard({
    required this.restuantName,
    required this.restuantCallNum,
    required this.restuantCallNum2,
    required this.restuantCallNum3,
    required this.grade,
    required this.createDate,
  });

  factory restuantCard.fromJson(Map<String, dynamic> json) => restuantCard(
      restuantName: json["restuantName"],
      grade: json["grade"],
      restuantCallNum: json["restuantCallNum"],
      restuantCallNum2: json["restuantCallNum2"],
      restuantCallNum3: json["restuantCallNum3"],
      createDate: json["createDate"]);

  Map<String, dynamic> toJson() => {
        "grade": grade,
        "restuantName": restuantName,
        "restuantCallNum": restuantCallNum,
        "restuantCallNum2": restuantCallNum2,
        "restuantCallNum3": restuantCallNum3,
        "createDate": createDate,
      };
}
