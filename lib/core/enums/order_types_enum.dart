// ignore_for_file: constant_identifier_names

enum OrderTypesEnum {
  pending,
  received,
  not_received,
  checked,
  finished,
  delivered,
}

// extension OrderType on OrderTypesEnum {
//   String  get lable {
//     switch (this) {
//       case OrderTypesEnum.pending:
//         return "pending";
//       case OrderTypesEnum.received:
//         return "received";
//       case OrderTypesEnum.notReceived:
//         return "not_received";
//       case OrderTypesEnum.checked:
//         return "checked";
//       case OrderTypesEnum.finished:
//         return "finished";
//       case OrderTypesEnum.delivered:
//         return "delivered";
//       default:
//         return "";
//     }
//   }
// }
