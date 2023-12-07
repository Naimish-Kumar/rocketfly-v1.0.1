import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/subscription_not_successful_provider.dart';

class SubscriptionNotSuccessfulScreen extends StatefulWidget {
  const SubscriptionNotSuccessfulScreen({Key? key}) : super(key: key);

  @override
  SubscriptionNotSuccessfulScreenState createState() =>
      SubscriptionNotSuccessfulScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SubscriptionNotSuccessfulProvider(),
        child: SubscriptionNotSuccessfulScreen());
  }
}

class SubscriptionNotSuccessfulScreenState
    extends State<SubscriptionNotSuccessfulScreen> {
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
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgMaskGroup12,
                      height: 343.adaptSize,
                      width: 343.adaptSize),
                  SizedBox(height: 27.v),
                  Text("msg_something_wrong".tr,
                      style: CustomTextStyles.headlineLargeOnError_1),
                  SizedBox(height: 22.v),
                  Text("msg_please_try_again".tr,
                      style: CustomTextStyles.titleMediumGray700_2),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildTryAgain(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 166.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_alert".tr,
                    margin: EdgeInsets.only(left: 128.h, bottom: 4.v))
              ])),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                      width: double.maxFinite,
                      child: Divider(color: theme.colorScheme.onError))))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTryAgain(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_try_again".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        buttonStyle: CustomButtonStyles.fillDeepPurpleA,
        buttonTextStyle: theme.textTheme.titleLarge!);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
