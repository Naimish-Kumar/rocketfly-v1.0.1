import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/select_courses_provider.dart';

class SelectCoursesScreen extends StatefulWidget {
  const SelectCoursesScreen({Key? key}) : super(key: key);

  @override
  SelectCoursesScreenState createState() => SelectCoursesScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SelectCoursesProvider(),
        child: SelectCoursesScreen());
  }
}

class SelectCoursesScreenState extends State<SelectCoursesScreen> {
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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            width: 318.h,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 12.h),
                                            child: Text(
                                                "msg_choose_at_least".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: theme
                                                    .textTheme.titleMedium!
                                                    .copyWith(height: 1.50)))),
                                    SizedBox(height: 29.v),
                                    _buildITSoftware(context,
                                        itSoftware: "lbl_business".tr,
                                        coursesCounter: "lbl_12_120_courses".tr,
                                        arrowDown:
                                            ImageConstant.imgArrowLeftPrimary),
                                    SizedBox(height: 16.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon30,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 3.v),
                                          child: Text("msg_entrepreneurship".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                    SizedBox(height: 12.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon30,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 2.v),
                                          child: Text(
                                              "msg_communication_2_315".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                    SizedBox(height: 12.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon30,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 3.v),
                                          child: Text("msg_management_356".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                    SizedBox(height: 12.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon30,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 2.v),
                                          child: Text("lbl_sales_523".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                    SizedBox(height: 12.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon31,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 3.v),
                                          child: Text(
                                              "msg_business_strategy".tr,
                                              style: CustomTextStyles
                                                  .titleMediumPrimary_1))
                                    ]),
                                    SizedBox(height: 12.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon30,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 3.v),
                                          child: Text("msg_operation_1_815".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                    SizedBox(height: 12.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon30,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 3.v),
                                          child: Text(
                                              "msg_project_management".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                    SizedBox(height: 12.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon30,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 2.v),
                                          child: Text("msg_business_law_156".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                    SizedBox(height: 12.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon30,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 2.v),
                                          child: Text("msg_human_resources".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                    SizedBox(height: 12.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon30,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 2.v),
                                          child: Text("msg_e_commerce_2_815".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                    SizedBox(height: 12.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon30,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 2.v),
                                          child: Text(
                                              "msg_real_estate_1_349".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                    SizedBox(height: 12.v),
                                    Row(children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgIcon30,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 12.h, top: 2.v),
                                          child: Text(
                                              "msg_other_business_786".tr,
                                              style:
                                                  theme.textTheme.titleMedium))
                                    ]),
                                    SizedBox(height: 16.v),
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 17.v),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: fs.Svg(
                                                    ImageConstant.imgGroup199),
                                                fit: BoxFit.cover)),
                                        child: Column(children: [
                                          _buildDesign(context,
                                              design: "lbl_science".tr,
                                              coursesCounter:
                                                  "lbl_266_courses".tr),
                                          SizedBox(height: 33.v),
                                          _buildDevelopment(context),
                                          SizedBox(height: 33.v),
                                          _buildFinanceAccounting(context),
                                          SizedBox(height: 33.v),
                                          _buildITSoftware(context,
                                              itSoftware: "lbl_it_software".tr,
                                              coursesCounter:
                                                  "lbl_356_courses".tr,
                                              arrowDown:
                                                  ImageConstant.imgArrowDown),
                                          SizedBox(height: 33.v),
                                          _buildOfficeProductivity(context),
                                          SizedBox(height: 33.v),
                                          _buildPersonalDevelopment(context),
                                          SizedBox(height: 33.v),
                                          _buildDesign(context,
                                              design: "lbl_design".tr,
                                              coursesCounter:
                                                  "lbl_182_courses".tr),
                                          SizedBox(height: 33.v),
                                          _buildDesign(context,
                                              design: "lbl_marketing".tr,
                                              coursesCounter:
                                                  "lbl_256_courses".tr),
                                          SizedBox(height: 33.v),
                                          _buildMusic(context,
                                              music: "lbl_lifestyle".tr,
                                              coursesCounter:
                                                  "lbl_68_courses".tr),
                                          SizedBox(height: 33.v),
                                          _buildPhotographyVideo(context),
                                          SizedBox(height: 33.v),
                                          _buildHealthFitness(context),
                                          SizedBox(height: 33.v),
                                          _buildMusic(context,
                                              music: "lbl_music".tr,
                                              coursesCounter:
                                                  "lbl_39_courses".tr)
                                        ])),
                                    SizedBox(height: 16.v),
                                    _buildTeachingAcademics(context)
                                  ]))))
                ])),
            bottomNavigationBar: _buildNext(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_select_courses".tr,
                    margin: EdgeInsets.only(left: 87.h, bottom: 5.v)),
                AppbarSubtitleThree(
                    text: "lbl_skip".tr,
                    margin: EdgeInsets.only(left: 76.h, top: 2.v))
              ])),
          SizedBox(height: 9.v),
          Opacity(
              opacity: 0.08,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildDevelopment(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 18.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 60.v,
                  width: 81.h,
                  alignment: Alignment.center))),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 25.v, bottom: 22.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_development".tr,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1),
            SizedBox(height: 11.v),
            Text("lbl_956_courses".tr,
                style: CustomTextStyles.titleSmallErrorContainer_1)
          ])),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 36.v))
    ]);
  }

  /// Section Widget
  Widget _buildFinanceAccounting(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 18.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 60.v,
                  width: 81.h,
                  alignment: Alignment.center))),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 25.v, bottom: 22.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_finance_accounting".tr,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1),
            SizedBox(height: 10.v),
            Text("lbl_132_courses".tr,
                style: CustomTextStyles.titleSmallErrorContainer_1)
          ])),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 36.v))
    ]);
  }

  /// Section Widget
  Widget _buildOfficeProductivity(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 18.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 60.v,
                  width: 81.h,
                  alignment: Alignment.center))),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 25.v, bottom: 22.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_office_productivity".tr,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1),
            SizedBox(height: 11.v),
            Text("lbl_82_courses".tr,
                style: CustomTextStyles.titleSmallErrorContainer_1)
          ])),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 36.v))
    ]);
  }

  /// Section Widget
  Widget _buildPersonalDevelopment(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 18.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 60.v,
                  width: 81.h,
                  alignment: Alignment.center))),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 25.v, bottom: 22.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_personal_development".tr,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1),
            SizedBox(height: 11.v),
            Text("lbl_94_courses".tr,
                style: CustomTextStyles.titleSmallErrorContainer_1)
          ])),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 36.v))
    ]);
  }

  /// Section Widget
  Widget _buildPhotographyVideo(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 18.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 60.v,
                  width: 81.h,
                  alignment: Alignment.center))),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 25.v, bottom: 22.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_photography_video".tr,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1),
            SizedBox(height: 10.v),
            Text("lbl_136_courses".tr,
                style: CustomTextStyles.titleSmallErrorContainer_1)
          ])),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 36.v))
    ]);
  }

  /// Section Widget
  Widget _buildHealthFitness(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 18.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 60.v,
                  width: 81.h,
                  alignment: Alignment.center))),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 23.v, bottom: 23.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_health_fitness".tr,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1),
            SizedBox(height: 12.v),
            Text("lbl_231_courses".tr,
                style: CustomTextStyles.titleSmallErrorContainer_1)
          ])),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 36.v))
    ]);
  }

  /// Section Widget
  Widget _buildTeachingAcademics(BuildContext context) {
    return Row(children: [
      Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 18.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 60.v,
                  width: 81.h,
                  alignment: Alignment.center))),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 25.v, bottom: 22.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_teaching_academics".tr,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1),
            SizedBox(height: 10.v),
            Text("lbl_98_courses".tr,
                style: CustomTextStyles.titleSmallErrorContainer_1)
          ])),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 36.v))
    ]);
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        decoration: AppDecoration.outlineOnPrimaryContainer,
        child: CustomElevatedButton(text: "lbl_next".tr));
  }

  /// Common widget
  Widget _buildITSoftware(
    BuildContext context, {
    required String itSoftware,
    required String coursesCounter,
    required String arrowDown,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 18.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 60.v,
                  width: 81.h,
                  alignment: Alignment.center))),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 23.v, bottom: 23.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(itSoftware,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1
                    .copyWith(color: theme.colorScheme.primary)),
            SizedBox(height: 12.v),
            Text(coursesCounter,
                style: CustomTextStyles.titleSmallErrorContainer_1
                    .copyWith(color: theme.colorScheme.errorContainer))
          ])),
      Spacer(),
      CustomImageView(
          imagePath: arrowDown,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 36.v))
    ]);
  }

  /// Common widget
  Widget _buildDesign(
    BuildContext context, {
    required String design,
    required String coursesCounter,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 18.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 60.v,
                  width: 81.h,
                  alignment: Alignment.center))),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 25.v, bottom: 22.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(design,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1
                    .copyWith(color: theme.colorScheme.primary)),
            SizedBox(height: 10.v),
            Text(coursesCounter,
                style: CustomTextStyles.titleSmallErrorContainer_1
                    .copyWith(color: theme.colorScheme.errorContainer))
          ])),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 36.v))
    ]);
  }

  /// Common widget
  Widget _buildMusic(
    BuildContext context, {
    required String music,
    required String coursesCounter,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 96.adaptSize,
          width: 96.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 18.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 60.v,
                  width: 81.h,
                  alignment: Alignment.center))),
      Padding(
          padding: EdgeInsets.only(left: 16.h, top: 23.v, bottom: 23.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(music,
                style: CustomTextStyles.titleMediumPrimarySemiBold_1
                    .copyWith(color: theme.colorScheme.primary)),
            SizedBox(height: 12.v),
            Text(coursesCounter,
                style: CustomTextStyles.titleSmallErrorContainer_1
                    .copyWith(color: theme.colorScheme.errorContainer))
          ])),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 36.v))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
