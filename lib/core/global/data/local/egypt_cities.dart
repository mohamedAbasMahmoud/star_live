import 'package:get/get.dart';

final List<EgyptCityModel> kEgyptCities = [
  EgyptCityModel(code: "EGALX", nameEn: "Alexandria", nameAr: "الإسكندرية"),
  EgyptCityModel(code: "EGASN", nameEn: "Aswan", nameAr: "أسوان"),
  EgyptCityModel(code: "EGAST", nameEn: "Asyut", nameAr: "أسيوط"),
  EgyptCityModel(code: "EGBA", nameEn: "Red Sea", nameAr: "البحر الأحمر"),
  EgyptCityModel(code: "EGBH", nameEn: "Beheira", nameAr: "البحيرة"),
  EgyptCityModel(code: "EGBNS", nameEn: "Beni Suef", nameAr: "بني سويف"),
  EgyptCityModel(code: "EGC", nameEn: "Cairo", nameAr: "القاهرة"),
  EgyptCityModel(code: "EGDK", nameEn: "Dakahlia", nameAr: "الدقهلية"),
  EgyptCityModel(code: "EGDT", nameEn: "Damietta", nameAr: "دمياط"),
  EgyptCityModel(code: "EGFYM", nameEn: "Faiyum", nameAr: "الفيوم"),
  EgyptCityModel(code: "EGGH", nameEn: "Gharbia", nameAr: "الغربية"),
  EgyptCityModel(code: "EGGZ", nameEn: "Giza", nameAr: "الجيزة"),
  EgyptCityModel(code: "EGIS", nameEn: "Ismailia", nameAr: "الإسماعيلية"),
  EgyptCityModel(code: "EGJS", nameEn: "South Sinai", nameAr: "جنوب سيناء"),
  EgyptCityModel(code: "EGKB", nameEn: "Qalyubia", nameAr: "القليوبية"),
  EgyptCityModel(code: "EGKFS", nameEn: "Kafr el-Sheikh", nameAr: "كفر الشيخ"),
  EgyptCityModel(code: "EGKN", nameEn: "Qena", nameAr: "قنا"),
  EgyptCityModel(code: "EGLX", nameEn: "Luxor", nameAr: "الأقصر"),
  EgyptCityModel(code: "EGMN", nameEn: "Minya", nameAr: "المنيا"),
  EgyptCityModel(code: "EGMNF", nameEn: "Monufia", nameAr: "المنوفية"),
  EgyptCityModel(code: "EGMT", nameEn: "Matrouh", nameAr: "مطروح"),
  EgyptCityModel(code: "EGPTS", nameEn: "Port Said", nameAr: "بورسعيد"),
  EgyptCityModel(code: "EGSHG", nameEn: "Sohag", nameAr: "سوهاج"),
  EgyptCityModel(code: "EGSHR", nameEn: "Al Sharqia", nameAr: "الشرقية"),
  EgyptCityModel(code: "EGSIN", nameEn: "North Sinai", nameAr: "شمال سيناء"),
  EgyptCityModel(code: "EGSUZ", nameEn: "Suez", nameAr: "السويس"),
  EgyptCityModel(code: "EGWAD", nameEn: "New Valley", nameAr: "الوادي الجديد"),
];

class EgyptCityModel {
  final String code;
  final String nameEn;
  final String nameAr;

  const EgyptCityModel({
    required this.code,
    required this.nameEn,
    required this.nameAr,
  });

  @override
  String toString() {
    return Get.locale?.languageCode == 'ar' ? nameAr : nameEn;
  }
}
