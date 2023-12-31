import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/new_release_courses_provider.dart';

class NewReleaseCoursesScreen extends StatefulWidget {
  const NewReleaseCoursesScreen({Key? key}) : super(key: key);

  @override
  NewReleaseCoursesScreenState createState() => NewReleaseCoursesScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NewReleaseCoursesProvider(),
        child: NewReleaseCoursesScreen());
  }
}

class NewReleaseCoursesScreenState extends State<NewReleaseCoursesScreen> {
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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 22.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(children: [
                                _buildBookmarkRow(context),
                                SizedBox(height: 12.v),
                                _buildMasterYourMindsetRow(context),
                                SizedBox(height: 7.v),
                                _buildDuration(context,
                                    durationLabel: "lbl_7_11_years".tr,
                                    distanceLabel: "lbl_3h_20m".tr,
                                    durationLabel2: "lbl_12_15_years".tr,
                                    distanceLabel2: "lbl_1h_30m".tr),
                                SizedBox(height: 15.v),
                                _buildScienceRow(context),
                                SizedBox(height: 12.v),
                                _buildTheCompleteRow(context),
                                SizedBox(height: 6.v),
                                _buildDuration(context,
                                    durationLabel: "lbl_16_22_years".tr,
                                    distanceLabel: "lbl_2h_40m".tr,
                                    durationLabel2: "lbl_23_60_years2".tr,
                                    distanceLabel2: "lbl_1h_30m".tr),
                                SizedBox(height: 15.v),
                                _buildLifestyleRow(context),
                                SizedBox(height: 12.v),
                                _buildSelfHypnosisForRow(context),
                                SizedBox(height: 6.v),
                                _buildDuration(context,
                                    durationLabel: "lbl_7_11_years".tr,
                                    distanceLabel: "lbl_3h_20m".tr,
                                    durationLabel2: "lbl_12_15_years".tr,
                                    distanceLabel2: "lbl_1h_30m".tr),
                                SizedBox(height: 15.v),
                                _buildBookmarkRow1(context),
                                SizedBox(height: 11.v),
                                _buildDurationRow1(context)
                              ]))))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 49.v),
                child: _buildDuration(context,
                    durationLabel: "lbl_23_60_years".tr,
                    distanceLabel: "lbl_3h_20m".tr,
                    durationLabel2: "lbl_16_22_years".tr,
                    distanceLabel2: "lbl_1h_30m".tr))));
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
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_new_release2".tr,
                    margin: EdgeInsets.only(left: 95.h, bottom: 4.v)),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgButtonFilterOnerror,
                    margin: EdgeInsets.only(left: 93.h))
              ])),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(color: theme.colorScheme.onError)))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildBookmarkRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          height: 170.v,
          width: 163.h,
          child: Stack(alignment: Alignment.bottomLeft, children: [
            Padding(
                padding: EdgeInsets.only(top: 8.v, right: 8.h),
                child: CustomIconButton(
                    height: 32.v,
                    width: 31.h,
                    padding: EdgeInsets.all(5.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgBookmarkOnerror))),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
                    decoration: AppDecoration.gradientDeepPurpleAToDeepPurpleA
                        .copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Text("lbl_business".tr,
                        style: theme.textTheme.labelMedium))),
            CustomImageView(
                imagePath: ImageConstant.imgMaskGroup15,
                height: 170.v,
                width: 163.h,
                alignment: Alignment.center)
          ])),
      SizedBox(
          height: 170.v,
          width: 163.h,
          child: Stack(alignment: Alignment.bottomLeft, children: [
            Padding(
                padding: EdgeInsets.only(top: 8.v, right: 8.h),
                child: CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    alignment: Alignment.topRight,
                    child:
                        CustomImageView(imagePath: ImageConstant.imgBookmark))),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
                    decoration: AppDecoration.gradientDeepPurpleAToDeepPurpleA
                        .copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.v),
                          Text("lbl_game_design".tr,
                              style: theme.textTheme.labelMedium)
                        ]))),
            CustomImageView(
                imagePath: ImageConstant.imgMaskGroup170x163,
                height: 170.v,
                width: 163.h,
                alignment: Alignment.center)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildMasterYourMindsetRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 29.h),
            child: Row(children: [
              SizedBox(
                  width: 154.h,
                  child: Text("msg_master_your_mindset".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallOnErrorSemiBold
                          .copyWith(height: 1.29))),
              Container(
                  width: 133.h,
                  margin: EdgeInsets.only(left: 24.h),
                  child: Text("msg_introduction_to".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallOnErrorSemiBold
                          .copyWith(height: 1.29)))
            ])));
  }

  /// Section Widget
  Widget _buildScienceRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          height: 170.v,
          width: 163.h,
          child: Stack(alignment: Alignment.bottomLeft, children: [
            Padding(
                padding: EdgeInsets.only(top: 8.v, right: 8.h),
                child: CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    alignment: Alignment.topRight,
                    child:
                        CustomImageView(imagePath: ImageConstant.imgBookmark))),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
                    decoration: AppDecoration.gradientDeepPurpleAToDeepPurpleA
                        .copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.v),
                          Text("lbl_development".tr,
                              style: theme.textTheme.labelMedium)
                        ]))),
            CustomImageView(
                imagePath: ImageConstant.imgMaskGroup80x80,
                height: 170.v,
                width: 163.h,
                alignment: Alignment.center)
          ])),
      SizedBox(
          height: 170.v,
          width: 163.h,
          child: Stack(alignment: Alignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgMaskGroup21,
                height: 170.v,
                width: 163.h,
                alignment: Alignment.center),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomIconButton(
                              height: 32.adaptSize,
                              width: 32.adaptSize,
                              padding: EdgeInsets.all(6.h),
                              alignment: Alignment.centerRight,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgBookmarkOnerror)),
                          SizedBox(height: 94.v),
                          CustomElevatedButton(
                              height: 28.v,
                              width: 50.h,
                              text: "lbl_science".tr,
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientDeepPurpleAToDeepPurpleADecoration,
                              buttonTextStyle: theme.textTheme.labelMedium!)
                        ])))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildTheCompleteRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 155.h,
              child: Text("msg_the_complete_20234".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallOnErrorSemiBold
                      .copyWith(height: 1.29))),
          Container(
              width: 158.h,
              margin: EdgeInsets.only(left: 23.h),
              child: Text("msg_the_beginners_course".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleSmallOnErrorSemiBold
                      .copyWith(height: 1.29)))
        ]));
  }

  /// Section Widget
  Widget _buildLifestyleRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          height: 170.v,
          width: 163.h,
          child: Stack(alignment: Alignment.topRight, children: [
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
                    decoration: AppDecoration.gradientDeepPurpleAToDeepPurpleA
                        .copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.v),
                          Text("lbl_lifestyle".tr,
                              style: theme.textTheme.labelMedium)
                        ]))),
            Padding(
                padding: EdgeInsets.only(top: 8.v, right: 8.h),
                child: CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgBookmarkOnerror))),
            CustomImageView(
                imagePath: ImageConstant.imgMaskGroup22,
                height: 170.v,
                width: 163.h,
                alignment: Alignment.center)
          ])),
      SizedBox(
          height: 170.v,
          width: 163.h,
          child: Stack(alignment: Alignment.bottomLeft, children: [
            Padding(
                padding: EdgeInsets.only(top: 8.v, right: 8.h),
                child: CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    alignment: Alignment.topRight,
                    child:
                        CustomImageView(imagePath: ImageConstant.imgBookmark))),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
                    decoration: AppDecoration.gradientDeepPurpleAToDeepPurpleA
                        .copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.v),
                          Text("lbl_photography".tr,
                              style: theme.textTheme.labelMedium)
                        ]))),
            CustomImageView(
                imagePath: ImageConstant.imgMaskGroup18,
                height: 170.v,
                width: 163.h,
                alignment: Alignment.center)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildSelfHypnosisForRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 33.h),
            child: Row(children: [
              SizedBox(
                  width: 150.h,
                  child: Text("msg_self_hypnosis_for".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallOnErrorSemiBold
                          .copyWith(height: 1.29))),
              Container(
                  width: 129.h,
                  margin: EdgeInsets.only(left: 29.h),
                  child: Text("msg_become_a_better".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallOnErrorSemiBold
                          .copyWith(height: 1.29)))
            ])));
  }

  /// Section Widget
  Widget _buildBookmarkRow1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      SizedBox(
          height: 170.v,
          width: 163.h,
          child: Stack(alignment: Alignment.bottomLeft, children: [
            Padding(
                padding: EdgeInsets.only(top: 8.v, right: 8.h),
                child: CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    alignment: Alignment.topRight,
                    child:
                        CustomImageView(imagePath: ImageConstant.imgBookmark))),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 7.v),
                    decoration: AppDecoration.gradientDeepPurpleAToDeepPurpleA
                        .copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Text("msg_health_fitness".tr,
                        style: theme.textTheme.labelMedium))),
            CustomImageView(
                imagePath: ImageConstant.imgMaskGroup23,
                height: 170.v,
                width: 163.h,
                alignment: Alignment.center)
          ])),
      SizedBox(
          height: 170.v,
          width: 163.h,
          child: Stack(alignment: Alignment.bottomLeft, children: [
            Padding(
                padding: EdgeInsets.only(top: 8.v, right: 8.h),
                child: CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgBookmarkOnerror))),
            Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                    margin: EdgeInsets.only(left: 8.h, bottom: 8.v),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 6.v),
                    decoration: AppDecoration.gradientDeepPurpleAToDeepPurpleA
                        .copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.v),
                          Text("lbl_design".tr,
                              style: theme.textTheme.labelMedium)
                        ]))),
            CustomImageView(
                imagePath: ImageConstant.imgMaskGroup3,
                height: 170.v,
                width: 163.h,
                alignment: Alignment.center)
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildDurationRow1(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
          width: 135.h,
          child: Text("msg_15_minutes_x_15".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallOnErrorSemiBold
                  .copyWith(height: 1.29))),
      Container(
          width: 159.h,
          margin: EdgeInsets.only(left: 44.h, bottom: 2.v),
          child: Text("msg_become_a_ux_designer2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallOnErrorSemiBold
                  .copyWith(height: 1.29)))
    ]);
  }

  /// Common widget
  Widget _buildDuration(
    BuildContext context, {
    required String durationLabel,
    required String distanceLabel,
    required String durationLabel2,
    required String distanceLabel2,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(durationLabel,
          style: CustomTextStyles.labelLargeOnError
              .copyWith(color: theme.colorScheme.onError.withOpacity(1))),
      Spacer(flex: 55),
      CustomImageView(
          imagePath: ImageConstant.imgIconGray700,
          height: 16.adaptSize,
          width: 16.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(distanceLabel,
              style: CustomTextStyles.labelLargeGray700_1
                  .copyWith(color: appTheme.gray700))),
      Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(durationLabel2,
              style: CustomTextStyles.labelLargeOnError
                  .copyWith(color: theme.colorScheme.onError.withOpacity(1)))),
      Spacer(flex: 44),
      CustomImageView(
          imagePath: ImageConstant.imgIconGray700,
          height: 16.adaptSize,
          width: 16.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(distanceLabel2,
              style: CustomTextStyles.labelLargeGray700_1
                  .copyWith(color: appTheme.gray700)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
