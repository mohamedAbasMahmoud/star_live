import 'package:get/get.dart';

enum LanguageEnum {
  en,
  ar,
}

extension LanguageExtension on LanguageEnum {
  String get value {
    switch (this) {
      case LanguageEnum.en:
        return "English".tr;
      case LanguageEnum.ar:
        return "Arabic".tr;
    }
  }
}
