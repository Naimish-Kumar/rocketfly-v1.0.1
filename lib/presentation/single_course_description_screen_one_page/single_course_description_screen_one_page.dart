import 'models/single_course_description_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_drop_down.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/single_course_description_screen_one_provider.dart';

// ignore_for_file: must_be_immutable
class SingleCourseDescriptionScreenOnePage extends StatefulWidget {
  const SingleCourseDescriptionScreenOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleCourseDescriptionScreenOnePageState createState() =>
      SingleCourseDescriptionScreenOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleCourseDescriptionScreenOneProvider(),
      child: SingleCourseDescriptionScreenOnePage(),
    );
  }
}

class SingleCourseDescriptionScreenOnePageState
    extends State<SingleCourseDescriptionScreenOnePage>
    with AutomaticKeepAliveClientMixin<SingleCourseDescriptionScreenOnePage> {
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_details".tr,
                          style: theme.textTheme.titleLarge,
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
                            style: CustomTextStyles.bodyMediumErrorContainer
                                .copyWith(
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
                          style: theme.textTheme.titleLarge,
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
                            style: CustomTextStyles.bodyMediumErrorContainer
                                .copyWith(
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
                          style: theme.textTheme.titleLarge,
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
                            style: CustomTextStyles.bodyMediumErrorContainer
                                .copyWith(
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
                          style: theme.textTheme.titleLarge,
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
                          style: CustomTextStyles.bodyMediumErrorContainer
                              .copyWith(
                            height: 1.43,
                          ),
                        ),
                      ),
                      SizedBox(height: 30.v),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_share".tr,
                          style: theme.textTheme.headlineSmall,
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
                              decoration:
                                  IconButtonStyleHelper.fillErrorContainerTL24,
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
                      SizedBox(height: 32.v),
                      _buildStudendsAlsoBought(context),
                      SizedBox(height: 31.v),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_faqs".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      SizedBox(height: 17.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<
                            SingleCourseDescriptionScreenOneProvider,
                            SingleCourseDescriptionScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseDescriptionScreenOneModelObj,
                          builder: (context,
                              singleCourseDescriptionScreenOneModelObj, child) {
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
                              alignment: Alignment.center,
                              items: singleCourseDescriptionScreenOneModelObj
                                      ?.dropdownItemList ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<
                                        SingleCourseDescriptionScreenOneProvider>()
                                    .onSelected(value);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<
                            SingleCourseDescriptionScreenOneProvider,
                            SingleCourseDescriptionScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseDescriptionScreenOneModelObj,
                          builder: (context,
                              singleCourseDescriptionScreenOneModelObj, child) {
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
                              alignment: Alignment.center,
                              items: singleCourseDescriptionScreenOneModelObj
                                      ?.dropdownItemList1 ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<
                                        SingleCourseDescriptionScreenOneProvider>()
                                    .onSelected1(value);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<
                            SingleCourseDescriptionScreenOneProvider,
                            SingleCourseDescriptionScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseDescriptionScreenOneModelObj,
                          builder: (context,
                              singleCourseDescriptionScreenOneModelObj, child) {
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
                              alignment: Alignment.center,
                              items: singleCourseDescriptionScreenOneModelObj
                                      ?.dropdownItemList2 ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<
                                        SingleCourseDescriptionScreenOneProvider>()
                                    .onSelected2(value);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 12.v),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Selector<
                            SingleCourseDescriptionScreenOneProvider,
                            SingleCourseDescriptionScreenOneModel?>(
                          selector: (
                            context,
                            provider,
                          ) =>
                              provider.singleCourseDescriptionScreenOneModelObj,
                          builder: (context,
                              singleCourseDescriptionScreenOneModelObj, child) {
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
                              alignment: Alignment.center,
                              items: singleCourseDescriptionScreenOneModelObj
                                      ?.dropdownItemList3 ??
                                  [],
                              onChanged: (value) {
                                context
                                    .read<
                                        SingleCourseDescriptionScreenOneProvider>()
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
  Widget _buildStudendsAlsoBought(BuildContext context) {
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
