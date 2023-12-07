import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_rating_bar.dart';
import 'provider/complete_course_rating_screen_one_provider.dart';

class CompleteCourseRatingScreenOneScreen extends StatefulWidget {
  const CompleteCourseRatingScreenOneScreen({Key? key}) : super(key: key);

  @override
  CompleteCourseRatingScreenOneScreenState createState() =>
      CompleteCourseRatingScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CompleteCourseRatingScreenOneProvider(),
        child: CompleteCourseRatingScreenOneScreen());
  }
}

class CompleteCourseRatingScreenOneScreenState
    extends State<CompleteCourseRatingScreenOneScreen> {
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
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                child: Column(children: [
                  _buildImagePlaceHolder(context),
                  SizedBox(height: 27.v),
                  Text("msg_course_completed".tr,
                      style: theme.textTheme.headlineLarge),
                  SizedBox(height: 18.v),
                  Text("msg_please_leave_a_review".tr,
                      style: theme.textTheme.titleMedium),
                  SizedBox(height: 24.v),
                  CustomRatingBar(initialRating: 0, itemSize: 32),
                  SizedBox(height: 16.v),
                  CustomElevatedButton(
                      text: "msg_the_course_mentor".tr,
                      buttonStyle: CustomButtonStyles.fillYellow,
                      buttonTextStyle: theme.textTheme.titleSmall!),
                  SizedBox(height: 33.v),
                  CustomElevatedButton(text: "lbl_write_review".tr),
                  SizedBox(height: 16.v),
                  CustomElevatedButton(
                      text: "lbl_cancel".tr,
                      buttonStyle: CustomButtonStyles.fillErrorContainerTL8,
                      buttonTextStyle: theme.textTheme.titleLarge!),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 115.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_course_complete".tr,
                    margin: EdgeInsets.only(left: 76.h, top: 2.v, bottom: 2.v))
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
  Widget _buildImagePlaceHolder(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 121.v),
        decoration: AppDecoration.fillBlueGray,
        child: Opacity(
            opacity: 0.3,
            child: CustomImageView(
                imagePath: ImageConstant.imgPlaceHolderErrorcontainer38x299,
                height: 38.v,
                width: 299.h)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
