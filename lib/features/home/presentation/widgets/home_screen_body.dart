import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/core/widgets/search_text_field.dart';
import 'package:fruits_hub/features/home/presentation/widgets/best_seller.dart';
import 'package:fruits_hub/features/home/presentation/widgets/custom_bottom_nivigation_bar.dart';
import 'package:fruits_hub/features/home/presentation/widgets/custom_home_App_bar.dart';
import 'package:fruits_hub/features/home/presentation/widgets/feature_items_list.dart';
import 'package:fruits_hub/features/home/presentation/widgets/fruite_items_list.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:CustomBottomNivigationBar(

      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 16),
                  CustomHomeAppBar(),
                  SizedBox(height: 16),
                  SearchTextField(
                    hintText: 'ابحث هنا ...',
                    suffixIcon: SizedBox(
                      width: 20,

                      child: Center(child: SvgPicture.asset(Assets.svgFilter)),
                    ),
                    keyboardType: TextInputType.text,
                    hintTextStyle: AppTextStyles.style13w400,
                    obscureText: false,
                    enabled: true,
                    prefix: SizedBox(
                      width: 20,
                      child: SvgPicture.asset(Assets.svgCheck),
                    ),
                  ),
                  SizedBox(height: 12),
                  FeatureItemsList(),
                  SizedBox(height: 12),
                  BestSeller(),
                  FruiteItemsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
