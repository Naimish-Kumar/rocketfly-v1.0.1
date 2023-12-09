import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'provider/about_us_provider.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  AboutUsScreenState createState() => AboutUsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => AboutUsProvider(), child: AboutUsScreen());
  }
}

class AboutUsScreenState extends State<AboutUsScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      appBar: _buildAppBar(context),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 22.v),
        child: Column(
            children: [
              SizedBox(
                width: 342.h,
                child: Text(
                  "msg_egestas_nunc_neque".tr,
                  maxLines: 23,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeGray70016
                      .copyWith(height: 1.25),
                ),
              ),
              SizedBox(height: 21.v),
              _buildSocialMedia(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(
          children: [
          Padding(
            padding: EdgeInsets.only(left: 16.h, right: 148.h),
            child: Row(
              children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                  text: "lbl_about_us".tr,
                  margin: EdgeInsets.only(left: 110.h, bottom: 4.v),
                )
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Opacity(
            opacity: 0.08,
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                width: double.maxFinite,
                child: Divider(color: theme.colorScheme.onError),
              ),
            ),
          )
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSocialMedia(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.only(right: 8.h, bottom: 1.v),
        child: _buildInstagram(context,
            userImage: ImageConstant.imgIconIndigo600,
            userName: "lbl_facebook".tr),
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: _buildInstagram(context,
            userImage: ImageConstant.imgIcon40x40,
            userName: "lbl_instagram".tr),
      ),
      Padding(
        padding: EdgeInsets.only(left: 8.h, right: 8.h, bottom: 1.v),
        child: _buildInstagram(context,
            userImage: ImageConstant.imgIconBlue500,
            userName: "lbl_twitter".tr),
      ),
      Padding(
        padding: EdgeInsets.only(left: 8.h, bottom: 1.v),
        child: _buildInstagram(context,
            userImage: ImageConstant.imgIconRedA70001,
            userName: "lbl_youtube".tr),
      )
    ]);
  }

  /// Common widget
  Widget _buildInstagram(
    BuildContext context, {
    required String userImage,
    required String userName,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
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
                  alignment: Alignment.center),
            ),
            SizedBox(height: 14.v),
            Text(
              userName,
              style: CustomTextStyles.labelLargeGray700_1
                  .copyWith(color: appTheme.gray700),
            )
          ],
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
