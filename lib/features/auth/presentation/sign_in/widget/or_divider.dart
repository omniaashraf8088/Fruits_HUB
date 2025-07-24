import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.socialMediaColorBorder, thickness: 1)),
        SizedBox(width: 17.83),
        Text('أو', style: TextStyle(color: AppColors.blackColor)),
        SizedBox(width: 17.83),
        Expanded(child: Divider(color: AppColors.socialMediaColorBorder, thickness: 1)),
      ],
    );
  }
}
