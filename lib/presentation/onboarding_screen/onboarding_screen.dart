import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/onboarding_screen_one_one_screen/onboarding_screen_one_one_screen.dart';
import 'package:rocketfly/presentation/onboarding_screen_three_one_screen/onboarding_screen_three_one_screen.dart';
import 'package:rocketfly/presentation/onboarding_screen_two_one_screen/onboarding_screen_two_one_screen.dart';
import 'package:rocketfly/routes/app_routes.dart';
import 'package:rocketfly/theme/custom_button_style.dart';
import 'package:rocketfly/theme/theme_helper.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final pageController = PageController();
  List<Widget> onboardingScreens = [
    OnboardingScreenOne(),
    OnboardingScreenTwo(),
    OnboardingScreenThree(),
  ];
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: PageView.builder(
                onPageChanged: ((value) {
                  setState(() {
                    currentPage = value;
                  });
                }),
                controller: pageController,
                scrollDirection: Axis.horizontal,
                itemCount: onboardingScreens.length,
                itemBuilder: ((context, index) {
                  return onboardingScreens[index];
                }),
              ),
            ),
        //    OnBoardingAnimation(
        //   pages: onboardingScreens,
        //   indicatorDotHeight: 7.0,
        //   indicatorDotWidth: 7.0,
        //   indicatorType: IndicatorType.expandingDots,
        //   indicatorPosition: IndicatorPosition.bottomCenter,
        // ),
            Align(
                alignment: Alignment.bottomCenter,
                child: _buildNextButton(context)),
          ],
        ),
      ),
    );
  }

  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        if (currentPage < onboardingScreens.length - 1) {
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeIn,
          );
        } else {
          Navigator.pushNamed(context, AppRoutes.signInScreen);
        }
      },
      text:
          currentPage == onboardingScreens.length - 1 ? "Start" : 'lbl_next'.tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 50.v,
      ),
      buttonStyle: CustomButtonStyles.fillDeepPurpleA,
      buttonTextStyle: theme.textTheme.titleLarge!,
    );
  }
}
