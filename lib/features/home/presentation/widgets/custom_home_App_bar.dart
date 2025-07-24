import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notification_add)),
        ListTile(

          leading: SvgPicture.asset(Assets.imagesProfileImage) ,
          
          title: Text('صباح الخير!..',
          style: AppTextStyles.style13w700.copyWith(
            fontSize: 16
          ),),
          subtitle: Text('احمد مصطفي',
           style: AppTextStyles.style19w700.copyWith(
            fontSize: 16
           )
          
          ),
          trailing: Container(padding:EdgeInsets.symmetric(horizontal: 12),
          decoration: ShapeDecoration(
            shape: OvalBorder(),),
          
            child:SvgPicture.asset(Assets.svgNotification),
            
          
        ),)
      ],
    );
  }
}
