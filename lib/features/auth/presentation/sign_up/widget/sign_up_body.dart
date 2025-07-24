import 'package:flutter/material.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruits_hub/core/widgets/password_form_field.dart';
import 'package:fruits_hub/features/auth/presentation/sign_up/widget/have_account.dart';
import 'package:fruits_hub/features/auth/presentation/sign_up/widget/terms_and_condition.dart';

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputTybe: TextInputType.name,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputTybe: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            PasswordFormField(
              hintText: 'كلمة المرور',
              onChanged: (value) {
                // Handle password change
              },
            ),
            SizedBox(height: 16),
            TermsAndCondition(
              initialValue: false,
              onChanged: (accepted) {
                // Handle terms acceptance here
                debugPrint('Terms accepted: $accepted');
              },
            ),
            SizedBox(height: 30),
            CustomButton(onPressed: () {}, text: 'إنشاء حساب جديد'),
            SizedBox(height: 26),
            HaveAccount(),
          ],
        ),
      ),
    );
  }
}
