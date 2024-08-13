
import 'package:mobile_banking_app/models/user.dart';

class AuthState {
  final bool loading;
  final String? accessToken;
  final bool isAuth;
  final String? errMsg;
  final String? successMsg;
  User? user;

  AuthState({
    required this.loading,
    required this.accessToken,
    required this.isAuth,
    required this.errMsg,
    required this.successMsg,
    this.user,
  });

  factory AuthState.initial() {
    return AuthState(
      loading: false,
      accessToken: null,
      isAuth: false,
      errMsg: null,
      successMsg: null,
      user: null,
    );
  }

  AuthState copyWith(
    bool? loading,
    String? accesstoken,
    bool? isAuth,
    String? errMsg,
    String? successMsg,
    User? user,
  ) {
    return AuthState(
      loading: loading ?? this.loading,
      accessToken: accessToken ?? accessToken,
      isAuth: isAuth ?? this.isAuth,
      errMsg: errMsg ?? this.errMsg,
      successMsg: successMsg ?? this.successMsg,
    );
  }
}
