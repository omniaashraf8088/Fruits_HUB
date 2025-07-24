import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'هل لديك حساب بالفعل؟',
          style: TextStyle(color: AppColors.silverColor),
        ),
        Text(
          'تسجيل الدخول',
          style: TextStyle(
            color: AppColors.deepGreenrColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
