import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:fruits_hub/core/router/routes.dart';
import 'package:fruits_hub/core/services/shared_pref.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/constant.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    executeNavigtion();
    super.initState();
  }

  void executeNavigtion() async {
    // Get instance of SharedPref
    
      final sharedPref = await SharedPref.getInstance();

      // Get the onboarding flag - default is false if not set
      final isOnBoardingPageviewSeen =
          sharedPref.getBool(kIsOnBoardingPageviewSeen) ?? false;

      Future.delayed(Duration(seconds: 5), () {
        if (isOnBoardingPageviewSeen == true) {
          // ignore: use_build_context_synchronously
          Navigator.pushReplacementNamed(context, Routes.signIn);
        } else {
          // ignore: use_build_context_syn                                    chronously
          Navigator.pushReplacementNamed(context, Routes.onBoardingScreen);
        }
      });
    
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [SvgPicture.asset(Assets.svgPlant)],
            ),
            SvgPicture.asset(Assets.svgFruitHub),
            SvgPicture.asset(Assets.svgCircles, fit: BoxFit.fill),
          ],
        ),
      ),
    );
  }
}
