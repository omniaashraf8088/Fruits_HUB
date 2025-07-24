import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/features/auth/presentation/sign_in/widget/social_media.dart';

class SocialMediaList extends StatelessWidget {
  const SocialMediaList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMedia(
          title: 'تسجيل الدخول باستخدام جوجل',
          imageIcon: Assets.svgGoogleIcon,
          onPressed: () {},
        ),
        SizedBox(height: 16),

        SocialMedia(
          title: 'تسجيل دخول باستخدام ابل',
          imageIcon:Assets.svgApplIcon,
          onPressed: () {},
        ),

        SizedBox(height: 16),
        SocialMedia(
          title: 'تسجيل الدخول باستخدام فيسبوك',
          imageIcon: Assets.svgFacebookIcon,
          onPressed: () {},
        ),
      ],
    );
  }
}
