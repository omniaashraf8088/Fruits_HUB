import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'الاكثر مبيعا',
                        style: AppTextStyles.style19w700,
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'المزيد',
                          style: AppTextStyles.style13w400,
                        ),
                      ),
                    ],
                   );
  }
}