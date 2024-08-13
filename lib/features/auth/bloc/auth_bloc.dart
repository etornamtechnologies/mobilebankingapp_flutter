import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_banking_app/features/auth/bloc/auth_event.dart';
import 'package:mobile_banking_app/features/auth/bloc/auth_state.dart';
import 'package:mobile_banking_app/features/auth/services/auth_service.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService = GetIt.I<AuthService>();

  AuthBloc() : super(AuthState.initial());
}
