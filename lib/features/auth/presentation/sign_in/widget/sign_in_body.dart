import 'package:flutter/material.dart';

import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/sign_in/widget/dont_have_acount.dart';
import 'package:fruits_hub/features/auth/presentation/sign_in/widget/forget_password.dart';
import 'package:fruits_hub/features/auth/presentation/sign_in/widget/or_divider.dart';
import 'package:fruits_hub/features/auth/presentation/sign_in/widget/signinbody_headers.dart';
import 'package:fruits_hub/features/auth/presentation/sign_in/widget/social_media_list.dart';
import 'package:fruits_hub/features/home/presentation/screens/home_screen.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SigninbodyHeaders(),
            SizedBox(height: 16),
            ForgetPassword(),
            SizedBox(height: 16),
            CustomButton(onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                 return HomeScreen(); // Replace with your desired widget
               }));
            }, text: 'تسجيل الدخول'),
            SizedBox(height: 33),
            DontHaveAccount(),
            SizedBox(height: 37),
            OrDivider(),
            SizedBox(height: 21),
            SocialMediaList()
          ],
        ),
      ),
    );
  }
}


