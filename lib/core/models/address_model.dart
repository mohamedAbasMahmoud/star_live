
// class AddressModel extends Equatable {
//   final UserAddressesModel shippingAddress;
//   final UserAddressesModel billingAddress;

//   const AddressModel({
//     required this.shippingAddress,
//     required this.billingAddress,
//   });

//   factory AddressModel.fromJson(Map<String, dynamic> json) {
//     return AddressModel(
//       shippingAddress: UserAddressesModel.fromJson(json['shipping']),
//       billingAddress: UserAddressesModel.fromJson(json['billing']),
//     );
//   }

//   @override
//   List<Object?> get props => [shippingAddress, billingAddress];
// }
