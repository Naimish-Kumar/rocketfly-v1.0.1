import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_rating_bar.dart';
import 'provider/reviews_screen_one_provider.dart';

class ReviewsScreenOneScreen extends StatefulWidget {
  const ReviewsScreenOneScreen({Key? key}) : super(key: key);

  @override
  ReviewsScreenOneScreenState createState() => ReviewsScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ReviewsScreenOneProvider(),
        child: ReviewsScreenOneScreen());
  }
}

class ReviewsScreenOneScreenState extends State<ReviewsScreenOneScreen> {
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
                          Opacity(opacity: 0.08, child: Divider()),
                          SizedBox(height: 24.v),
                          _buildAmiJacksonStack(context),
                          SizedBox(height: 5.v),
                          _buildHelpful(context,
                              userLabel: "lbl_369".tr,
                              userLabel2: "lbl_10".tr,
                              userMessage: "msg_was_this_review".tr),
                          SizedBox(height: 24.v),
                          _buildKevinSmithStack(context),
                          SizedBox(height: 5.v),
                          _buildHelpful(context,
                              userLabel: "lbl_463".tr,
                              userLabel2: "lbl_56".tr,
                              userMessage: "msg_was_this_review".tr),
                          SizedBox(height: 24.v),
                          _buildLauraFlemoStack(context),
                          SizedBox(height: 5.v),
                          _buildHelpfulStack1(context),
                          SizedBox(height: 24.v),
                          _buildCaityLauranceStack(context),
                          SizedBox(height: 5.v),
                          _buildHelpful(context,
                              userLabel: "lbl_344".tr,
                              userLabel2: "lbl_28".tr,
                              userMessage: "msg_was_this_review".tr)
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
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_review".tr,
                    margin: EdgeInsets.only(left: 118.h, bottom: 4.v))
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
  Widget _buildDesignRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 128.adaptSize,
          width: 128.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 34.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 60.v,
                  width: 81.h,
                  alignment: Alignment.center))),
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
                      buttonStyle: CustomButtonStyles.fillErrorContainer,
                      buttonTextStyle: theme.textTheme.labelMedium!),
                  CustomIconButton(
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                      padding: EdgeInsets.all(5.h),
                      decoration: IconButtonStyleHelper.fillErrorContainer,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgButtonBookmark))
                ])),
        SizedBox(height: 12.v),
        SizedBox(
            height: 64.v,
            width: 203.h,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgIconErrorcontainer16x16,
                            height: 16.adaptSize,
                            width: 16.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text("lbl_1h_30m".tr,
                                style: theme.textTheme.labelLarge))
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
                                    style: theme.textTheme.titleSmall!
                                        .copyWith(height: 1.29))),
                            SizedBox(height: 11.v),
                            Row(children: [
                              Text("lbl_149_00".tr,
                                  style: CustomTextStyles.labelLargePrimary_1),
                              Padding(
                                  padding: EdgeInsets.only(left: 4.h),
                                  child: Text("lbl_199_00".tr,
                                      style: CustomTextStyles
                                          .labelMediumErrorContainer
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.lineThrough)))
                            ])
                          ])))
            ])),
        SizedBox(height: 7.v),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIconYellow900,
              height: 16.adaptSize,
              width: 16.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_4".tr, style: theme.textTheme.labelLarge),
                    TextSpan(text: "lbl".tr, style: theme.textTheme.labelLarge),
                    TextSpan(
                        text: "lbl_3".tr, style: theme.textTheme.labelLarge),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_3_7k_ratings".tr,
                        style: theme.textTheme.labelLarge),
                    TextSpan(
                        text: "lbl_104_2k".tr,
                        style: theme.textTheme.labelLarge),
                    TextSpan(
                        text: "lbl_students".tr,
                        style: theme.textTheme.labelLarge)
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
        child: Stack(alignment: Alignment.topRight, children: [
          CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillBlueGrayTL24,
              alignment: Alignment.topLeft,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer)),
          CustomImageView(
              imagePath: ImageConstant.imgButtonMorePrimary,
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
                            style: CustomTextStyles
                                .titleMediumPrimarySemiBold_1))),
                SizedBox(height: 7.v),
                Text("lbl_20_minutes_ago".tr,
                    style: CustomTextStyles.labelMediumErrorContainer_1),
                SizedBox(height: 13.v),
                SizedBox(
                    width: 325.h,
                    child: Text("msg_the_course_is_very".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            theme.textTheme.labelLarge!.copyWith(height: 1.50)))
              ])),
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
          CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillBlueGrayTL24,
              alignment: Alignment.topLeft,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer)),
          CustomImageView(
              imagePath: ImageConstant.imgButtonMorePrimary,
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
                                style: CustomTextStyles
                                    .titleMediumPrimarySemiBold_1)),
                        SizedBox(height: 7.v),
                        Padding(
                            padding: EdgeInsets.only(left: 128.h),
                            child: Text("lbl_1_week_ago".tr,
                                style: CustomTextStyles
                                    .labelMediumErrorContainer_1)),
                        SizedBox(height: 13.v),
                        SizedBox(
                            width: 336.h,
                            child: Text("msg_throughout_the_course".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.labelLarge!
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
        child: Stack(alignment: Alignment.topRight, children: [
          CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillBlueGrayTL24,
              alignment: Alignment.topLeft,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer)),
          CustomImageView(
              imagePath: ImageConstant.imgButtonMorePrimary,
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
                            style:
                                CustomTextStyles.titleMediumPrimarySemiBold_1)),
                    SizedBox(height: 7.v),
                    Padding(
                        padding: EdgeInsets.only(left: 128.h),
                        child: Text("lbl_2_weeks_ago".tr,
                            style:
                                CustomTextStyles.labelMediumErrorContainer_1)),
                    SizedBox(height: 13.v),
                    SizedBox(
                        width: 330.h,
                        child: Text("msg_really_appreciated".tr,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.labelLarge!
                                .copyWith(height: 1.50)))
                  ])),
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
                                style: theme.textTheme.labelLarge)),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgIconRedA700,
                            height: 18.adaptSize,
                            width: 18.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h, top: 2.v),
                            child: Text("lbl_256".tr,
                                style: theme.textTheme.labelLarge))
                      ]))),
          _buildShape(context, reviewText: "msg_was_this_review".tr)
        ]));
  }

  /// Section Widget
  Widget _buildCaityLauranceStack(BuildContext context) {
    return SizedBox(
        height: 112.v,
        width: 343.h,
        child: Stack(alignment: Alignment.topRight, children: [
          CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.fillBlueGrayTL24,
              alignment: Alignment.topLeft,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer)),
          CustomImageView(
              imagePath: ImageConstant.imgButtonMorePrimary,
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
                                style: CustomTextStyles
                                    .titleMediumPrimarySemiBold_1)),
                        SizedBox(height: 5.v),
                        Padding(
                            padding: EdgeInsets.only(left: 128.h),
                            child: Text("lbl_3_weeks_ago".tr,
                                style: CustomTextStyles
                                    .labelMediumErrorContainer_1)),
                        SizedBox(height: 13.v),
                        SizedBox(
                            width: 335.h,
                            child: Text("msg_the_creator_has".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.labelLarge!
                                    .copyWith(height: 1.50)))
                      ]))),
          Padding(
              padding: EdgeInsets.only(left: 60.h, top: 31.v),
              child: CustomRatingBar(
                  alignment: Alignment.topLeft, initialRating: 0))
        ]));
  }

  /// Common widget
  Widget _buildHelpful(
    BuildContext context, {
    required String userLabel,
    required String userLabel2,
    required String userMessage,
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
                            child: Text(userLabel,
                                style: theme.textTheme.labelLarge!.copyWith(
                                    color: theme.colorScheme.errorContainer))),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgIconRedA700,
                            height: 18.adaptSize,
                            width: 18.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(left: 4.h, top: 2.v),
                            child: Text(userLabel2,
                                style: theme.textTheme.labelLarge!.copyWith(
                                    color: theme.colorScheme.errorContainer)))
                      ]))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 36.v,
                  width: 343.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgShapePrimary36x343,
                        height: 36.v,
                        width: 343.h,
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(bottom: 8.v),
                            child: Text(userMessage,
                                style: CustomTextStyles.labelLargePrimary_1
                                    .copyWith(
                                        color: theme.colorScheme.primary))))
                  ])))
        ]));
  }

  /// Common widget
  Widget _buildShape(
    BuildContext context, {
    required String reviewText,
  }) {
    return SizedBox(
        height: 36.v,
        width: 343.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgShapePrimary36x343,
              height: 36.v,
              width: 343.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 8.v),
                  child: Text(reviewText,
                      style: CustomTextStyles.labelLargePrimary_1
                          .copyWith(color: theme.colorScheme.primary))))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
