import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String id;
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String phone;
  final String accountNumber;
  final String lastLogin;
  final String isDefaultPassword;

  const User(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.email,
      required this.phone,
      required this.accountNumber,
      required this.lastLogin,
      required this.isDefaultPassword});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        id: json["id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        accountNumber: json["accountNumber"],
        lastLogin: json["lastlogin"],
        isDefaultPassword: json["isDefaultPassword"]);
  }

  Map<String, dynamic> toJson() {
    return {
      id: id,
      firstName: firstName,
      lastName: lastName,
      username: username,
      email: email,
      phone: phone,
      accountNumber: accountNumber,
      lastLogin: lastLogin,
      isDefaultPassword: isDefaultPassword
    };
  }

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        username,
        email,
        phone,
        accountNumber,
        lastLogin,
        isDefaultPassword,
      ];

  @override
  bool get stringify => true;
}
