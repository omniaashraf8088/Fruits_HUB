import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class FeaturedItemButton extends StatelessWidget {
  const FeaturedItemButton({super.key, required this.onPresed});
   final VoidCallback onPresed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: double.infinity,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          )
        ),
        onPressed: onPresed, child: FittedBox(
          child: Text('تسوق الان ',
                style: AppTextStyles.style13w700.copyWith(
          color: AppColors.greenrColor
                ),),
        )),

    );
  }
}