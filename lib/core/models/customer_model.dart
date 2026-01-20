// class CustomerModel {
//   int id;
//   String? username;
//   String? email;
//   String? firstName;
//   String? lastName;
//   String? profilePicture;

//   CustomerModel({
//     required this.id,
//     required this.username,
//     required this.email,
//     required this.firstName,
//     required this.lastName,
//     required this.profilePicture,
//   });

//   factory CustomerModel.fromJson(Map<String, dynamic> json) => CustomerModel(
//         id: json["id"],
//         username: json["username"],
//         email: json["email"],
//         firstName: json["first_name"],
//         lastName: json["last_name"],
//         profilePicture: json["profile_picture"] ?? "",
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "username": username,
//         "email": email,
//         "first_name": firstName,
//         "last_name": lastName,
//         "profile_picture": profilePicture,
//       };
// }
