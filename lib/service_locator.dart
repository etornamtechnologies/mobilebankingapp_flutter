import 'package:get_it/get_it.dart';
import 'package:mobile_banking_app/features/auth/services/auth_service.dart';

final GetIt getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton(() => AuthService());
}
