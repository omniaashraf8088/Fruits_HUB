import 'package:fruits_hub/core/services/database.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/core/services/firestore_service.dart';
import 'package:fruits_hub/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';



import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  // Services
  getIt.registerSingleton<FirebaseAuthService>(FirebaseAuthService());
  getIt.registerSingleton<AuthRepo>(AuthRepoImplementation(
    firebaseAuthService:getIt<FirebaseAuthService>() ));
  getIt.registerSingleton<DatabaseService>(FireStoreService());

  // Repositories



}
