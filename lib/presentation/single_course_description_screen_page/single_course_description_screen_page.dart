import 'models/single_course_description_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_drop_down.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/single_course_description_screen_provider.dart';

// ignore_for_file: must_be_immutable
class SingleCourseDescriptionScreenPage extends StatefulWidget {
  const SingleCourseDescriptionScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleCourseDescriptionScreenPageState createState() =>
      SingleCourseDescriptionScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleCourseDescriptionScreenProvider(),
      child: SingleCourseDescriptionScreenPage(),
    );
  }
}

class SingleCourseDescriptionScreenPageState
    extends State<SingleCourseDescriptionScreenPage>
    with AutomaticKeepAliveClientMixin<SingleCourseDescriptionScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_details".tr,
                        style: CustomTextStyles.titleLargeOnError,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 342.h,
                        margin: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Text(
                          "msg_in_this_class_you_ll".tr,
                          maxLines: 16,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumGray700.copyWith(
                            height: 1.43,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_what_you_ll_learn".tr,
                        style: CustomTextStyles.titleLargeOnError,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 332.h,
                        margin: EdgeInsets.only(
                          left: 22.h,
                          right: 20.h,
                        ),
                        child: Text(
                          "msg_everything_about".tr,
                          maxLines: 22,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumGray700.copyWith(
                            height: 1.43,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_who_this_course".tr,
                        style: CustomTextStyles.titleLargeOnError,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 327.h,
                        margin: EdgeInsets.only(
                          left: 22.h,
                          right: 25.h,
                        ),
                        child: Text(
                          "msg_beginner_and_advanced".tr,
                          maxLines: 9,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyMediumGray700.copyWith(
                            height: 1.43,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_requirements".tr,
                        style: CustomTextStyles.titleLargeOnError,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Container(
                      width: 317.h,
                      margin: EdgeInsets.only(
                        left: 22.h,
                        right: 35.h,
                      ),
                      child: Text(
                        "msg_no_requirements".tr,
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyMediumGray700.copyWith(
                          height: 1.43,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_share".tr,
                        style: CustomTextStyles.headlineSmallOnError_1,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Padding(
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
                    SizedBox(height: 32.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_students_also_bought".tr,
                        style: CustomTextStyles.headlineSmallOnError_1,
                      ),
                    ),
                    SizedBox(height: 16.v),
                    _buildHorizontalScroll1(context),
                    SizedBox(height: 13.v),
                    _buildHorizontalScroll2(context),
                    SizedBox(height: 32.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_faqs".tr,
                        style: CustomTextStyles.headlineSmallOnError_1,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Selector<SingleCourseDescriptionScreenProvider,
                          SingleCourseDescriptionScreenModel?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.singleCourseDescriptionScreenModelObj,
                        builder: (context,
                            singleCourseDescriptionScreenModelObj, child) {
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
                            alignment: Alignment.center,
                            items: singleCourseDescriptionScreenModelObj
                                    ?.dropdownItemList ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<SingleCourseDescriptionScreenProvider>()
                                  .onSelected(value);
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Selector<SingleCourseDescriptionScreenProvider,
                          SingleCourseDescriptionScreenModel?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.singleCourseDescriptionScreenModelObj,
                        builder: (context,
                            singleCourseDescriptionScreenModelObj, child) {
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
                            alignment: Alignment.center,
                            items: singleCourseDescriptionScreenModelObj
                                    ?.dropdownItemList1 ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<SingleCourseDescriptionScreenProvider>()
                                  .onSelected1(value);
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Selector<SingleCourseDescriptionScreenProvider,
                          SingleCourseDescriptionScreenModel?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.singleCourseDescriptionScreenModelObj,
                        builder: (context,
                            singleCourseDescriptionScreenModelObj, child) {
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
                            alignment: Alignment.center,
                            items: singleCourseDescriptionScreenModelObj
                                    ?.dropdownItemList2 ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<SingleCourseDescriptionScreenProvider>()
                                  .onSelected2(value);
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Selector<SingleCourseDescriptionScreenProvider,
                          SingleCourseDescriptionScreenModel?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.singleCourseDescriptionScreenModelObj,
                        builder: (context,
                            singleCourseDescriptionScreenModelObj, child) {
                          return CustomDropDown(
                            icon: Container(
                              margin: EdgeInsets.only(left: 30.h),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            ),
                            hintText: "msg_what_tools_or_materials".tr,
                            alignment: Alignment.center,
                            items: singleCourseDescriptionScreenModelObj
                                    ?.dropdownItemList3 ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<SingleCourseDescriptionScreenProvider>()
                                  .onSelected3(value);
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 32.v),
                    _buildBuyNow(context),
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
  Widget _buildHorizontalScroll1(BuildContext context) {
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
                              left: 16.h,
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
  Widget _buildHorizontalScroll2(BuildContext context) {
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
                        SizedBox(height: 6.v),
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
  Widget _buildBuyNow(BuildContext context) {
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
