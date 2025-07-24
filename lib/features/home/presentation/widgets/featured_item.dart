import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' as sv;
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/home/presentation/widgets/featured_item_button.dart';

class FeaturedItem extends StatelessWidget {
  const FeaturedItem({super.key});

  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.sizeOf(context).width-32;
    return ClipRRect(
      borderRadius: BorderRadius.circular(4),
      child: SizedBox(
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned(
                 left: 0,
                  top: 0,
                  bottom: 0,
                  right: itemWidth * .4,
                  child: sv.SvgPicture.asset(
                    Assets.svgPineapple,
                    fit: BoxFit.fill,),
              ),
              Container(
                width: itemWidth * 0.5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.svgFeaturedItemBackground),
                    fit: BoxFit.fill
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 33),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('عروض العيد', style: AppTextStyles.style13w400),
                      SizedBox(height: 8),
                      Text(
                        'خصم 25%',
                        style: AppTextStyles.style19w700.copyWith(
                          color: AppColors.whiteColor,
                        ),
                      ),
                      SizedBox(height: 11),
                      FeaturedItemButton(onPresed: () {}),
                      SizedBox(height: 29),
                    ],
                    
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
