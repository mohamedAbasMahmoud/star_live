import 'package:get/get.dart';

enum PaymentMethodEnum { cash, card }

extension PaymentMethodExtension on PaymentMethodEnum {
  String get text {
    switch (this) {
      case PaymentMethodEnum.cash:
        return 'Cash on delivery'.tr;
      case PaymentMethodEnum.card:
        return 'Visa payment upon receipt'.tr;
    }
  }

  String get id {
    switch (this) {
      case PaymentMethodEnum.cash:
        return 'cod';
      case PaymentMethodEnum.card:
        return 'cheque';
    }
  }
}
