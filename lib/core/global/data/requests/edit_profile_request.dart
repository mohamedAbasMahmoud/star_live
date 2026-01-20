import 'package:equatable/equatable.dart';

class EditProfileRequest extends Equatable {
  final String? name;
  final String? email;
  final String? phone;
  final String? image;

  const EditProfileRequest({
    this.name,
    this.email,
    this.phone,
    this.image,
  });

  Map<String, dynamic> toJson() => {
        if (name != null) "name": name,
        if (email != null) "email": email,
        if (phone != null) "phone": phone,
      };

  @override
  List<Object?> get props => [
        name,
        email,
        phone,
        image,
      ];
}
