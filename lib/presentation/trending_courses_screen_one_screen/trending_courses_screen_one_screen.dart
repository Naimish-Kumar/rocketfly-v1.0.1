import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/trending_courses_screen_one_provider.dart';

class TrendingCoursesScreenOneScreen extends StatefulWidget {
  const TrendingCoursesScreenOneScreen({Key? key}) : super(key: key);

  @override
  TrendingCoursesScreenOneScreenState createState() =>
      TrendingCoursesScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TrendingCoursesScreenOneProvider(),
        child: TrendingCoursesScreenOneScreen());
  }
}

class TrendingCoursesScreenOneScreenState
    extends State<TrendingCoursesScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 22.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: SafeArea(
                          child: Column(children: [
                            _buildDesignStack(context),
                            SizedBox(height: 13.v),
                            _buildIconStack(context),
                            SizedBox(height: 15.v),
                            _buildDevelopmentStack(context),
                            SizedBox(height: 13.v),
                            _buildIconStack1(context),
                            SizedBox(height: 15.v),
                            _buildFitnessStack(context),
                            SizedBox(height: 13.v),
                            _buildIconStack2(context),
                            SizedBox(height: 15.v),
                            _buildLifestyleStack(context),
                            SizedBox(height: 13.v),
                            _buildIconStack3(context),
                            SizedBox(height: 15.v),
                            _buildMusicStack(context),
                            SizedBox(height: 12.v),
                            _buildTheProfessionalRow(context)
                          ]),
                        )))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "msg_trending_courses2".tr,
                    margin: EdgeInsets.only(left: 76.h, top: 2.v, bottom: 2.v)),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgButtonFilterPrimary,
                    margin: EdgeInsets.only(left: 74.h))
              ])),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildDesignButton(BuildContext context) {
    return CustomElevatedButton(
        height: 33.v,
        width: 59.h,
        text: "lbl_design".tr,
        margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientOnErrorToOnErrorDecoration,
        buttonTextStyle: theme.textTheme.titleSmall!,
        alignment: Alignment.bottomLeft);
  }

  /// Section Widget
  Widget _buildDesignStack(BuildContext context) {
    return SizedBox(
        height: 180.v,
        width: 343.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 117.h, vertical: 50.v),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Opacity(
                      opacity: 0.3,
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgPlaceHolderErrorcontainer80x108,
                          height: 80.v,
                          width: 108.h)))),
          Padding(
              padding: EdgeInsets.only(top: 8.v, right: 8.h),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  alignment: Alignment.topRight,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgBookmark))),
          _buildDesignButton(context)
        ]));
  }

  /// Section Widget
  Widget _buildIconStack(BuildContext context) {
    return SizedBox(
        height: 48.v,
        width: 343.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          _buildReview(context, userName: "lbl_5_0".tr),
          Align(
              alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_create_design".tr,
                        style: CustomTextStyles.titleMediumPrimary),
                    SizedBox(height: 6.v),
                    _buildPrice(context,
                        price: "lbl_180_00".tr, oldPrice: "lbl_210_00".tr)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDevelopmentButton(BuildContext context) {
    return CustomElevatedButton(
        height: 33.v,
        width: 100.h,
        text: "lbl_development".tr,
        margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientOnErrorToOnErrorDecoration,
        buttonTextStyle: theme.textTheme.titleSmall!,
        alignment: Alignment.bottomLeft);
  }

  /// Section Widget
  Widget _buildDevelopmentStack(BuildContext context) {
    return SizedBox(
        height: 180.v,
        width: 343.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 117.h, vertical: 50.v),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Opacity(
                      opacity: 0.3,
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgPlaceHolderErrorcontainer80x108,
                          height: 80.v,
                          width: 108.h)))),
          Padding(
              padding: EdgeInsets.only(top: 8.v, right: 8.h),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgBookmarkOnprimarycontainer))),
          _buildDevelopmentButton(context)
        ]));
  }

  /// Section Widget
  Widget _buildIconStack1(BuildContext context) {
    return SizedBox(
        height: 48.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          _buildReview(context, userName: "lbl_4_8".tr),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_the_complete_20233".tr,
                            style: CustomTextStyles.titleMediumPrimary),
                        SizedBox(height: 6.v),
                        Text("lbl_150_00".tr,
                            style: CustomTextStyles.titleMediumPrimary_1)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildFitnessButton(BuildContext context) {
    return CustomElevatedButton(
        height: 33.v,
        width: 60.h,
        text: "lbl_fitness".tr,
        margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientOnErrorToOnErrorDecoration,
        buttonTextStyle: theme.textTheme.titleSmall!,
        alignment: Alignment.bottomLeft);
  }

  /// Section Widget
  Widget _buildFitnessStack(BuildContext context) {
    return SizedBox(
        height: 180.v,
        width: 343.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 117.h, vertical: 50.v),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Opacity(
                      opacity: 0.3,
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgPlaceHolderErrorcontainer80x108,
                          height: 80.v,
                          width: 108.h)))),
          Padding(
              padding: EdgeInsets.only(top: 8.v, right: 8.h),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  alignment: Alignment.topRight,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgBookmark))),
          _buildFitnessButton(context)
        ]));
  }

  /// Section Widget
  Widget _buildIconStack2(BuildContext context) {
    return SizedBox(
        height: 48.v,
        width: 343.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          _buildReview(context, userName: "lbl_4_5".tr),
          Align(
              alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_complete_stretching".tr,
                        style: CustomTextStyles.titleMediumPrimary),
                    SizedBox(height: 6.v),
                    _buildPrice(context,
                        price: "lbl_140_00".tr, oldPrice: "lbl_210_00".tr)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildLifestyleButton(BuildContext context) {
    return CustomElevatedButton(
        height: 33.v,
        width: 68.h,
        text: "lbl_lifestyle".tr,
        margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientOnErrorToOnErrorDecoration,
        buttonTextStyle: theme.textTheme.titleSmall!,
        alignment: Alignment.bottomLeft);
  }

  /// Section Widget
  Widget _buildLifestyleStack(BuildContext context) {
    return SizedBox(
        height: 180.v,
        width: 343.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 117.h, vertical: 50.v),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Opacity(
                      opacity: 0.3,
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgPlaceHolderErrorcontainer80x108,
                          height: 80.v,
                          width: 108.h)))),
          Padding(
              padding: EdgeInsets.only(top: 8.v, right: 8.h),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgBookmarkOnprimarycontainer))),
          _buildLifestyleButton(context)
        ]));
  }

  /// Section Widget
  Widget _buildIconStack3(BuildContext context) {
    return SizedBox(
        height: 48.v,
        width: 343.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          _buildReview(context, userName: "lbl_4_8".tr),
          Align(
              alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_how_to_find_the".tr,
                        style: CustomTextStyles.titleMediumPrimary),
                    SizedBox(height: 6.v),
                    Text("lbl_150_00".tr,
                        style: CustomTextStyles.titleMediumPrimary_1)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildMusicButton(BuildContext context) {
    return CustomElevatedButton(
        height: 33.v,
        width: 53.h,
        text: "lbl_music".tr,
        margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
        buttonStyle: CustomButtonStyles.none,
        decoration: CustomButtonStyles.gradientOnErrorToOnErrorDecoration,
        buttonTextStyle: theme.textTheme.titleSmall!,
        alignment: Alignment.bottomLeft);
  }

  /// Section Widget
  Widget _buildMusicStack(BuildContext context) {
    return SizedBox(
        height: 180.v,
        width: 343.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 117.h, vertical: 50.v),
                  decoration: AppDecoration.fillBlueGray
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Opacity(
                      opacity: 0.3,
                      child: CustomImageView(
                          imagePath:
                              ImageConstant.imgPlaceHolderErrorcontainer80x108,
                          height: 80.v,
                          width: 108.h)))),
          Padding(
              padding: EdgeInsets.only(top: 8.v, right: 8.h),
              child: CustomIconButton(
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  alignment: Alignment.topRight,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgBookmarkOnprimarycontainer))),
          _buildMusicButton(context)
        ]));
  }

  /// Section Widget
  Widget _buildTheProfessionalRow(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Text("msg_the_professional".tr,
                    style: CustomTextStyles.titleMediumPrimary),
                SizedBox(height: 7.v),
                Text("lbl_225_00".tr,
                    style: CustomTextStyles.titleMediumPrimary_1)
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgIconYellow900,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(left: 11.h, top: 29.v)),
          Padding(
              padding: EdgeInsets.only(left: 4.h, top: 29.v),
              child: Text("lbl_4_6".tr, style: theme.textTheme.titleMedium))
        ]);
  }

  /// Common widget
  Widget _buildReview(
    BuildContext context, {
    required String userName,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgIconYellow900,
              height: 20.adaptSize,
              width: 20.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(userName,
                  style: theme.textTheme.titleMedium!
                      .copyWith(color: theme.colorScheme.errorContainer)))
        ]);
  }

  /// Common widget
  Widget _buildPrice(
    BuildContext context, {
    required String price,
    required String oldPrice,
  }) {
    return Row(children: [
      Text(price,
          style: CustomTextStyles.titleMediumPrimary_1
              .copyWith(color: theme.colorScheme.primary)),
      Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(oldPrice,
              style: CustomTextStyles.titleSmallErrorContainer_1.copyWith(
                  decoration: TextDecoration.lineThrough,
                  color: theme.colorScheme.errorContainer)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
