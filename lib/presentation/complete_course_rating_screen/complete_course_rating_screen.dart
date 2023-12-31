import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_rating_bar.dart';
import 'provider/complete_course_rating_provider.dart';

class CompleteCourseRatingScreen extends StatefulWidget {
  const CompleteCourseRatingScreen({Key? key}) : super(key: key);

  @override
  CompleteCourseRatingScreenState createState() =>
      CompleteCourseRatingScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CompleteCourseRatingProvider(),
        child: CompleteCourseRatingScreen());
  }
}

class CompleteCourseRatingScreenState
    extends State<CompleteCourseRatingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                child: SafeArea(
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup280x343,
                        height: 280.v,
                        width: 343.h),
                    SizedBox(height: 27.v),
                    Text("msg_course_completed".tr,
                        style: CustomTextStyles.headlineLargeDeeppurpleA400),
                    SizedBox(height: 18.v),
                    Text("msg_please_leave_a_review".tr,
                        style: CustomTextStyles.titleMediumGray700_2),
                    SizedBox(height: 24.v),
                    CustomRatingBar(initialRating: 0, itemSize: 32),
                    SizedBox(height: 16.v),
                    CustomElevatedButton(
                        text: "msg_the_course_mentor".tr,
                        buttonStyle: CustomButtonStyles.fillYellow,
                        buttonTextStyle: CustomTextStyles.titleSmallOnError_1),
                    SizedBox(height: 33.v),
                    CustomElevatedButton(
                        text: "lbl_write_review".tr,
                        buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                        buttonTextStyle: theme.textTheme.titleLarge!),
                    SizedBox(height: 16.v),
                    CustomElevatedButton(
                        text: "lbl_cancel".tr,
                        buttonStyle: CustomButtonStyles.fillGrayTL8,
                        buttonTextStyle: CustomTextStyles.titleLargeOnError),
                    SizedBox(height: 5.v)
                  ]),
                )));
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
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_course_complete".tr,
                    margin: EdgeInsets.only(left: 76.h, top: 2.v, bottom: 2.v))
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
