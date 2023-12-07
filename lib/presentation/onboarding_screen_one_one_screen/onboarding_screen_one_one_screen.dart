import 'models/onboarding_screen_one_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_screen_one_one_provider.dart';

class OnboardingScreenOneOneScreen extends StatefulWidget {
  const OnboardingScreenOneOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingScreenOneOneScreenState createState() =>
      OnboardingScreenOneOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingScreenOneOneProvider(),
      child: OnboardingScreenOneOneScreen(),
    );
  }
}

class OnboardingScreenOneOneScreenState
    extends State<OnboardingScreenOneOneScreen> {
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
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "lbl_skip".tr,
                  style: CustomTextStyles.titleMediumGray700SemiBold,
                ),
              ),
              SizedBox(height: 30.v),
              CustomImageView(
                imagePath: ImageConstant.imgMaskGroup,
                height: 343.adaptSize,
                width: 343.adaptSize,
              ),
              SizedBox(height: 30.v),
              Container(
                width: 330.h,
                margin: EdgeInsets.only(
                  left: 6.h,
                  right: 5.h,
                ),
                child: Text(
                  "msg_we_provide_the_best".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLargeOnError.copyWith(
                    height: 1.13,
                  ),
                ),
              ),
              SizedBox(height: 34.v),
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
        bottomNavigationBar: _buildNextButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_next".tr,
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
