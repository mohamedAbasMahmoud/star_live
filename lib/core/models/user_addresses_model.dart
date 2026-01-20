
import 'package:equatable/equatable.dart';

class UserAddressesModel extends Equatable {
  final String firstName;
  final String lastName;
  final String company;
  final String address1;
  final String address2;
  final String city;
  final String postcode;
  final String country;
  final String state;
  final String email;
  final String phone;

  const UserAddressesModel({
    required this.firstName,
    required this.lastName,
    required this.company,
    required this.address1,
    required this.address2,
    required this.city,
    required this.postcode,
    required this.country,
    required this.state,
    required this.email,
    required this.phone,
  });

  factory UserAddressesModel.fromJson(Map<String, dynamic> json) =>
      UserAddressesModel(
        firstName: json["first_name"] ?? "",
        lastName: json["last_name"] ?? "",
        company: json["company"] ?? "",
        address1: json["address_1"] ?? "",
        address2: json["address_2"] ?? "",
        city: json["city"] ?? "",
        postcode: json["postcode"] ?? "",
        country: json["country"] ?? "",
        state: json["state"] ?? "",
        email: json["email"] ?? "",
        phone: json["phone"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        if (firstName.isNotEmpty) "first_name": firstName,
        if (lastName.isNotEmpty) "last_name": lastName,
        if (company.isNotEmpty) "company": company,
        if (address1.isNotEmpty) "address_1": address1,
        if (address2.isNotEmpty) "address_2": address2,
        if (city.isNotEmpty) "city": city,
        if (postcode.isNotEmpty) "postcode": postcode,
        if (country.isNotEmpty) "country": country,
        if (state.isNotEmpty) "state": state,
        if (email.isNotEmpty) "email": email,
        if (phone.isNotEmpty) "phone": phone,
      };

  bool isValid() {
    return firstName.isNotEmpty &&
        lastName.isNotEmpty &&
        address1.isNotEmpty &&
        city.isNotEmpty &&
        postcode.isNotEmpty &&
        country.isNotEmpty &&
        state.isNotEmpty;
  }

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        company,
        address1,
        address2,
        city,
        postcode,
        country,
        state,
        email,
        phone,
      ];
}
