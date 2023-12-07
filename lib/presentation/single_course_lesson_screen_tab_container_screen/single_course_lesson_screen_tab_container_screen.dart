import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/presentation/single_course_description_screen_one_page/single_course_description_screen_one_page.dart';
import 'package:rocketfly/presentation/single_course_lesson_screen_one_page/single_course_lesson_screen_one_page.dart';
import 'package:rocketfly/presentation/single_course_review_screen_one_page/single_course_review_screen_one_page.dart';
import 'package:rocketfly/widgets/app_bar/appbar_leading_image.dart';
import 'package:rocketfly/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/single_course_lesson_screen_tab_container_provider.dart';

class SingleCourseLessonScreenTabContainerScreen extends StatefulWidget {
  const SingleCourseLessonScreenTabContainerScreen({Key? key})
      : super(key: key);

  @override
  SingleCourseLessonScreenTabContainerScreenState createState() =>
      SingleCourseLessonScreenTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SingleCourseLessonScreenTabContainerProvider(),
        child: SingleCourseLessonScreenTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class SingleCourseLessonScreenTabContainerScreenState
    extends State<SingleCourseLessonScreenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      _buildImagePlaceholder(context),
                      SizedBox(height: 16.v),
                      _buildDesign(context),
                      SizedBox(height: 15.v),
                      Container(
                          width: 331.h,
                          margin: EdgeInsets.only(left: 16.h, right: 28.h),
                          child: Text("msg_responsive_design".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles
                                  .headlineSmallOnErrorSemiBold
                                  .copyWith(height: 1.25))),
                      SizedBox(height: 12.v),
                      _buildIcon(context),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h, right: 109.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIcon18x18,
                                height: 18.adaptSize,
                                width: 18.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("lbl_1h_30m".tr,
                                    style:
                                        CustomTextStyles.titleSmallGray700_2)),
                            Spacer(),
                            CustomImageView(
                                imagePath: ImageConstant.imgIcon3,
                                height: 18.adaptSize,
                                width: 18.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("lbl_english".tr,
                                    style:
                                        CustomTextStyles.titleSmallGray700_2))
                          ])),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("msg_this_course_includes".tr,
                              style: CustomTextStyles.headlineSmallOnError_1)),
                      SizedBox(height: 18.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIcon4,
                                height: 18.adaptSize,
                                width: 18.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("msg_1_5_hours_on_demand".tr,
                                    style:
                                        CustomTextStyles.titleSmallGray700_2))
                          ])),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIcon5,
                                height: 18.adaptSize,
                                width: 18.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("msg_full_lifetime_access".tr,
                                    style:
                                        CustomTextStyles.titleSmallGray700_2))
                          ])),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIcon6,
                                height: 18.adaptSize,
                                width: 18.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("msg_access_on_mobile".tr,
                                    style:
                                        CustomTextStyles.titleSmallGray700_2))
                          ])),
                      SizedBox(height: 12.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgIcon7,
                                height: 18.adaptSize,
                                width: 18.adaptSize),
                            Padding(
                                padding: EdgeInsets.only(left: 8.h),
                                child: Text("msg_certificate_of_completion".tr,
                                    style:
                                        CustomTextStyles.titleSmallGray700_2))
                          ])),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Row(children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_mentor".tr,
                                      style: CustomTextStyles
                                          .headlineSmallOnError_1),
                                  SizedBox(height: 18.v),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgMaskGroup96x96,
                                      height: 96.adaptSize,
                                      width: 96.adaptSize)
                                ]),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 15.h, top: 68.v, bottom: 16.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_athena_joy".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnErrorSemiBold),
                                      SizedBox(height: 13.v),
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgIconOnsecondarycontainer,
                                            height: 16.adaptSize,
                                            width: 16.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(left: 4.h),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl_4_3".tr,
                                                      style: CustomTextStyles
                                                          .labelLargeGray700),
                                                  TextSpan(
                                                      text: "lbl_3_7k_ratings2"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .labelLargeGray700)
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])
                                    ]))
                          ])),
                      SizedBox(height: 32.v),
                      _buildTabview(context),
                      SizedBox(
                          height: 1409.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                SingleCourseDescriptionScreenOnePage.builder(
                                    context),
                                SingleCourseLessonScreenOnePage.builder(
                                    context),
                                SingleCourseReviewScreenOnePage.builder(context)
                              ]))
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 44.v,
        leadingWidth: 41.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 17.h, top: 10.v, bottom: 10.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgButtonBookmark,
              margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v))
        ]);
  }

  /// Section Widget
  Widget _buildImagePlaceholder(BuildContext context) {
    return SizedBox(
        height: 255.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.h, vertical: 85.v),
                  decoration: AppDecoration.fillBlueGray,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 45.v),
                    Opacity(
                        opacity: 0.3,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgPlaceHolderGray700,
                            height: 40.v,
                            width: 314.h))
                  ]))),
          Align(
              alignment: Alignment.center,
              child: SizedBox(
                  height: 255.v,
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup3,
                        height: 255.v,
                        width: 375.h,
                        alignment: Alignment.center),
                    Padding(
                        padding: EdgeInsets.only(top: 88.v),
                        child: CustomIconButton(
                            height: 48.adaptSize,
                            width: 48.adaptSize,
                            padding: EdgeInsets.all(12.h),
                            decoration:
                                IconButtonStyleHelper.gradientPrimaryToPrimary,
                            alignment: Alignment.topCenter,
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowRightPrimary)))
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildDesign(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomElevatedButton(
                      height: 33.v,
                      width: 59.h,
                      text: "lbl_design".tr,
                      buttonStyle: CustomButtonStyles.fillGray,
                      buttonTextStyle: CustomTextStyles.titleSmallOnError_1),
                  Padding(
                      padding: EdgeInsets.only(top: 2.v, bottom: 7.v),
                      child: Text("lbl_12_15_years".tr,
                          style: CustomTextStyles
                              .headlineSmallOnSecondaryContainer))
                ])));
  }

  /// Section Widget
  Widget _buildIcon(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 50.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgIconOnerror18x18,
              height: 18.adaptSize,
              width: 18.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: Text("lbl_104_2k_students".tr,
                  style: CustomTextStyles.titleSmallGray700_2)),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgIconOnsecondarycontainer,
              height: 18.adaptSize,
              width: 18.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_4_3".tr,
                        style: CustomTextStyles.titleSmallGray700_1),
                    TextSpan(
                        text: "lbl_3_7k_ratings2".tr,
                        style: CustomTextStyles.titleSmallGray700_1)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 39.v,
        width: 343.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onSecondaryContainer,
            unselectedLabelColor: appTheme.gray700,
            tabs: [
              Tab(child: Text("lbl_description".tr)),
              Tab(child: Text("lbl_lessons".tr)),
              Tab(child: Text("lbl_reviews".tr))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
