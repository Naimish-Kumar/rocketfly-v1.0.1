import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/onboarding_screen_one_provider.dart';

class OnboardingScreenOneScreen extends StatefulWidget {
  const OnboardingScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingScreenOneScreenState createState() =>
      OnboardingScreenOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => OnboardingScreenOneProvider(),
      child: OnboardingScreenOneScreen(),
    );
  }
}

class OnboardingScreenOneScreenState extends State<OnboardingScreenOneScreen> {
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
              _buildImagePlaceholderSection(context),
              SizedBox(height: 29.v),
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
                  style: CustomTextStyles.headlineLargeMedium.copyWith(
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
        bottomNavigationBar: _buildNext(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildImagePlaceholderSection(BuildContext context) {
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
  Widget _buildNext(BuildContext context) {
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
