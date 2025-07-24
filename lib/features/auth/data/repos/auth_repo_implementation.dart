import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/execption.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/data/models/user_models.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';


class AuthRepoImplementation  extends AuthRepo{
   final FirebaseAuthService firebaseAuthService;
   AuthRepoImplementation({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String emailAddress, String password,
    String name )async {

      try {
  var user = await firebaseAuthService.createUserWithEmailAndPassword(
      email: emailAddress,
      password: password,
      name: name);
      
  return right(UserModels.fromFirebaseUser(user));
} on CustomException catch (e) {
  return left(Failure(message:e.message));
  // TODO
}

     



    
    
  }
}