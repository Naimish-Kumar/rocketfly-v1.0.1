import 'models/single_course_lesson_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_drop_down.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/single_course_lesson_screen_provider.dart';

// ignore_for_file: must_be_immutable
class SingleCourseLessonScreenPage extends StatefulWidget {
  const SingleCourseLessonScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleCourseLessonScreenPageState createState() =>
      SingleCourseLessonScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleCourseLessonScreenProvider(),
      child: SingleCourseLessonScreenPage(),
    );
  }
}

class SingleCourseLessonScreenPageState
    extends State<SingleCourseLessonScreenPage>
    with AutomaticKeepAliveClientMixin<SingleCourseLessonScreenPage> {
  @override
  bool get wantKeepAlive => true;
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
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 21.v),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildContent(
                        context,
                        introductionText: "lbl_course_content".tr,
                        timeText: "lbl_expand_sections".tr,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildContent(
                        context,
                        introductionText: "lbl_introduction".tr,
                        timeText: "lbl_5_min".tr,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildIntroduction(
                        context,
                        introductionText: "lbl_promotion".tr,
                        userIcon: ImageConstant.imgIconOnerror20x20,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildIntroduction(
                        context,
                        introductionText: "lbl_introduction".tr,
                        userIcon: ImageConstant.imgIconOnerror20x20,
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildIntroduction(
                        context,
                        introductionText: "lbl_course_material".tr,
                        userIcon: ImageConstant.imgIconGray70020x20,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildContent(
                        context,
                        introductionText: "lbl_how_grids_work".tr,
                        timeText: "lbl_21_min".tr,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildContent(
                        context,
                        introductionText: "lbl_grids_in_figma".tr,
                        timeText: "lbl_26_min".tr,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildContent(
                        context,
                        introductionText: "msg_css_grids_figma".tr,
                        timeText: "lbl_9_min".tr,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildContent(
                        context,
                        introductionText: "lbl_course_project".tr,
                        timeText: "lbl_3_min".tr,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildContent(
                        context,
                        introductionText: "lbl_bootstrap_grids".tr,
                        timeText: "lbl_18_min".tr,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildContent(
                        context,
                        introductionText: "lbl_css_grids".tr,
                        timeText: "lbl_15_min".tr,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: _buildContent(
                        context,
                        introductionText: "lbl_bonus_lecture".tr,
                        timeText: "lbl_2_min".tr,
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_share".tr,
                          style: CustomTextStyles.headlineSmallOnError_1,
                        ),
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Row(
                          children: [
                            CustomIconButton(
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              padding: EdgeInsets.all(12.h),
                              decoration: IconButtonStyleHelper.fillGrayTL24,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgFacebook,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                padding: EdgeInsets.all(12.h),
                                decoration: IconButtonStyleHelper
                                    .fillOnSecondaryContainer,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgWhatsapp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                padding: EdgeInsets.all(12.h),
                                decoration: IconButtonStyleHelper.fillGrayTL24,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgTwitter,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                padding: EdgeInsets.all(12.h),
                                decoration: IconButtonStyleHelper.fillGrayTL24,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgLinkedin,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 32.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "msg_students_also_bought".tr,
                          style: CustomTextStyles.headlineSmallOnError_1,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildDDesign(context),
                    SizedBox(height: 13.v),
                    _buildIcon(context),
                    SizedBox(height: 32.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_faqs".tr,
                          style: CustomTextStyles.headlineSmallOnError_1,
                        ),
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Selector<SingleCourseLessonScreenProvider,
                          SingleCourseLessonScreenModel?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.singleCourseLessonScreenModelObj,
                        builder:
                            (context, singleCourseLessonScreenModelObj, child) {
                          return CustomDropDown(
                            icon: Container(
                              margin: EdgeInsets.only(left: 30.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                            hintText: "msg_can_i_enroll_single".tr,
                            items: singleCourseLessonScreenModelObj
                                    ?.dropdownItemList ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<SingleCourseLessonScreenProvider>()
                                  .onSelected(value);
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Selector<SingleCourseLessonScreenProvider,
                          SingleCourseLessonScreenModel?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.singleCourseLessonScreenModelObj,
                        builder:
                            (context, singleCourseLessonScreenModelObj, child) {
                          return CustomDropDown(
                            icon: Container(
                              margin: EdgeInsets.only(left: 30.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                            hintText: "msg_what_is_the_refund".tr,
                            items: singleCourseLessonScreenModelObj
                                    ?.dropdownItemList1 ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<SingleCourseLessonScreenProvider>()
                                  .onSelected1(value);
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Selector<SingleCourseLessonScreenProvider,
                          SingleCourseLessonScreenModel?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.singleCourseLessonScreenModelObj,
                        builder:
                            (context, singleCourseLessonScreenModelObj, child) {
                          return CustomDropDown(
                            icon: Container(
                              margin: EdgeInsets.only(left: 30.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                            hintText: "msg_is_financial_aid".tr,
                            items: singleCourseLessonScreenModelObj
                                    ?.dropdownItemList2 ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<SingleCourseLessonScreenProvider>()
                                  .onSelected2(value);
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.v),
                    _buildWhattoolsormaterialsdoineed(context),
                    SizedBox(height: 32.v),
                    _buildBuyNowColumn(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildDDesign(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 240.h,
              padding: EdgeInsets.symmetric(horizontal: 174.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 199.v),
                    child: Text(
                      "lbl_7_11_years".tr,
                      style: CustomTextStyles.titleSmallOnError_1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 173.v,
                      bottom: 23.v,
                    ),
                    child: Text(
                      "msg_learning_blender".tr,
                      style: CustomTextStyles.titleMediumOnError,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup128x128,
                    height: 160.v,
                    width: 240.h,
                    margin: EdgeInsets.only(bottom: 57.v),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 122.v,
                      bottom: 65.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 5.v,
                    ),
                    decoration:
                        AppDecoration.gradientDeepPurpleAToDeepPurpleA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text(
                          "lbl_3d_design".tr,
                          style: CustomTextStyles.labelLargePrimary_1,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: CustomElevatedButton(
                      height: 30.v,
                      text: "lbl_3d_design".tr,
                      margin: EdgeInsets.only(
                        top: 122.v,
                        bottom: 65.v,
                      ),
                      buttonStyle: CustomButtonStyles.none,
                      decoration: CustomButtonStyles
                          .gradientDeepPurpleAToDeepPurpleADecoration,
                      buttonTextStyle: CustomTextStyles.labelLargePrimary_1,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconOnsecondarycontainer,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(top: 199.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 26.h,
                      top: 8.v,
                      bottom: 177.v,
                    ),
                    child: CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgBookmark,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 199.v,
                    ),
                    child: Text(
                      "lbl_5_0".tr,
                      style: CustomTextStyles.titleSmallGray700_2,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 160.v,
              width: 240.h,
              margin: EdgeInsets.only(left: 16.h),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 8.h,
                        bottom: 8.v,
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.h,
                        vertical: 5.v,
                      ),
                      decoration: AppDecoration.gradientDeepPurpleAToDeepPurpleA
                          .copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder4,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          Text(
                            "lbl_development".tr,
                            style: CustomTextStyles.labelLargePrimary_1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8.v,
                      right: 8.h,
                    ),
                    child: CustomIconButton(
                      height: 32.adaptSize,
                      width: 32.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      alignment: Alignment.topRight,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgBookmarkOnerror,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 160.v,
                      width: 240.h,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup4,
                            height: 160.v,
                            width: 240.h,
                            alignment: Alignment.center,
                          ),
                          CustomElevatedButton(
                            height: 30.v,
                            width: 88.h,
                            text: "lbl_development".tr,
                            margin: EdgeInsets.only(
                              left: 15.h,
                              bottom: 8.v,
                            ),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientDeepPurpleAToDeepPurpleADecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargePrimary_1,
                            alignment: Alignment.bottomLeft,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildIcon(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: 16.h),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 43.v,
              width: 240.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  _buildReview(
                    context,
                    userImage: ImageConstant.imgIconOnsecondarycontainer,
                    userLabel: "lbl_5_0".tr,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "msg_learning_blender".tr,
                          style: CustomTextStyles.titleMediumOnError,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "lbl_7_11_years".tr,
                          style: CustomTextStyles.titleSmallOnError_1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 43.v,
              width: 240.h,
              margin: EdgeInsets.only(left: 16.h),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _buildReview(
                    context,
                    userImage: ImageConstant.imgIconYellow900,
                    userLabel: "lbl_5_0".tr,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(right: 3.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_learning_python".tr,
                            style: CustomTextStyles.titleMediumOnError,
                          ),
                          SizedBox(height: 7.v),
                          Text(
                            "lbl_12_15_years".tr,
                            style: CustomTextStyles.titleSmallOnError_1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWhattoolsormaterialsdoineed(BuildContext context) {
    return SizedBox();
  }

  /// Section Widget
  Widget _buildBuyNowColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineOnError,
      child: CustomElevatedButton(
        text: "lbl_buy_now".tr,
        buttonStyle: CustomButtonStyles.fillDeepPurpleA,
        buttonTextStyle: theme.textTheme.titleLarge!,
      ),
    );
  }

  /// Common widget
  Widget _buildContent(
    BuildContext context, {
    required String introductionText,
    required String timeText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              introductionText,
              style:
                  CustomTextStyles.titleMediumLeagueSpartanOnError_1.copyWith(
                color: theme.colorScheme.onError.withOpacity(1),
              ),
            ),
          ),
          Text(
            timeText,
            style: CustomTextStyles.titleSmallGray700_2.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildIntroduction(
    BuildContext context, {
    required String introductionText,
    required String userIcon,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Text(
            introductionText,
            style: CustomTextStyles.bodyMediumOnError_1.copyWith(
              color: theme.colorScheme.onError.withOpacity(1),
            ),
          ),
        ),
        CustomImageView(
          imagePath: userIcon,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildReview(
    BuildContext context, {
    required String userImage,
    required String userLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: userImage,
          height: 18.adaptSize,
          width: 18.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            userLabel,
            style: CustomTextStyles.titleSmallGray700_2.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
      ],
    );
  }
}
