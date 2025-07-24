import 'package:flutter/material.dart';

import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class FruitItems extends StatelessWidget {
  const FruitItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: ShapeDecoration(
        color: AppColors.borderColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Stack(
        children: [
          Positioned(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border_outlined),
            ),
          ),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 20),
                Image.asset(Assets.svgPineapple),
                SizedBox(height: 24,),
                ListTile(
                  title: Text(
                    'بطيخ',
                    textAlign: TextAlign.right,
                    style: AppTextStyles.style13w600,
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '30 جنيه',
                          style: AppTextStyles.style13w700,
                        ),
                        TextSpan(
                          text: '/',
                          style: AppTextStyles.style13w700.copyWith(
                            color: AppColors.lightOrangeColor,
                          ),
                        ),
                        TextSpan(
                          text: '',
                          style: AppTextStyles.style13w700.copyWith(
                            color: AppColors.lightOrangeColor,
                          ),
                        ),
                        TextSpan(
                          text: 'الكيلو',
                          style: AppTextStyles.style13w700.copyWith(
                            color: AppColors.lightOrangeColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: AppColors.deepGreenrColor,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add,
                  color: AppColors.borderColor,
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
