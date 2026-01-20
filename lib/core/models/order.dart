// class OrderModel {
//   final String id;
//   final String title;
//   final String category;
//   final double amount;
//   final DateTime orderDate;
//   final OrderStatus status;
//   final String iconPath;
//   final OrderCategory categoryType;
//   final String customerName;
//   final int quantity;

//   OrderModel({
//     required this.id,
//     required this.title,
//     required this.category,
//     required this.amount,
//     required this.orderDate,
//     required this.status,
//     required this.iconPath,
//     required this.categoryType,
//     required this.customerName,
//     required this.quantity,
//   });
// }

// enum OrderStatus {
//   pending,
//   processing,
//   shipped,
//   delivered,
//   cancelled,
//   returned,
// }

// enum OrderCategory {
//   electronics,
//   clothing,
//   food,
//   books,
//   home,
//   sports,
//   beauty,
//   automotive,
//   toys,
//   other,
// }

// extension OrderStatusExtension on OrderStatus {
//   String get displayName {
//     switch (this) {
//       case OrderStatus.pending:
//         return 'Pending';
//       case OrderStatus.processing:
//         return 'Processing';
//       case OrderStatus.shipped:
//         return 'Shipped';
//       case OrderStatus.delivered:
//         return 'Delivered';
//       case OrderStatus.cancelled:
//         return 'Cancelled';
//       case OrderStatus.returned:
//         return 'Returned';
//     }
//   }
// }

// extension OrderCategoryExtension on OrderCategory {
//   String get displayName {
//     switch (this) {
//       case OrderCategory.electronics:
//         return 'Electronics';
//       case OrderCategory.clothing:
//         return 'Clothing';
//       case OrderCategory.food:
//         return 'Food';
//       case OrderCategory.books:
//         return 'Books';
//       case OrderCategory.home:
//         return 'Home';
//       case OrderCategory.sports:
//         return 'Sports';
//       case OrderCategory.beauty:
//         return 'Beauty';
//       case OrderCategory.automotive:
//         return 'Automotive';
//       case OrderCategory.toys:
//         return 'Toys';
//       case OrderCategory.other:
//         return 'Other';
//     }
//   }
// }
