class BillModel {
  final String id;
  final String title;
  final String category;
  final double amount;
  final DateTime dueDate;
  final bool isPaid;
  final String iconPath;
  final BillCategory categoryType;

  BillModel({
    required this.id,
    required this.title,
    required this.category,
    required this.amount,
    required this.dueDate,
    required this.isPaid,
    required this.iconPath,
    required this.categoryType,
  });
}

enum BillCategory {
  utilities,
  internet,
  phone,
  insurance,
  subscription,
  rent,
  food,
  transport,
  entertainment,
  other,
}

extension BillCategoryExtension on BillCategory {
  String get displayName {
    switch (this) {
      case BillCategory.utilities:
        return 'Utilities';
      case BillCategory.internet:
        return 'Internet';
      case BillCategory.phone:
        return 'Phone';
      case BillCategory.insurance:
        return 'Insurance';
      case BillCategory.subscription:
        return 'Subscription';
      case BillCategory.rent:
        return 'Rent';
      case BillCategory.food:
        return 'Food';
      case BillCategory.transport:
        return 'Transport';
      case BillCategory.entertainment:
        return 'Entertainment';
      case BillCategory.other:
        return 'Other';
    }
  }
}
