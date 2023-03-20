import 'dart:convert';

List<Suwon_Reastaurant> busCardFromJson(String str) =>
    List<Suwon_Reastaurant>.from(
        json.decode(str).map((x) => Suwon_Reastaurant.fromJson(x)));

String busCardToJson(List<Suwon_Reastaurant> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Suwon_Reastaurant {
  String reastaurantName;
  String address;
  String callNum;
  String setDate;
  String currentSetDate;
  String reastaurantType;
  String signatureMenu;
  String updateDate;

  Suwon_Reastaurant({
    required this.reastaurantName,
    required this.address,
    required this.callNum,
    required this.setDate,
    required this.currentSetDate,
    required this.reastaurantType,
    required this.signatureMenu,
    required this.updateDate,
  });

  factory Suwon_Reastaurant.fromJson(Map<String, dynamic> json) =>
      Suwon_Reastaurant(
        reastaurantName: json["모범업소명"],
        address: json["주소"],
        callNum: json["연락처"],
        setDate: json["지정일자"],
        currentSetDate: json["최신지정일자"],
        reastaurantType: json["주소"],
        signatureMenu: json["대표메뉴"],
        updateDate: json["지정일"],
      );

  Map<String, dynamic> toJson() => {
        "모범업소명": reastaurantName,
        "주소": address,
        "연락처": callNum,
        "지정일자": setDate,
        "최신지정일자": reastaurantName,
        "주소": address,
        "대표메뉴": callNum,
        "지정일": setDate,
      };
}
