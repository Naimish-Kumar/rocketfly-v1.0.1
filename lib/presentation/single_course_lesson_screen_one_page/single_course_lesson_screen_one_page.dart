import 'models/single_course_lesson_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_drop_down.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/single_course_lesson_screen_one_provider.dart';

// ignore_for_file: must_be_immutable
class SingleCourseLessonScreenOnePage extends StatefulWidget {
  const SingleCourseLessonScreenOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleCourseLessonScreenOnePageState createState() =>
      SingleCourseLessonScreenOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleCourseLessonScreenOneProvider(),
      child: SingleCourseLessonScreenOnePage(),
    );
  }
}

class SingleCourseLessonScreenOnePageState
    extends State<SingleCourseLessonScreenOnePage>
    with AutomaticKeepAliveClientMixin<SingleCourseLessonScreenOnePage> {
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
                          userText: "lbl_promotion".tr,
                          userIcon: ImageConstant.imgIconPrimary20x20,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: _buildIntroduction(
                          context,
                          userText: "lbl_introduction".tr,
                          userIcon: ImageConstant.imgIconPrimary20x20,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: _buildIntroduction(
                          context,
                          userText: "lbl_course_material".tr,
                          userIcon: ImageConstant.imgIconErrorcontainer20x20,
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
                      _buildStudentsAlsoBoughtColumn(context),
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
                        child: Selector<SingleCourseLessonScreenOneProvider,
                            SingleCourseLessonScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseLessonScreenOneModelObj,
                          builder: (context,
                              singleCourseLessonScreenOneModelObj, child) {
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
                              items: singleCourseLessonScreenOneModelObj
                                      ?.dropdownItemList ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<SingleCourseLessonScreenOneProvider>()
                                    .onSelected(value);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<SingleCourseLessonScreenOneProvider,
                            SingleCourseLessonScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseLessonScreenOneModelObj,
                          builder: (context,
                              singleCourseLessonScreenOneModelObj, child) {
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
                              items: singleCourseLessonScreenOneModelObj
                                      ?.dropdownItemList1 ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<SingleCourseLessonScreenOneProvider>()
                                    .onSelected1(value);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<SingleCourseLessonScreenOneProvider,
                            SingleCourseLessonScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseLessonScreenOneModelObj,
                          builder: (context,
                              singleCourseLessonScreenOneModelObj, child) {
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
                              items: singleCourseLessonScreenOneModelObj
                                      ?.dropdownItemList2 ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<SingleCourseLessonScreenOneProvider>()
                                    .onSelected2(value);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<SingleCourseLessonScreenOneProvider,
                            SingleCourseLessonScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseLessonScreenOneModelObj,
                          builder: (context,
                              singleCourseLessonScreenOneModelObj, child) {
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
                              items: singleCourseLessonScreenOneModelObj
                                      ?.dropdownItemList3 ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<SingleCourseLessonScreenOneProvider>()
                                    .onSelected3(value);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 32.v),
                      _buildBuyNowColumn(context),
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
  Widget _buildStudentsAlsoBoughtColumn(BuildContext context) {
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
  Widget _buildBuyNowColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineOnPrimaryContainer,
      child: CustomElevatedButton(
        text: "lbl_buy_now".tr,
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
      decoration: AppDecoration.fillErrorContainer.copyWith(
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
                  CustomTextStyles.titleMediumLeagueSpartanPrimary_1.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
          Text(
            timeText,
            style: CustomTextStyles.titleSmallErrorContainer_1.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildIntroduction(
    BuildContext context, {
    required String userText,
    required String userIcon,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.v),
          child: Text(
            userText,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primary,
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
    required String userLabel,
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
            userLabel,
            style: CustomTextStyles.titleSmallErrorContainer_1.copyWith(
              color: theme.colorScheme.errorContainer,
            ),
          ),
        ),
      ],
    );
  }
}
