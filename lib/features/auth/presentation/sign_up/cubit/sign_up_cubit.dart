import 'package:bloc/bloc.dart';

import 'package:fruits_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruits_hub/features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final AuthRepo authRepo;
  SignUpCubit(this.authRepo): super(SignUpInitial());

  Future<void>createUserWithEmailAndPassword(String email,
  String password,String name)async{
      emit(SignUpLoading());
       final result=await authRepo.createUserWithEmailAndPassword(
        email,password,name

       );
    return result.fold(
      (failure) => emit(SignUpFailure(errorMessage: failure.toString())),
      (userEntity) => emit(SignUpSuccess(userEntity: userEntity))
    );
  }}
 
