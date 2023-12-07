import 'models/single_course_review_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_drop_down.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_rating_bar.dart';
import 'provider/single_course_review_screen_one_provider.dart';

// ignore_for_file: must_be_immutable
class SingleCourseReviewScreenOnePage extends StatefulWidget {
  const SingleCourseReviewScreenOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleCourseReviewScreenOnePageState createState() =>
      SingleCourseReviewScreenOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleCourseReviewScreenOneProvider(),
      child: SingleCourseReviewScreenOnePage(),
    );
  }
}

class SingleCourseReviewScreenOnePageState
    extends State<SingleCourseReviewScreenOnePage>
    with AutomaticKeepAliveClientMixin<SingleCourseReviewScreenOnePage> {
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
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 588.v),
              child: Column(
                children: [
                  SizedBox(height: 21.v),
                  Column(
                    children: [
                      _buildOverallReviews(context),
                      SizedBox(height: 15.v),
                      _buildAverageReview(context),
                      SizedBox(height: 23.v),
                      _buildAmiJackson(context),
                      SizedBox(height: 6.v),
                      _buildHelpful(
                        context,
                        userLabelFourHundredSixtyThree: "lbl_369".tr,
                        userLabelFiftySix: "lbl_10".tr,
                        userLabelWasThisReview: "msg_was_this_review".tr,
                      ),
                      SizedBox(height: 16.v),
                      _buildKevinSmith(context),
                      SizedBox(height: 6.v),
                      _buildHelpful(
                        context,
                        userLabelFourHundredSixtyThree: "lbl_463".tr,
                        userLabelFiftySix: "lbl_56".tr,
                        userLabelWasThisReview: "msg_was_this_review".tr,
                      ),
                      SizedBox(height: 16.v),
                      _buildLauraFlemo(context),
                      SizedBox(height: 6.v),
                      _buildHelpfulIcon2(context),
                      SizedBox(height: 15.v),
                      _buildCaityLaurance(context),
                      SizedBox(height: 6.v),
                      _buildHelpful(
                        context,
                        userLabelFourHundredSixtyThree: "lbl_344".tr,
                        userLabelFiftySix: "lbl_28".tr,
                        userLabelWasThisReview: "msg_was_this_review".tr,
                      ),
                      SizedBox(height: 30.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "lbl_share".tr,
                            style: theme.textTheme.headlineSmall,
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
                                decoration: IconButtonStyleHelper
                                    .fillErrorContainerTL24,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFacebookPrimary,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: CustomIconButton(
                                  height: 48.adaptSize,
                                  width: 48.adaptSize,
                                  padding: EdgeInsets.all(12.h),
                                  decoration:
                                      IconButtonStyleHelper.fillPrimaryTL24,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgWhatsappPrimary,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: CustomIconButton(
                                  height: 48.adaptSize,
                                  width: 48.adaptSize,
                                  padding: EdgeInsets.all(12.h),
                                  decoration: IconButtonStyleHelper
                                      .fillErrorContainerTL24,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgTwitterPrimary,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: CustomIconButton(
                                  height: 48.adaptSize,
                                  width: 48.adaptSize,
                                  padding: EdgeInsets.all(12.h),
                                  decoration: IconButtonStyleHelper
                                      .fillErrorContainerTL24,
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgLinkedinPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 32.v),
                      _buildStudentsAlsoBought(context),
                      SizedBox(height: 31.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "lbl_faqs".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<SingleCourseReviewScreenOneProvider,
                            SingleCourseReviewScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseReviewScreenOneModelObj,
                          builder: (context,
                              singleCourseReviewScreenOneModelObj, child) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 30.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeftPrimary,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ),
                              hintText: "msg_can_i_enroll_single".tr,
                              items: singleCourseReviewScreenOneModelObj
                                      ?.dropdownItemList ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<SingleCourseReviewScreenOneProvider>()
                                    .onSelected(value);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<SingleCourseReviewScreenOneProvider,
                            SingleCourseReviewScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseReviewScreenOneModelObj,
                          builder: (context,
                              singleCourseReviewScreenOneModelObj, child) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 30.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeftPrimary,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ),
                              hintText: "msg_what_is_the_refund".tr,
                              items: singleCourseReviewScreenOneModelObj
                                      ?.dropdownItemList1 ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<SingleCourseReviewScreenOneProvider>()
                                    .onSelected1(value);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<SingleCourseReviewScreenOneProvider,
                            SingleCourseReviewScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseReviewScreenOneModelObj,
                          builder: (context,
                              singleCourseReviewScreenOneModelObj, child) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 30.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeftPrimary,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ),
                              hintText: "msg_is_financial_aid".tr,
                              items: singleCourseReviewScreenOneModelObj
                                      ?.dropdownItemList2 ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<SingleCourseReviewScreenOneProvider>()
                                    .onSelected2(value);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<SingleCourseReviewScreenOneProvider,
                            SingleCourseReviewScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseReviewScreenOneModelObj,
                          builder: (context,
                              singleCourseReviewScreenOneModelObj, child) {
                            return CustomDropDown(
                              icon: Container(
                                margin: EdgeInsets.only(left: 30.h),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeftPrimary,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                ),
                              ),
                              hintText: "msg_what_tools_or_materials".tr,
                              items: singleCourseReviewScreenOneModelObj
                                      ?.dropdownItemList3 ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<SingleCourseReviewScreenOneProvider>()
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
      ),
    );
  }

  /// Section Widget
  Widget _buildOverallReviews(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_overall_reviews".tr,
            style: theme.textTheme.titleLarge,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Text(
              "lbl_see_all".tr,
              style: CustomTextStyles.titleSmallErrorContainerSemiBold,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowDown,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(top: 2.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAverageReview(BuildContext context) {
    return Padding(
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
            decoration: AppDecoration.outlinePrimary2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_4_32".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 8.v),
                Text(
                  "lbl_out_of_5".tr,
                  style: CustomTextStyles.titleSmallErrorContainer_1,
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
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      child: CustomRatingBar(
                        initialRating: 0,
                        itemSize: 10,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.v),
                      child: Container(
                        height: 4.v,
                        width: 163.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.errorContainer
                              .withOpacity(0.38),
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
                            backgroundColor: theme.colorScheme.errorContainer
                                .withOpacity(0.38),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "lbl_32".tr,
                      style: theme.textTheme.labelMedium,
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
                        imagePath: ImageConstant.imgReviewYellow900,
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
                            color: theme.colorScheme.errorContainer
                                .withOpacity(0.38),
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
                              backgroundColor: theme.colorScheme.errorContainer
                                  .withOpacity(0.38),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                theme.colorScheme.primary,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h),
                        child: Text(
                          "lbl_62".tr,
                          style: theme.textTheme.labelMedium,
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
                    CustomImageView(
                      imagePath: ImageConstant.imgReviewYellow90010x30,
                      height: 10.v,
                      width: 30.h,
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
                          color: theme.colorScheme.errorContainer
                              .withOpacity(0.38),
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
                            backgroundColor: theme.colorScheme.errorContainer
                                .withOpacity(0.38),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "lbl_33".tr,
                        style: theme.textTheme.labelMedium,
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
                      imagePath: ImageConstant.imgReviewYellow90010x20,
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
                          color: theme.colorScheme.errorContainer
                              .withOpacity(0.38),
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
                            backgroundColor: theme.colorScheme.errorContainer
                                .withOpacity(0.38),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "lbl_2".tr,
                        style: theme.textTheme.labelMedium,
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
                      imagePath: ImageConstant.imgIconYellow900,
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
                          color: theme.colorScheme.errorContainer
                              .withOpacity(0.38),
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
                            backgroundColor: theme.colorScheme.errorContainer
                                .withOpacity(0.38),
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.primary,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 14.h),
                      child: Text(
                        "lbl_1".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAmiJackson(BuildContext context) {
    return SizedBox(
      height: 94.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillBlueGrayTL24,
            alignment: Alignment.topLeft,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgButtonMorePrimary,
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
                      style: CustomTextStyles.titleMediumPrimarySemiBold_1,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_20_minutes_ago".tr,
                  style: CustomTextStyles.labelMediumErrorContainer_1,
                ),
                SizedBox(height: 13.v),
                SizedBox(
                  width: 325.h,
                  child: Text(
                    "msg_the_course_is_very".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
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
    );
  }

  /// Section Widget
  Widget _buildKevinSmith(BuildContext context) {
    return SizedBox(
      height: 94.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillBlueGrayTL24,
            alignment: Alignment.topLeft,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgButtonMorePrimary,
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
                      style: CustomTextStyles.titleMediumPrimarySemiBold_1,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(left: 128.h),
                    child: Text(
                      "lbl_1_week_ago".tr,
                      style: CustomTextStyles.labelMediumErrorContainer_1,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  SizedBox(
                    width: 336.h,
                    child: Text(
                      "msg_throughout_the_course".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge!.copyWith(
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
    );
  }

  /// Section Widget
  Widget _buildLauraFlemo(BuildContext context) {
    return SizedBox(
      height: 130.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillBlueGrayTL24,
            alignment: Alignment.topLeft,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgButtonMorePrimary,
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
                    style: CustomTextStyles.titleMediumPrimarySemiBold_1,
                  ),
                ),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.only(left: 128.h),
                  child: Text(
                    "lbl_2_weeks_ago".tr,
                    style: CustomTextStyles.labelMediumErrorContainer_1,
                  ),
                ),
                SizedBox(height: 13.v),
                SizedBox(
                  width: 330.h,
                  child: Text(
                    "msg_really_appreciated".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelLarge!.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
              ],
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
    );
  }

  /// Section Widget
  Widget _buildHelpfulIcon2(BuildContext context) {
    return SizedBox(
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
                      style: theme.textTheme.labelLarge,
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
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildShape(
            context,
            reviewText: "msg_was_this_review".tr,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCaityLaurance(BuildContext context) {
    return SizedBox(
      height: 112.v,
      width: 343.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(7.h),
            decoration: IconButtonStyleHelper.fillBlueGrayTL24,
            alignment: Alignment.topLeft,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgButtonMorePrimary,
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
                      style: CustomTextStyles.titleMediumPrimarySemiBold_1,
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Padding(
                    padding: EdgeInsets.only(left: 128.h),
                    child: Text(
                      "lbl_3_weeks_ago".tr,
                      style: CustomTextStyles.labelMediumErrorContainer_1,
                    ),
                  ),
                  SizedBox(height: 13.v),
                  SizedBox(
                    width: 335.h,
                    child: Text(
                      "msg_the_creator_has".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge!.copyWith(
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
    );
  }

  /// Section Widget
  Widget _buildStudentsAlsoBought(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "msg_students_also_bought".tr,
            style: theme.textTheme.headlineSmall,
          ),
        ),
        SizedBox(height: 16.v),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.only(left: 16.h),
          child: IntrinsicWidth(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 160.v,
                      width: 240.h,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 160.v,
                              width: 240.h,
                              padding: EdgeInsets.symmetric(vertical: 50.v),
                              decoration: AppDecoration.fillBlueGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8,
                              ),
                              child: Opacity(
                                opacity: 0.3,
                                child: CustomImageView(
                                  imagePath: ImageConstant
                                      .imgPlaceHolderErrorcontainer,
                                  height: 60.v,
                                  width: 81.h,
                                  alignment: Alignment.center,
                                ),
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
                                imagePath: ImageConstant.imgBookmark,
                              ),
                            ),
                          ),
                          CustomElevatedButton(
                            height: 30.v,
                            width: 72.h,
                            text: "lbl_3d_design".tr,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              bottom: 8.v,
                            ),
                            buttonStyle: CustomButtonStyles.none,
                            decoration: CustomButtonStyles
                                .gradientOnErrorToOnErrorDecoration,
                            buttonTextStyle:
                                CustomTextStyles.labelLargePrimary_1,
                            alignment: Alignment.bottomLeft,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 13.v),
                    SizedBox(
                      height: 43.v,
                      width: 240.h,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          _buildReview(
                            context,
                            userName: "lbl_5_0".tr,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "msg_learning_blender".tr,
                                  style: CustomTextStyles
                                      .titleMediumPrimarySemiBold_1,
                                ),
                                SizedBox(height: 6.v),
                                Row(
                                  children: [
                                    Text(
                                      "lbl_180_00".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text(
                                        "lbl_210_00".tr,
                                        style: theme.textTheme.labelLarge!
                                            .copyWith(
                                          decoration:
                                              TextDecoration.lineThrough,
                                        ),
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
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 160.v,
                        width: 240.h,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 160.v,
                                width: 240.h,
                                padding: EdgeInsets.symmetric(vertical: 50.v),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8,
                                ),
                                child: Opacity(
                                  opacity: 0.3,
                                  child: CustomImageView(
                                    imagePath: ImageConstant
                                        .imgPlaceHolderErrorcontainer,
                                    height: 60.v,
                                    width: 81.h,
                                    alignment: Alignment.center,
                                  ),
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
                                  imagePath: ImageConstant
                                      .imgBookmarkOnprimarycontainer,
                                ),
                              ),
                            ),
                            CustomElevatedButton(
                              height: 30.v,
                              width: 88.h,
                              text: "lbl_development".tr,
                              margin: EdgeInsets.only(
                                left: 8.h,
                                bottom: 8.v,
                              ),
                              buttonStyle: CustomButtonStyles.none,
                              decoration: CustomButtonStyles
                                  .gradientOnErrorToOnErrorDecoration,
                              buttonTextStyle:
                                  CustomTextStyles.labelLargePrimary_1,
                              alignment: Alignment.bottomLeft,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 13.v),
                      SizedBox(
                        height: 43.v,
                        width: 240.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            _buildReview(
                              context,
                              userName: "lbl_5_0".tr,
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
                                      style: CustomTextStyles
                                          .titleMediumPrimarySemiBold_1,
                                    ),
                                    SizedBox(height: 8.v),
                                    Text(
                                      "lbl_150_00".tr,
                                      style: theme.textTheme.titleSmall,
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
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildBuyNow(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineOnPrimaryContainer,
      child: CustomElevatedButton(
        text: "lbl_buy_now".tr,
      ),
    );
  }

  /// Common widget
  Widget _buildHelpful(
    BuildContext context, {
    required String userLabelFourHundredSixtyThree,
    required String userLabelFiftySix,
    required String userLabelWasThisReview,
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
                      userLabelFourHundredSixtyThree,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.errorContainer,
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
                      userLabelFiftySix,
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.errorContainer,
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
                    imagePath: ImageConstant.imgShapePrimary36x343,
                    height: 36.v,
                    width: 343.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 8.v),
                      child: Text(
                        userLabelWasThisReview,
                        style: CustomTextStyles.labelLargePrimary_1.copyWith(
                          color: theme.colorScheme.primary,
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
  Widget _buildShape(
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
            imagePath: ImageConstant.imgShapePrimary36x343,
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
                style: CustomTextStyles.labelLargePrimary_1.copyWith(
                  color: theme.colorScheme.primary,
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
    required String userName,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgIconYellow900,
          height: 18.adaptSize,
          width: 18.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            userName,
            style: CustomTextStyles.titleSmallErrorContainer_1.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
      ],
    );
  }
}
