import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'provider/about_us_screen_one_provider.dart';

class AboutUsScreenOneScreen extends StatefulWidget {
  const AboutUsScreenOneScreen({Key? key}) : super(key: key);

  @override
  AboutUsScreenOneScreenState createState() => AboutUsScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AboutUsScreenOneProvider(),
        child: AboutUsScreenOneScreen());
  }
}

class AboutUsScreenOneScreenState extends State<AboutUsScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 22.v),
                child: Column(children: [
                  SizedBox(
                      width: 342.h,
                      child: Text("msg_egestas_nunc_neque".tr,
                          maxLines: 23,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLarge16
                              .copyWith(height: 1.25))),
                  SizedBox(height: 21.v),
                  _buildSocialMedia(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 148.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_about_us".tr,
                    margin: EdgeInsets.only(left: 110.h, bottom: 4.v))
              ])),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(width: double.maxFinite, child: Divider())))
        ]),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildSocialMedia(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(right: 8.h, bottom: 1.v),
          child: _buildInstagram(context,
              userImage: ImageConstant.imgIconIndigo600,
              userLabel: "lbl_facebook".tr)),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: _buildInstagram(context,
              userImage: ImageConstant.imgIcon40x40,
              userLabel: "lbl_instagram".tr)),
      Padding(
          padding: EdgeInsets.only(left: 8.h, right: 8.h, bottom: 1.v),
          child: _buildInstagram(context,
              userImage: ImageConstant.imgIconBlue500,
              userLabel: "lbl_twitter".tr)),
      Padding(
          padding: EdgeInsets.only(left: 8.h, bottom: 1.v),
          child: _buildInstagram(context,
              userImage: ImageConstant.imgIconRedA70001,
              userLabel: "lbl_youtube".tr))
    ]);
  }

  /// Common widget
  Widget _buildInstagram(
    BuildContext context, {
    required String userImage,
    required String userLabel,
  }) {
    return Expanded(
        child: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              Container(
                  height: 74.adaptSize,
                  width: 74.adaptSize,
                  padding: EdgeInsets.all(17.h),
                  decoration: AppDecoration.gradientPrimaryContainerToAmber
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder37),
                  child: CustomImageView(
                      imagePath: userImage,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      alignment: Alignment.center)),
              SizedBox(height: 14.v),
              Text(userLabel,
                  style: theme.textTheme.labelLarge!
                      .copyWith(color: theme.colorScheme.errorContainer))
            ])));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
