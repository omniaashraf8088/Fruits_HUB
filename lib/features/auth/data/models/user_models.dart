import 'package:firebase_auth/firebase_auth.dart';

import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';

class UserModels  extends UserEntity{
  UserModels({required super.emailAddress, required super.password, required super.name});



factory UserModels.fromFirebaseUser(User user) {
  return UserModels(
    emailAddress: user.email ?? '',
    password: '',
    name: user.displayName ?? ''
  );
}

}