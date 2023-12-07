import 'models/onboarding_screen_two_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_screen_two_provider.dart';

class OnboardingScreenTwoScreen extends StatefulWidget {
  const OnboardingScreenTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingScreenTwoScreenState createState() =>
      OnboardingScreenTwoScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingScreenTwoProvider(),
      child: OnboardingScreenTwoScreen(),
    );
  }
}

class OnboardingScreenTwoScreenState extends State<OnboardingScreenTwoScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
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
                  style: CustomTextStyles.titleMediumSemiBold18,
                ),
              ),
              SizedBox(height: 31.v),
              _buildImagePlaceholder(context),
              SizedBox(height: 29.v),
              Container(
                width: 275.h,
                margin: EdgeInsets.symmetric(horizontal: 33.h),
                child: Text(
                  "msg_learn_anytime_and2".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLargeMedium.copyWith(
                    height: 1.13,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              SizedBox(
                height: 8.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    spacing: 8,
                    activeDotColor: theme.colorScheme.primary,
                    dotColor: theme.colorScheme.primary.withOpacity(0.44),
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
  Widget _buildImagePlaceholder(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 152.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Opacity(
        opacity: 0.3,
        child: CustomImageView(
          imagePath: ImageConstant.imgPlaceHolderErrorcontainer38x299,
          height: 38.v,
          width: 299.h,
        ),
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
    );
  }
}
