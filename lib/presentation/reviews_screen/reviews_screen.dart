import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_rating_bar.dart';
import 'provider/reviews_provider.dart';

class ReviewsScreen extends StatefulWidget {
  const ReviewsScreen({Key? key}) : super(key: key);

  @override
  ReviewsScreenState createState() => ReviewsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ReviewsProvider(), child: ReviewsScreen());
  }
}

class ReviewsScreenState extends State<ReviewsScreen> {
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
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 22.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 16.h, right: 16.h, bottom: 5.v),
                        child: Column(children: [
                          _buildDesignRow(context),
                          SizedBox(height: 23.v),
                          Opacity(
                              opacity: 0.08,
                              child: Divider(color: theme.colorScheme.onError)),
                          SizedBox(height: 24.v),
                          _buildAmiJacksonStack(context),
                          SizedBox(height: 5.v),
                          _buildHelpful(context,
                              totalRating: "lbl_369".tr,
                              userRating: "lbl_10".tr,
                              wasThisReview: "msg_was_this_review".tr),
                          SizedBox(height: 24.v),
                          _buildKevinSmithStack(context),
                          SizedBox(height: 5.v),
                          _buildHelpful(context,
                              totalRating: "lbl_463".tr,
                              userRating: "lbl_56".tr,
                              wasThisReview: "msg_was_this_review".tr),
                          SizedBox(height: 24.v),
                          _buildLauraFlemoStack(context),
                          SizedBox(height: 5.v),
                          _buildHelpfulStack1(context),
                          SizedBox(height: 24.v),
                          _buildCaityLauranceStack(context),
                          SizedBox(height: 5.v),
                          _buildHelpful(context,
                              totalRating: "lbl_344".tr,
                              userRating: "lbl_28".tr,
                              wasThisReview: "msg_was_this_review".tr)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 157.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_review".tr,
                    margin: EdgeInsets.only(left: 118.h, bottom: 4.v))
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
  Widget _buildDesignRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      CustomImageView(
          imagePath: ImageConstant.imgMaskGroup3,
          height: 128.adaptSize,
          width: 128.adaptSize),
      Column(children: [
        SizedBox(
            width: 203.h,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                      height: 28.v,
                      width: 47.h,
                      text: "lbl_design".tr,
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: CustomTextStyles.labelMediumOnError),
                  CustomIconButton(
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: IconButtonStyleHelper.fillGray,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgBookmarkOnerror))
                ])),
        SizedBox(height: 12.v),
        SizedBox(
            height: 63.v,
            width: 203.h,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconGray700,
                            height: 16.adaptSize,
                            width: 16.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("lbl_1h_30m".tr,
                                style: CustomTextStyles.labelLargeGray700_1))
                      ])),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(right: 3.h),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 199.h,
                                child: Text("msg_responsive_design".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.titleSmallOnError_1
                                        .copyWith(height: 1.29))),
                            SizedBox(height: 11.v),
                            Text("lbl_7_11_years".tr,
                                style: CustomTextStyles.labelLargeOnError)
                          ])))
            ])),
        SizedBox(height: 7.v),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIconOnsecondarycontainer,
              height: 16.adaptSize,
              width: 16.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_4".tr,
                        style: CustomTextStyles.labelLargeGray700),
                    TextSpan(
                        text: "lbl".tr,
                        style: CustomTextStyles.labelLargeGray700),
                    TextSpan(
                        text: "lbl_3".tr,
                        style: CustomTextStyles.labelLargeGray700),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_3_7k_ratings".tr,
                        style: CustomTextStyles.labelLargeGray700),
                    TextSpan(
                        text: "lbl_104_2k".tr,
                        style: CustomTextStyles.labelLargeGray700),
                    TextSpan(
                        text: "lbl_students".tr,
                        style: CustomTextStyles.labelLargeGray700)
                  ]),
                  textAlign: TextAlign.left))
        ])
      ])
    ]);
  }

  /// Section Widget
  Widget _buildAmiJacksonStack(BuildContext context) {
    return SizedBox(
        height: 94.v,
        width: 343.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgButtonMore,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 12.v)),
          Align(
              alignment: Alignment.bottomLeft,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 59.h),
                        child: Text("lbl_ami_jackson".tr,
                            style: CustomTextStyles.titleMediumOnError))),
                SizedBox(height: 7.v),
                Text("lbl_20_minutes_ago".tr,
                    style: CustomTextStyles.labelMediumGray700),
                SizedBox(height: 13.v),
                SizedBox(
                    width: 325.h,
                    child: Text("msg_the_course_is_very".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeGray700_1
                            .copyWith(height: 1.50)))
              ])),
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup48x48,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.topLeft),
          Padding(
              padding: EdgeInsets.only(left: 60.h, top: 31.v),
              child: CustomRatingBar(
                  alignment: Alignment.topLeft, initialRating: 0))
        ]));
  }

  /// Section Widget
  Widget _buildKevinSmithStack(BuildContext context) {
    return SizedBox(
        height: 94.v,
        width: 343.h,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup8,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.topLeft),
          CustomImageView(
              imagePath: ImageConstant.imgButtonMore,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 12.v)),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(right: 6.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 60.h),
                            child: Text("lbl_kevin_smith".tr,
                                style: CustomTextStyles.titleMediumOnError)),
                        SizedBox(height: 7.v),
                        Padding(
                            padding: EdgeInsets.only(left: 128.h),
                            child: Text("lbl_1_week_ago".tr,
                                style: CustomTextStyles.labelMediumGray700)),
                        SizedBox(height: 13.v),
                        SizedBox(
                            width: 336.h,
                            child: Text("msg_throughout_the_course".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelLargeGray700_1
                                    .copyWith(height: 1.50)))
                      ]))),
          Padding(
              padding: EdgeInsets.only(left: 60.h, top: 31.v),
              child: CustomRatingBar(
                  alignment: Alignment.topLeft, initialRating: 0))
        ]));
  }

  /// Section Widget
  Widget _buildLauraFlemoStack(BuildContext context) {
    return SizedBox(
        height: 130.v,
        width: 343.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgButtonMore,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 12.v)),
          Align(
              alignment: Alignment.centerLeft,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 60.h),
                        child: Text("lbl_laura_flemo".tr,
                            style: CustomTextStyles.titleMediumOnError)),
                    SizedBox(height: 7.v),
                    Padding(
                        padding: EdgeInsets.only(left: 128.h),
                        child: Text("lbl_2_weeks_ago".tr,
                            style: CustomTextStyles.labelMediumGray700)),
                    SizedBox(height: 13.v),
                    SizedBox(
                        width: 330.h,
                        child: Text("msg_really_appreciated".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.labelLargeGray700_1
                                .copyWith(height: 1.50)))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup9,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.topLeft),
          Padding(
              padding: EdgeInsets.only(left: 60.h, top: 31.v),
              child: CustomRatingBar(
                  alignment: Alignment.topLeft, initialRating: 0))
        ]));
  }

  /// Section Widget
  Widget _buildHelpfulStack1(BuildContext context) {
    return SizedBox(
        height: 36.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(180.h, 9.v, 31.h, 9.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconGreen400,
                            height: 18.adaptSize,
                            width: 18.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h, top: 2.v),
                            child: Text("lbl_1k".tr,
                                style: CustomTextStyles.labelLargeGray700_1)),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgIconRedA700,
                            height: 18.adaptSize,
                            width: 18.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h, top: 2.v),
                            child: Text("lbl_256".tr,
                                style: CustomTextStyles.labelLargeGray700_1))
                      ]))),
          _buildSixtyTwo(context, reviewText: "msg_was_this_review".tr)
        ]));
  }

  /// Section Widget
  Widget _buildCaityLauranceStack(BuildContext context) {
    return SizedBox(
        height: 112.v,
        width: 343.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgButtonMore,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 12.v)),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(right: 7.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 60.h),
                            child: Text("lbl_caity_laurance".tr,
                                style: CustomTextStyles.titleMediumOnError)),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 128.h),
                            child: Text("lbl_3_weeks_ago".tr,
                                style: CustomTextStyles.labelMediumGray700)),
                        SizedBox(height: 13.v),
                        SizedBox(
                            width: 335.h,
                            child: Text("msg_the_creator_has".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.labelLargeGray700_1
                                    .copyWith(height: 1.50)))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup10,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.topLeft),
          Padding(
              padding: EdgeInsets.only(left: 60.h, top: 31.v),
              child: CustomRatingBar(
                  alignment: Alignment.topLeft, initialRating: 0))
        ]));
  }

  /// Common widget
  Widget _buildHelpful(
    BuildContext context, {
    required String totalRating,
    required String userRating,
    required String wasThisReview,
  }) {
    return SizedBox(
        height: 36.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(180.h, 9.v, 38.h, 9.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconGreen400,
                            height: 18.adaptSize,
                            width: 18.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h, top: 2.v),
                            child: Text(totalRating,
                                style: CustomTextStyles.labelLargeGray700_1
                                    .copyWith(color: appTheme.gray700))),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgIconRedA700,
                            height: 18.adaptSize,
                            width: 18.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h, top: 2.v),
                            child: Text(userRating,
                                style: CustomTextStyles.labelLargeGray700_1
                                    .copyWith(color: appTheme.gray700)))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 36.v,
                  width: 343.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgShapeOnerror36x343,
                        height: 36.v,
                        width: 343.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 8.v),
                            child: Text(wasThisReview,
                                style: CustomTextStyles.labelLargeOnError
                                    .copyWith(
                                        color: theme.colorScheme.onError
                                            .withOpacity(1)))))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildSixtyTwo(
    BuildContext context, {
    required String reviewText,
  }) {
    return SizedBox(
        height: 36.v,
        width: 343.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgShapeOnerror36x343,
              height: 36.v,
              width: 343.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 8.v),
                  child: Text(reviewText,
                      style: CustomTextStyles.labelLargeOnError.copyWith(
                          color: theme.colorScheme.onError.withOpacity(1)))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
