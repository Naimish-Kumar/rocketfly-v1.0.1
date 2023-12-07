import '../single_courses_ongoing_screen/widgets/introduction_item_widget.dart';
import 'models/introduction_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/single_courses_ongoing_provider.dart';

class SingleCoursesOngoingScreen extends StatefulWidget {
  const SingleCoursesOngoingScreen({Key? key}) : super(key: key);

  @override
  SingleCoursesOngoingScreenState createState() =>
      SingleCoursesOngoingScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SingleCoursesOngoingProvider(),
        child: SingleCoursesOngoingScreen());
  }
}

class SingleCoursesOngoingScreenState
    extends State<SingleCoursesOngoingScreen> {
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                child: Column(children: [
                  _buildResponsiveDesign(context),
                  SizedBox(height: 32.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 25.v),
                  _buildIntroduction(context),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildContinueCourse(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 142.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_my_course".tr,
                    margin: EdgeInsets.only(left: 104.h, top: 2.v, bottom: 2.v))
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
  Widget _buildResponsiveDesign(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      CustomImageView(
          imagePath: ImageConstant.imgMaskGroup3,
          height: 80.adaptSize,
          width: 80.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 12.h, top: 4.v, bottom: 3.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
                width: 147.h,
                child: Text("msg_responsive_design2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumOnError_1
                        .copyWith(height: 1.25))),
            SizedBox(height: 15.v),
            Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIconGray700,
                  height: 16.adaptSize,
                  width: 16.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text("lbl_1h_30m".tr,
                      style: CustomTextStyles.labelLargeGray700_1))
            ])
          ])),
      Padding(
          padding: EdgeInsets.only(left: 23.h),
          child: SizedBox(
              height: 80.adaptSize,
              width: 80.adaptSize,
              child: CircularProgressIndicator(value: 0.5, strokeWidth: 4.h)))
    ]);
  }

  /// Section Widget
  Widget _buildIntroduction(BuildContext context) {
    return Expanded(child: Consumer<SingleCoursesOngoingProvider>(
        builder: (context, provider, child) {
      return GroupedListView<IntroductionItemModel, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements:
              provider.singleCoursesOngoingModelObj.introductionItemList ?? [],
          groupBy: (element) => element.groupBy!,
          sort: false,
          groupSeparatorBuilder: (String value) {
            return Padding(
                padding: EdgeInsets.only(top: 25.v, bottom: 19.v),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(value,
                          style: CustomTextStyles
                              .titleMediumLeagueSpartanOnError_1
                              .copyWith(
                                  color: theme.colorScheme.onError
                                      .withOpacity(1))),
                      Text(value,
                          style: CustomTextStyles
                              .titleMediumLeagueSpartanGray700
                              .copyWith(color: appTheme.gray700))
                    ]));
          },
          itemBuilder: (context, model) {
            return IntroductionItemWidget(model);
          },
          separator: SizedBox(height: 8.v));
    }));
  }

  /// Section Widget
  Widget _buildContinueCourse(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        decoration: AppDecoration.outlineOnError,
        child: CustomElevatedButton(
            text: "lbl_continue_course".tr,
            buttonStyle: CustomButtonStyles.fillDeepPurpleA,
            buttonTextStyle: theme.textTheme.titleLarge!));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
