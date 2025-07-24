import 'package:fruits_hub/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeImage, inActiveImage;
  final String iconName;

  BottomNavigationBarEntity({
    required this.activeImage,
    required this.inActiveImage,
    required this.iconName,
  });
}
List<BottomNavigationBarEntity> get bottonNavigationBarItems => [
  BottomNavigationBarEntity(
    activeImage: Assets.svgPineapple,
    inActiveImage: Assets.svgNotification,
    iconName: 'الرئيسية',
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.svgPineapple,
    inActiveImage: Assets.svgNotification,
    iconName: 'المنتجات',
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.svgPineapple,
    inActiveImage: Assets.svgNotification,
    iconName: 'سله التسوق',
  ),
  BottomNavigationBarEntity(
    activeImage: Assets.svgPineapple,
    inActiveImage: Assets.svgNotification,
    iconName: 'حسابي',
  ),
];
