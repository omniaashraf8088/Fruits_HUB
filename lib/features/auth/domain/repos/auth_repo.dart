import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
   Future<Either<Failure,UserEntity>>createUserWithEmailAndPassword(
    String emailAddress, String password,String name
   );
}
