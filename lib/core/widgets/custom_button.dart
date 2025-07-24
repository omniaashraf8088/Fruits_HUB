import 'package:flutter/material.dart';

import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 15),
      decoration: ShapeDecoration(
        color: AppColors.deepGreenrColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: onPressed,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: AppTextStyles.style16w700,
            ),
          ),
        ],
      ),
    );
  }
}
