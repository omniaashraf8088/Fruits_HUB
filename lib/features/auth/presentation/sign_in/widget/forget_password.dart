import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'نسيت كلمة المرور؟',
          style: TextStyle(color: AppColors.greenrColor),
        ),
      ],
    );
  }
}
