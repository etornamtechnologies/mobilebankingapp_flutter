import 'package:mobile_banking_app/models/user.dart';

class ResponseDTO<T> {
  final int code;
  final String? message;
  final T? data;

  ResponseDTO({required this.code, required this.message, required this.data});

  factory ResponseDTO.fromJson(Map<String, dynamic> json) {
    return ResponseDTO(
      code: json['code'],
      message: json['message'],
      data: json['data'],
    );
  }
}

class LoginResponse {
  final String accessToken;
  final User user;

  LoginResponse({required this.accessToken, required this.user});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(accessToken: json['accesstoken'], user: json['user']);
  }
}
