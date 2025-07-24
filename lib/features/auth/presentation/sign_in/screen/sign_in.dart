import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_app_bar.dart';
import 'package:fruits_hub/features/auth/presentation/sign_in/widget/sign_in_body.dart';


class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      appBar: buildAppBar(context, title: 'تسجيل الدخول'),
      body: SignInBody());
  }
}

