
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart' show Gap;
import 'package:get/get.dart';
import 'package:trust_task/core/enums/address_type.dart';
import 'package:trust_task/core/models/user_addresses_model.dart';
import 'package:trust_task/core/theme/app_color.dart';

class AddressCard extends StatelessWidget {
  final UserAddressesModel model;
  final VoidCallback? onTap;
  final bool isSelected;
  final AddressType addressType;
  final void Function()? onEditPressed;

  const AddressCard({
    super.key,
    this.onTap,
    this.isSelected = false,
    required this.model,
    required this.addressType,
    this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isSelected ? primaryLightColor : Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? AppColors.primaryColor : Colors.grey.shade300,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.location_on_rounded, color: deepGreenColor),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${model.firstName} ${model.lastName}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(model.address1),
                Text(model.city),
                if (model.phone.isNotEmpty) Text("📞 ${model.phone}"),
              ],
            ),
          ),
          if (onTap != null)
            Column(
              children: [
                if (!isSelected)
                  TextButton(
                    onPressed: onTap,
                    child: Text(
                      "Use".tr,
                      style: TextStyle(color: Colors.deepOrange),
                    ),
                  ),
                Gap(4.h),
                TextButton(onPressed: onEditPressed, child: Text("Edit".tr)),
              ],
            ),
        ],
      ),
    );
  }
}
