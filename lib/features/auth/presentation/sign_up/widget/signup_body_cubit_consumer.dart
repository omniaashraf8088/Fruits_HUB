import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/features/auth/presentation/sign_up/cubit/sign_up_cubit.dart';
import 'package:fruits_hub/features/auth/presentation/sign_up/widget/sign_up_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpBodyBlocConsumer extends StatelessWidget {
  const SignUpBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (State is SignUpLoading) {
          CircularProgressIndicator(backgroundColor: AppColors.orangeColor);
        }
        if (State is SignUpSuccess) {
          CircularProgressIndicator(backgroundColor: AppColors.redColor);
        }
        if (State is SignUpFailure) {
          CircularProgressIndicator(backgroundColor: AppColors.redColor);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(inAsyncCall: state is SignUpLoading? true :false,
        
        child: SignUpBody());
      },
    );
  }
}
