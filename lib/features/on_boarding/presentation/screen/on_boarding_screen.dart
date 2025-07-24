import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruits_hub/core/services/shared_pref.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/constant.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/auth/presentation/sign_in/screen/sign_in.dart';



import 'package:fruits_hub/features/on_boarding/presentation/widgets/on_boarding_page_view.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  var currentPage = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(child: OnBoardingPageview(pageController: pageController)),

            DotsIndicator(
              dotsCount: 2,
              decorator: DotsDecorator(
                activeColor: AppColors.deepGreenrColor,
                size: const Size(11, 11),
                color:
                    currentPage == 1
                        ? AppColors.deepGreenrColor
                        : AppColors.greenrColor,
                spacing: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            const SizedBox(height: 29),
            Visibility(
              maintainAnimation: true,
              maintainSize: true,
              maintainState: true,
              visible: currentPage == 1 ? true : false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: CustomButton(
                  onPressed: () {
                    SharedPref.getInstance().then((value) {
                      value.setBool(kIsOnBoardingPageviewSeen, true);
                    });
                    // Navigate to the login screen
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) =>SignIn() ),
                    );
                  },
                  text: 'ابدا الان',
                ),
              ),
            ),
            SizedBox(height: 43),
          ],
        ),
      ),
    );
  }
}
