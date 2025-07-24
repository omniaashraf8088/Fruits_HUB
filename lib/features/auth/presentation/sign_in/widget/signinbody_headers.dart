import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';

class SigninbodyHeaders extends StatelessWidget {
  const SigninbodyHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: 'البريد الالكتروني',
          textInputTybe: TextInputType.emailAddress,
        ),
        SizedBox(height: 16),
        CustomTextFormField(
          hintText: 'كلمة المرور',
          textInputTybe: TextInputType.visiblePassword,
          suffixIcon: Icon(Icons.visibility_off, color: AppColors.suffixIconColor),
        ),
      ],
    );
  }
}
