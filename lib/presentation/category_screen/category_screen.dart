import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'provider/category_provider.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  CategoryScreenState createState() => CategoryScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CategoryProvider(), child: CategoryScreen());
  }
}

class CategoryScreenState extends State<CategoryScreen> {
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
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 22.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, right: 16.h, bottom: 5.v),
                              child: Column(children: [
                                _buildWidget(context,
                                    userImage:
                                        ImageConstant.imgMaskGroup100x140,
                                    userImageMask: ImageConstant.imgMaskGroup2),
                                SizedBox(height: 12.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 96.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              _buildContent(context,
                                                  science: "lbl_business".tr,
                                                  coursesCounter:
                                                      "lbl_120_courses".tr),
                                              _buildContent(context,
                                                  science: "lbl_science".tr,
                                                  coursesCounter:
                                                      "lbl_266_courses".tr)
                                            ]))),
                                SizedBox(height: 14.v),
                                _buildWidget(context,
                                    userImage:
                                        ImageConstant.imgMaskGroup120x163,
                                    userImageMask:
                                        ImageConstant.imgMaskGroup15),
                                SizedBox(height: 13.v),
                                _buildDevelopmentRow(context),
                                SizedBox(height: 14.v),
                                _buildWidget(context,
                                    userImage: ImageConstant.imgMaskGroup80x80,
                                    userImageMask:
                                        ImageConstant.imgMaskGroup128x128),
                                SizedBox(height: 12.v),
                                _buildItSoftwareRow(context),
                                SizedBox(height: 14.v),
                                _buildWidget(context,
                                    userImage: ImageConstant.imgMaskGroup6,
                                    userImageMask:
                                        ImageConstant.imgMaskGroup14),
                                SizedBox(height: 13.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 96.h),
                                        child: Row(children: [
                                          Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "msg_personal_development"
                                                        .tr,
                                                    style: CustomTextStyles
                                                        .titleMediumOnError),
                                                SizedBox(height: 1.v),
                                                Text("lbl_94_courses".tr,
                                                    style: CustomTextStyles
                                                        .labelLargeGray700_1)
                                              ]),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 18.h),
                                              child: _buildContent(context,
                                                  science: "lbl_design".tr,
                                                  coursesCounter:
                                                      "lbl_182_courses".tr))
                                        ]))),
                                SizedBox(height: 14.v),
                                _buildWidget(context,
                                    userImage: ImageConstant.imgMaskGroup16,
                                    userImageMask:
                                        ImageConstant.imgMaskGroup17),
                                SizedBox(height: 13.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 103.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_marketing".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumOnError),
                                                    SizedBox(height: 1.v),
                                                    Text("lbl_254_courses".tr,
                                                        style: CustomTextStyles
                                                            .labelLargeGray700_1)
                                                  ]),
                                              _buildContent1(context,
                                                  userName: "lbl_lifestyle".tr,
                                                  userCoursesCounter:
                                                      "lbl_68_courses".tr)
                                            ]))),
                                SizedBox(height: 14.v),
                                _buildWidget(context,
                                    userImage: ImageConstant.imgMaskGroup18,
                                    userImageMask:
                                        ImageConstant.imgMaskGroup19),
                                SizedBox(height: 12.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 46.h),
                                        child: Row(children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 1.v),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "msg_photography_video"
                                                            .tr,
                                                        style: CustomTextStyles
                                                            .titleMediumOnError),
                                                    SizedBox(height: 1.v),
                                                    Text("lbl_136_courses".tr,
                                                        style: CustomTextStyles
                                                            .labelLargeGray700_1)
                                                  ])),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 28.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "msg_health_fitness".tr,
                                                        style: CustomTextStyles
                                                            .titleMediumOnError),
                                                    SizedBox(height: 3.v),
                                                    Text("lbl_231_courses".tr,
                                                        style: CustomTextStyles
                                                            .labelLargeGray700_1)
                                                  ]))
                                        ]))),
                                SizedBox(height: 14.v),
                                _buildWidget(context,
                                    userImage: ImageConstant.imgMaskGroup13,
                                    userImageMask: ImageConstant.imgMaskGroup20)
                              ]))))
                ])),
            bottomNavigationBar: _buildMusicRow(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 141.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_categories2".tr,
                    margin: EdgeInsets.only(left: 103.h, top: 2.v, bottom: 2.v))
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
  Widget _buildDevelopmentRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 8.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("lbl_development".tr,
                style: CustomTextStyles.titleMediumOnError),
            SizedBox(height: 1.v),
            Text("lbl_266_courses".tr,
                style: CustomTextStyles.labelLargeGray700_1)
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("msg_finance_accounting".tr,
                style: CustomTextStyles.titleMediumOnError),
            SizedBox(height: 1.v),
            Text("lbl_132_courses".tr,
                style: CustomTextStyles.labelLargeGray700_1)
          ])
        ]));
  }

  /// Section Widget
  Widget _buildItSoftwareRow(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_it_software".tr,
                            style: CustomTextStyles.titleMediumOnError),
                        SizedBox(height: 2.v),
                        Text("lbl_356_courses".tr,
                            style: CustomTextStyles.labelLargeGray700_1)
                      ]),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_office_productivity".tr,
                            style: CustomTextStyles.titleMediumOnError),
                        SizedBox(height: 1.v),
                        Text("lbl_82_courses".tr,
                            style: CustomTextStyles.labelLargeGray700_1)
                      ])
                ])));
  }

  /// Section Widget
  Widget _buildMusicRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 22.h, bottom: 48.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildContent1(context,
              userName: "lbl_music".tr,
              userCoursesCounter: "lbl_39_courses".tr),
          Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("msg_teaching_academics".tr,
                    style: CustomTextStyles.titleMediumOnError),
                Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text("lbl_98_courses".tr,
                        style: CustomTextStyles.labelLargeGray700_1))
              ])
        ]));
  }

  /// Common widget
  Widget _buildContent(
    BuildContext context, {
    required String science,
    required String coursesCounter,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(science,
          style: CustomTextStyles.titleMediumOnError
              .copyWith(color: theme.colorScheme.onError.withOpacity(1))),
      SizedBox(height: 3.v),
      Text(coursesCounter,
          style: CustomTextStyles.labelLargeGray700_1
              .copyWith(color: appTheme.gray700))
    ]);
  }

  /// Common widget
  Widget _buildWidget(
    BuildContext context, {
    required String userImage,
    required String userImageMask,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(
          child: CustomImageView(
              imagePath: userImage,
              height: 120.v,
              width: 163.h,
              margin: EdgeInsets.only(right: 8.h))),
      Expanded(
          child: CustomImageView(
              imagePath: userImageMask,
              height: 120.v,
              width: 163.h,
              margin: EdgeInsets.only(left: 8.h)))
    ]);
  }

  /// Common widget
  Widget _buildContent1(
    BuildContext context, {
    required String userName,
    required String userCoursesCounter,
  }) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(userName,
              style: CustomTextStyles.titleMediumOnError
                  .copyWith(color: theme.colorScheme.onError.withOpacity(1))),
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text(userCoursesCounter,
                  style: CustomTextStyles.labelLargeGray700_1
                      .copyWith(color: appTheme.gray700)))
        ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
