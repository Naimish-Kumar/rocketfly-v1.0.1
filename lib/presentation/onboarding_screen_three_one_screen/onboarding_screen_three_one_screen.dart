import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_screen_three_one_provider.dart';

class OnboardingScreenThreeOneScreen extends StatefulWidget {
  const OnboardingScreenThreeOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingScreenThreeOneScreenState createState() =>
      OnboardingScreenThreeOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingScreenThreeOneProvider(),
      child: OnboardingScreenThreeOneScreen(),
    );
  }
}

class OnboardingScreenThreeOneScreenState
    extends State<OnboardingScreenThreeOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgMaskGroup1,
                height: 343.adaptSize,
                width: 343.adaptSize,
              ),
              SizedBox(height: 29.v),
              Container(
                width: 319.h,
                margin: EdgeInsets.symmetric(horizontal: 11.h),
                child: Text(
                  "msg_let_s_improve_your".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLargeOnError.copyWith(
                    height: 1.13,
                  ),
                ),
              ),
              SizedBox(height: 28.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 8,
                    activeDotColor: theme.colorScheme.onSecondaryContainer,
                    dotColor: theme.colorScheme.onError.withOpacity(0.44),
                    dotHeight: 8.v,
                    dotWidth: 8.h,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildGetStartedButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildGetStartedButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_get_started".tr,
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
