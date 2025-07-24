import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';

import 'package:fruits_hub/features/on_boarding/presentation/widgets/page_view_items.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_styles.dart';

class OnBoardingPageview extends StatelessWidget {
  const OnBoardingPageview({super.key, required this.pageController});

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItems(
          isVisible: true,
          image: Assets.svgFruitBasket,
          backgroundImage: Assets.svgPinkBackground,
          subtitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('مرحبًا بك في', style: AppTextStyles.style23w700),
              Text(
                '  HUB',
                style: AppTextStyles.style23w700.copyWith(
                  color: AppColors.orangeColor,
                ),
              ),
              Text(
                'Fruit',
                style: AppTextStyles.style23w700.copyWith(
                  color: AppColors.deepGreenrColor,
                ),
              ),
            ],
          ),
        ),
        const PageViewItems(
          isVisible: false,
          image: Assets.svgPineapple,
          backgroundImage: Assets.svgBlueBacground,
          subtitle:
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
          title: Text(
            'ابحث وتسوق',
            textAlign: TextAlign.center,
            style: AppTextStyles.style23w700,
          ),
        ),
      ],
    );
  }
}
