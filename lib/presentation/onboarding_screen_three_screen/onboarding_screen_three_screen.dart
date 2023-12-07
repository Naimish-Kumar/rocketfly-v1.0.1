import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_screen_three_provider.dart';

class OnboardingScreenThreeScreen extends StatefulWidget {
  const OnboardingScreenThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingScreenThreeScreenState createState() =>
      OnboardingScreenThreeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingScreenThreeProvider(),
      child: OnboardingScreenThreeScreen(),
    );
  }
}

class OnboardingScreenThreeScreenState
    extends State<OnboardingScreenThreeScreen> {
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
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildImagePlaceholder(context),
              SizedBox(height: 29.v),
              Container(
                width: 319.h,
                margin: EdgeInsets.symmetric(horizontal: 11.h),
                child: Text(
                  "msg_let_s_improve_your2".tr,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.headlineLargeMedium.copyWith(
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
        bottomNavigationBar: _buildGetStarted(context),
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
  Widget _buildGetStarted(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_get_started".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 50.v,
      ),
    );
  }
}
