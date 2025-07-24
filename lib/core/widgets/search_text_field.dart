import 'package:flutter/material.dart';

import 'package:fruits_hub/core/utils/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    this.controller,
    required this.hintText,
    this.hintTextStyle,
    required this.keyboardType,
    this.suffixIcon,
    this.validator,
    this.onChanged,
    required this.obscureText,
    required this.enabled,
    required this.prefix,
  });
  final TextEditingController? controller;
  final String hintText;
  final TextStyle? hintTextStyle;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final Widget? prefix;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final bool obscureText;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.blackColor,
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        validator: validator,
        onChanged: onChanged,

        enabled: enabled,
        decoration: _buildInputDecoration(),
      ),
    );
  }

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      prefix: prefix,
      hintText: hintText,
      hintStyle: hintTextStyle,
      suffixIcon: suffixIcon,
      filled: true,
      fillColor: AppColors.formFieldColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: _buildOutlineInputBorder(),
      enabledBorder: _buildOutlineInputBorder(),
      focusedBorder: _buildOutlineInputBorder(color: AppColors.greenrColor),
      errorBorder: _buildOutlineInputBorder(color: Colors.red),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder({Color? color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(color: color ?? AppColors.borderColor, width: 1),
    );
  }
}
