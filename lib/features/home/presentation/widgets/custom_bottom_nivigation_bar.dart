import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';

import 'package:fruits_hub/features/home/domain/entity/bottom_navigation_bar_entity.dart';

import 'package:fruits_hub/features/home/presentation/widgets/navigation_bar_item.dart';

class CustomBottomNivigationBar extends StatelessWidget {
  const CustomBottomNivigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: ShapeDecoration(
        color: AppColors.borderColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.blackColor,
            blurRadius: 7,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children:bottonNavigationBarItems.map((e){
          return NavigationBarItem(
            bottomNavigationBarEntity: e,
            isSelected: false);
             }).toList(),
          ),
    );
  }
}
