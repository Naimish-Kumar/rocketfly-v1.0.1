import 'models/single_course_review_screen_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_drop_down.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_rating_bar.dart';
import 'provider/single_course_review_screen_provider.dart';

// ignore_for_file: must_be_immutable
class SingleCourseReviewScreenPage extends StatefulWidget {
  const SingleCourseReviewScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleCourseReviewScreenPageState createState() =>
      SingleCourseReviewScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleCourseReviewScreenProvider(),
      child: SingleCourseReviewScreenPage(),
    );
  }
}

class SingleCourseReviewScreenPageState
    extends State<SingleCourseReviewScreenPage>
    with AutomaticKeepAliveClientMixin<SingleCourseReviewScreenPage> {
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
                SizedBox(height: 15.v),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 331.h,
                      margin: EdgeInsets.only(
                        left: 16.h,
                        right: 28.h,
                      ),
                      child: Text(
                        "msg_responsive_design".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.headlineSmallOnErrorSemiBold
                            .copyWith(
                          height: 1.25,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.v),
                    _buildResponsiveDesignRow(context),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        right: 109.h,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcon18x18,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_1h_30m".tr,
                              style: CustomTextStyles.titleSmallGray700_2,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgIcon3,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "lbl_english".tr,
                              style: CustomTextStyles.titleSmallGray700_2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "msg_this_course_includes".tr,
                        style: CustomTextStyles.headlineSmallOnError_1,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcon4,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "msg_1_5_hours_on_demand".tr,
                              style: CustomTextStyles.titleSmallGray700_2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcon5,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "msg_full_lifetime_access".tr,
                              style: CustomTextStyles.titleSmallGray700_2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcon6,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "msg_access_on_mobile".tr,
                              style: CustomTextStyles.titleSmallGray700_2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgIcon7,
                            height: 18.adaptSize,
                            width: 18.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Text(
                              "msg_certificate_of_completion".tr,
                              style: CustomTextStyles.titleSmallGray700_2,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Text(
                        "lbl_mentor".tr,
                        style: CustomTextStyles.headlineSmallOnError_1,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgMaskGroup96x96,
                            height: 96.adaptSize,
                            width: 96.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 15.h,
                              top: 26.v,
                              bottom: 17.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_athena_joy".tr,
                                  style: CustomTextStyles
                                      .titleMediumOnErrorSemiBold,
                                ),
                                SizedBox(height: 13.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgIconOnsecondarycontainer,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_4_3".tr,
                                              style: CustomTextStyles
                                                  .labelLargeGray700,
                                            ),
                                            TextSpan(
                                              text: "lbl_3_7k_ratings2".tr,
                                              style: CustomTextStyles
                                                  .labelLargeGray700,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 92.v),
                    _buildOverallReviewsRow(context),
                    SizedBox(height: 15.v),
                    _buildAverageReviewRow(context),
                    SizedBox(height: 23.v),
                    _buildAmiJacksonStack(context),
                    SizedBox(height: 6.v),
                    _buildHelpful(
                      context,
                      fourHundredSixtyThree: "lbl_369".tr,
                      fiftySix: "lbl_10".tr,
                      wasThisReview: "msg_was_this_review".tr,
                    ),
                    SizedBox(height: 16.v),
                    _buildKevinSmithStack(context),
                    SizedBox(height: 6.v),
                    _buildHelpful(
                      context,
                      fourHundredSixtyThree: "lbl_463".tr,
                      fiftySix: "lbl_56".tr,
                      wasThisReview: "msg_was_this_review".tr,
                    ),
                    SizedBox(height: 16.v),
                    _buildLauraFlemoStack(context),
                    SizedBox(height: 6.v),
                    _buildHelpful3(context),
                    SizedBox(height: 15.v),
                    _buildCaityLauranceStack(context),
                    SizedBox(height: 6.v),
                    _buildHelpful(
                      context,
                      fourHundredSixtyThree: "lbl_344".tr,
                      fiftySix: "lbl_28".tr,
                      wasThisReview: "msg_was_this_review".tr,
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
                    _buildThreeDDesignRow(context),
                    SizedBox(height: 13.v),
                    _buildIconRow(context),
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
                      child: Selector<SingleCourseReviewScreenProvider,
                          SingleCourseReviewScreenModel?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.singleCourseReviewScreenModelObj,
                        builder:
                            (context, singleCourseReviewScreenModelObj, child) {
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
                            items: singleCourseReviewScreenModelObj
                                    ?.dropdownItemList ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<SingleCourseReviewScreenProvider>()
                                  .onSelected(value);
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Selector<SingleCourseReviewScreenProvider,
                          SingleCourseReviewScreenModel?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.singleCourseReviewScreenModelObj,
                        builder:
                            (context, singleCourseReviewScreenModelObj, child) {
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
                            items: singleCourseReviewScreenModelObj
                                    ?.dropdownItemList1 ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<SingleCourseReviewScreenProvider>()
                                  .onSelected1(value);
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Selector<SingleCourseReviewScreenProvider,
                          SingleCourseReviewScreenModel?>(
                        selector: (
                          context,
                          provider,
                        ) =>
                            provider.singleCourseReviewScreenModelObj,
                        builder:
                            (context, singleCourseReviewScreenModelObj, child) {
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
                            items: singleCourseReviewScreenModelObj
                                    ?.dropdownItemList2 ??
                                [],
                            onChanged: (value) {
                              context
                                  .read<SingleCourseReviewScreenProvider>()
                                  .onSelected2(value);
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 12.v),
                    _buildWhatToolsOrMaterialsDoINeedExpandableList(context),
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
  Widget _buildResponsiveDesignRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 50.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgIconOnerror18x18,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: Text(
              "lbl_104_2k_students".tr,
              style: CustomTextStyles.titleSmallGray700_2,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgIconOnsecondarycontainer,
            height: 18.adaptSize,
            width: 18.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.h),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_4_3".tr,
                    style: CustomTextStyles.titleSmallGray700_1,
                  ),
                  TextSpan(
                    text: "lbl_3_7k_ratings2".tr,
                    style: CustomTextStyles.titleSmallGray700_1,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOverallReviewsRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "lbl_overall_reviews".tr,
              style: CustomTextStyles.titleLargeOnError,
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text(
                "lbl_see_all".tr,
                style: CustomTextStyles.titleSmallGray700,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 18.adaptSize,
              width: 18.adaptSize,
              margin: EdgeInsets.only(top: 2.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAverageReviewRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 1.v),
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.outlineOnError1.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "lbl_4_32".tr,
                    style: CustomTextStyles.headlineLargeOnError_1,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "lbl_out_of_5".tr,
                    style: CustomTextStyles.titleSmallGray700_2,
                  ),
                  SizedBox(height: 2.v),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgReview,
                        height: 10.v,
                        width: 50.h,
                        margin: EdgeInsets.symmetric(vertical: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.v),
                        child: Container(
                          height: 4.v,
                          width: 163.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray700.withOpacity(0.38),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.64,
                              backgroundColor:
                                  appTheme.gray700.withOpacity(0.38),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.onError.withOpacity(1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "lbl_32".tr,
                        style: CustomTextStyles.labelMediumOnError,
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgReviewOnsecondarycontainer,
                          height: 10.v,
                          width: 40.h,
                          margin: EdgeInsets.symmetric(vertical: 1.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 4.v,
                            bottom: 4.v,
                          ),
                          child: Container(
                            height: 4.v,
                            width: 163.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray700.withOpacity(0.38),
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                              child: LinearProgressIndicator(
                                value: 0.89,
                                backgroundColor:
                                    appTheme.gray700.withOpacity(0.38),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  theme.colorScheme.onError.withOpacity(1),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "lbl_62".tr,
                            style: CustomTextStyles.labelMediumOnError,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        child: CustomRatingBar(
                          initialRating: 0,
                          itemSize: 10,
                          itemCount: 3,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 4.v,
                          bottom: 4.v,
                        ),
                        child: Container(
                          height: 4.v,
                          width: 163.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray700.withOpacity(0.38),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.37,
                              backgroundColor:
                                  appTheme.gray700.withOpacity(0.38),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.onError.withOpacity(1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text(
                          "lbl_33".tr,
                          style: CustomTextStyles.labelMediumOnError,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgReviewOnsecondarycontainer10x20,
                        height: 10.v,
                        width: 20.h,
                        margin: EdgeInsets.symmetric(vertical: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 4.v,
                          bottom: 4.v,
                        ),
                        child: Container(
                          height: 4.v,
                          width: 163.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray700.withOpacity(0.38),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.18,
                              backgroundColor:
                                  appTheme.gray700.withOpacity(0.38),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.onError.withOpacity(1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text(
                          "lbl_2".tr,
                          style: CustomTextStyles.labelMediumOnError,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconOnsecondarycontainer,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          top: 4.v,
                          bottom: 4.v,
                        ),
                        child: Container(
                          height: 4.v,
                          width: 163.h,
                          decoration: BoxDecoration(
                            color: appTheme.gray700.withOpacity(0.38),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                            child: LinearProgressIndicator(
                              value: 0.06,
                              backgroundColor:
                                  appTheme.gray700.withOpacity(0.38),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.onError.withOpacity(1),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 14.h),
                        child: Text(
                          "lbl_1".tr,
                          style: CustomTextStyles.labelMediumOnError,
                        ),
                      ),
                    ],
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
  Widget _buildAmiJacksonStack(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 94.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgButtonMore,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 12.v),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 59.h),
                      child: Text(
                        "lbl_ami_jackson".tr,
                        style: CustomTextStyles.titleMediumOnError,
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "lbl_20_minutes_ago".tr,
                    style: CustomTextStyles.labelMediumGray700,
                  ),
                  SizedBox(height: 13.v),
                  SizedBox(
                    width: 325.h,
                    child: Text(
                      "msg_the_course_is_very".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeGray700_1.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgMaskGroup48x48,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.topLeft,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.h,
                top: 31.v,
              ),
              child: CustomRatingBar(
                alignment: Alignment.topLeft,
                initialRating: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildKevinSmithStack(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 94.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgButtonMore,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 12.v),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(right: 7.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 60.h),
                      child: Text(
                        "lbl_kevin_smith".tr,
                        style: CustomTextStyles.titleMediumOnError,
                      ),
                    ),
                    SizedBox(height: 7.v),
                    Padding(
                      padding: EdgeInsets.only(left: 128.h),
                      child: Text(
                        "lbl_1_week_ago".tr,
                        style: CustomTextStyles.labelMediumGray700,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    SizedBox(
                      width: 336.h,
                      child: Text(
                        "msg_throughout_the_course".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeGray700_1.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgMaskGroup8,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.topLeft,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.h,
                top: 31.v,
              ),
              child: CustomRatingBar(
                alignment: Alignment.topLeft,
                initialRating: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLauraFlemoStack(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 130.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgButtonMore,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 12.v),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 60.h),
                    child: Text(
                      "lbl_laura_flemo".tr,
                      style: CustomTextStyles.titleMediumOnError,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(left: 128.h),
                    child: Text(
                      "lbl_2_weeks_ago".tr,
                      style: CustomTextStyles.labelMediumGray700,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  SizedBox(
                    width: 330.h,
                    child: Text(
                      "msg_really_appreciated".tr,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.labelLargeGray700_1.copyWith(
                        height: 1.50,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgMaskGroup9,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.topLeft,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.h,
                top: 31.v,
              ),
              child: CustomRatingBar(
                alignment: Alignment.topLeft,
                initialRating: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHelpful3(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 36.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
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
                      width: 18.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "lbl_1k".tr,
                        style: CustomTextStyles.labelLargeGray700_1,
                      ),
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgIconRedA700,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 4.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "lbl_256".tr,
                        style: CustomTextStyles.labelLargeGray700_1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _buildThirtySeven(
              context,
              reviewText: "msg_was_this_review".tr,
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCaityLauranceStack(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 112.v,
        width: 343.h,
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgMaskGroup10,
              height: 48.adaptSize,
              width: 48.adaptSize,
              alignment: Alignment.topLeft,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgButtonMore,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 12.v),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(right: 8.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 60.h),
                      child: Text(
                        "lbl_caity_laurance".tr,
                        style: CustomTextStyles.titleMediumOnError,
                      ),
                    ),
                    SizedBox(height: 5.v),
                    Padding(
                      padding: EdgeInsets.only(left: 128.h),
                      child: Text(
                        "lbl_3_weeks_ago".tr,
                        style: CustomTextStyles.labelMediumGray700,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    SizedBox(
                      width: 335.h,
                      child: Text(
                        "msg_the_creator_has".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelLargeGray700_1.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 60.h,
                top: 31.v,
              ),
              child: CustomRatingBar(
                alignment: Alignment.topLeft,
                initialRating: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThreeDDesignRow(BuildContext context) {
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
                              left: 12.h,
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
  Widget _buildIconRow(BuildContext context) {
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
  Widget _buildWhatToolsOrMaterialsDoINeedExpandableList(BuildContext context) {
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
  Widget _buildHelpful(
    BuildContext context, {
    required String fourHundredSixtyThree,
    required String fiftySix,
    required String wasThisReview,
  }) {
    return SizedBox(
      height: 36.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
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
                    width: 18.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 2.v,
                    ),
                    child: Text(
                      fourHundredSixtyThree,
                      style: CustomTextStyles.labelLargeGray700_1.copyWith(
                        color: appTheme.gray700,
                      ),
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgIconRedA700,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 4.h,
                      top: 2.v,
                    ),
                    child: Text(
                      fiftySix,
                      style: CustomTextStyles.labelLargeGray700_1.copyWith(
                        color: appTheme.gray700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 36.v,
              width: 343.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgShapeOnerror36x343,
                    height: 36.v,
                    width: 343.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.v),
                      child: Text(
                        wasThisReview,
                        style: CustomTextStyles.labelLargeOnError.copyWith(
                          color: theme.colorScheme.onError.withOpacity(1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildThirtySeven(
    BuildContext context, {
    required String reviewText,
  }) {
    return SizedBox(
      height: 36.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgShapeOnerror36x343,
            height: 36.v,
            width: 343.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 8.v),
              child: Text(
                reviewText,
                style: CustomTextStyles.labelLargeOnError.copyWith(
                  color: theme.colorScheme.onError.withOpacity(1),
                ),
              ),
            ),
          ),
        ],
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
