import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_switch.dart';
import 'provider/setting_provider.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  SettingScreenState createState() => SettingScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingProvider(), child: SettingScreen());
  }
}

class SettingScreenState extends State<SettingScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(children: [
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 8.v),
                  _buildLanguage(context,
                      icon: ImageConstant.imgIcon10,
                      userLanguage: "lbl_notification".tr),
                  SizedBox(height: 8.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 8.v),
                  _buildLanguage(context,
                      icon: ImageConstant.imgIcon11,
                      userLanguage: "lbl_language".tr),
                  SizedBox(height: 8.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 8.v),
                  _buildLanguage(context,
                      icon: ImageConstant.imgIcon12,
                      userLanguage: "lbl_about_us".tr),
                  SizedBox(height: 8.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 8.v),
                  _buildLanguage(context,
                      icon: ImageConstant.imgIcon13,
                      userLanguage: "lbl_privacy_policy".tr),
                  SizedBox(height: 8.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 8.v),
                  _buildLanguage(context,
                      icon: ImageConstant.imgIcon14,
                      userLanguage: "lbl_faqs".tr),
                  SizedBox(height: 8.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 8.v),
                  _buildLanguage(context,
                      icon: ImageConstant.imgIcon15,
                      userLanguage: "lbl_send_feedback".tr),
                  SizedBox(height: 8.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 8.v),
                  _buildLanguage(context,
                      icon: ImageConstant.imgIcon16,
                      userLanguage: "lbl_rate_us".tr),
                  SizedBox(height: 8.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 8.v),
                  _buildDarkMode(context),
                  SizedBox(height: 8.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 8.v),
                  _buildLanguage(context,
                      icon: ImageConstant.imgIcon18,
                      userLanguage: "lbl_invite_friends".tr),
                  SizedBox(height: 8.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 8.v)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 73.v),
                child: _buildLanguage(context,
                    icon: ImageConstant.imgIcon19,
                    userLanguage: "lbl_logout".tr))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 51.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 152.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_settings".tr,
                    margin: EdgeInsets.only(left: 114.h, top: 2.v, bottom: 2.v))
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
  Widget _buildDarkMode(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      _buildSeventySix(context),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 13.v),
          child: Text("lbl_dark_mode".tr,
              style: CustomTextStyles.titleMediumOnError_1)),
      Spacer(),
      Selector<SettingProvider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch,
          builder: (context, isSelectedSwitch, child) {
            return CustomSwitch(
                margin: EdgeInsets.symmetric(vertical: 12.v),
                value: isSelectedSwitch,
                onChange: (value) {
                  context.read<SettingProvider>().changeSwitchBox(value);
                });
          })
    ]);
  }

  /// Common widget
  Widget _buildLanguage(
    BuildContext context, {
    required String icon,
    required String userLanguage,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          height: 48.adaptSize,
          width: 48.adaptSize,
          child: Stack(alignment: Alignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgShape,
                height: 48.adaptSize,
                width: 48.adaptSize,
                alignment: Alignment.center),
            CustomImageView(
                imagePath: icon,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.center)
          ])),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 15.v, bottom: 12.v),
          child: Text(userLanguage,
              style: CustomTextStyles.titleMediumOnError_1
                  .copyWith(color: theme.colorScheme.onError.withOpacity(1)))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowLeft,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 12.v))
    ]);
  }

  /// Common widget
  Widget _buildSeventySix(BuildContext context) {
    return SizedBox(
        height: 48.adaptSize,
        width: 48.adaptSize,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgShape,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.center),
          CustomImageView(
              imagePath: ImageConstant.imgIcon17,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center)
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
