import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/router/routes.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'لا تمتلك حساب؟',
        style: TextStyle(color: AppColors.silverColor, fontSize: 14),
        children: [
          TextSpan(
            recognizer:
                TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, Routes.signUp);
                  },
            text: 'قم بانشاء حساب',
            style: TextStyle(color: AppColors.deepGreenrColor, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
