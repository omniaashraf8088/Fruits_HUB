import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/domain/entity/bottom_navigation_bar_entity.dart';
import 'package:fruits_hub/features/home/presentation/widgets/active_item.dart';
import 'package:fruits_hub/features/home/presentation/widgets/in_active_icon.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({
    super.key,
    required this.isSelected,
    required this.bottomNavigationBarEntity,
  });
  final bool isSelected;
  final BottomNavigationBarEntity bottomNavigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveItem(image:bottomNavigationBarEntity.activeImage, text: bottomNavigationBarEntity.iconName,


        )
        : InActiveItem(image: bottomNavigationBarEntity.inActiveImage);
  }
}
