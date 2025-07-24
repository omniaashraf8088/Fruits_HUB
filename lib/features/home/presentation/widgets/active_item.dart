import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78,
      height: 30,
      color: AppColors.borderColor,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            color: AppColors.deepGreenrColor,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: SvgPicture.asset(image),
          ),
          SizedBox(width: 4),
          Text(text, style: AppTextStyles.style16w600.copyWith(fontSize: 11)),
        ],
      ),
    );
  }
}
