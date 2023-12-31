import '../filter_screen_one_screen/widgets/fivemilliontwentythreethousand_item_widget.dart';
import 'models/fivemilliontwentythreethousand_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/filter_screen_one_provider.dart';

class FilterScreenOneScreen extends StatefulWidget {
  const FilterScreenOneScreen({Key? key}) : super(key: key);

  @override
  FilterScreenOneScreenState createState() => FilterScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => FilterScreenOneProvider(),
        child: FilterScreenOneScreen());
  }
}

class FilterScreenOneScreenState extends State<FilterScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: SafeArea(
                  child: Column(children: [
                    SizedBox(height: 23.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, right: 122.h, bottom: 5.v),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("lbl_categories2".tr,
                                          style: theme.textTheme.headlineSmall),
                                      SizedBox(height: 15.v),
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgIcon30,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 12.h, top: 2.v),
                                            child: Text("msg_business_2_315".tr,
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
                                            child: Text("lbl_science_356".tr,
                                                style:
                                                    theme.textTheme.titleMedium))
                                      ]),
                                      SizedBox(height: 12.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 51.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon30,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, top: 3.v),
                                                child: Text(
                                                    "msg_development_1_856".tr,
                                                    style: theme
                                                        .textTheme.titleMedium))
                                          ])),
                                      SizedBox(height: 12.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 5.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon30,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, top: 3.v),
                                                child: Text(
                                                    "msg_finance_accounting2".tr,
                                                    style: theme
                                                        .textTheme.titleMedium))
                                          ])),
                                      SizedBox(height: 12.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 50.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon30,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, top: 2.v),
                                                child: Text(
                                                    "msg_it_software_2_315".tr,
                                                    style: theme
                                                        .textTheme.titleMedium))
                                          ])),
                                      SizedBox(height: 12.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 26.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon30,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, top: 3.v),
                                                child: Text(
                                                    "msg_office_productivity2".tr,
                                                    style: theme
                                                        .textTheme.titleMedium))
                                          ])),
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
                                                "msg_personal_development2".tr,
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
                                            child: Text("lbl_design_3_386".tr,
                                                style: CustomTextStyles
                                                    .titleMediumPrimary_1))
                                      ]),
                                      SizedBox(height: 12.v),
                                      _buildC17Hours(context,
                                          duration: "msg_marketing_1_815".tr),
                                      SizedBox(height: 12.v),
                                      _buildExpert(context,
                                          userName: "lbl_lifestyle_923".tr),
                                      SizedBox(height: 12.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 9.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon30,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, top: 3.v),
                                                child: Text(
                                                    "msg_photography_video2".tr,
                                                    style: theme
                                                        .textTheme.titleMedium))
                                          ])),
                                      SizedBox(height: 12.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 42.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon30,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, top: 2.v),
                                                child: Text(
                                                    "msg_health_fitness2".tr,
                                                    style: theme
                                                        .textTheme.titleMedium))
                                          ])),
                                      SizedBox(height: 12.v),
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgIcon30,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 12.h, top: 2.v),
                                            child: Text("lbl_music_1_315".tr,
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
                                                "msg_teaching_academics2".tr,
                                                style:
                                                    theme.textTheme.titleMedium))
                                      ]),
                                      SizedBox(height: 30.v),
                                      Text("lbl_level".tr,
                                          style: theme.textTheme.headlineSmall),
                                      SizedBox(height: 18.v),
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgIcon30,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 12.h, top: 2.v),
                                            child: Text("msg_all_level_8_715".tr,
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
                                            child: Text("msg_beginner_2_562".tr,
                                                style: CustomTextStyles
                                                    .titleMediumPrimary_1))
                                      ]),
                                      SizedBox(height: 12.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 56.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon30,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, top: 2.v),
                                                child: Text(
                                                    "msg_intermediate_2_856".tr,
                                                    style: theme
                                                        .textTheme.titleMedium))
                                          ])),
                                      SizedBox(height: 12.v),
                                      _buildExpert(context,
                                          userName: "lbl_expert_2_789".tr),
                                      SizedBox(height: 30.v),
                                      Text("lbl_video_duration".tr,
                                          style: theme.textTheme.headlineSmall),
                                      SizedBox(height: 18.v),
                                      Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgIcon30,
                                            height: 24.adaptSize,
                                            width: 24.adaptSize),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 12.h, top: 2.v),
                                            child: Text("msg_0_2_hours_8_715".tr,
                                                style:
                                                    theme.textTheme.titleMedium))
                                      ]),
                                      SizedBox(height: 12.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 70.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon31,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, top: 2.v),
                                                child: Text(
                                                    "msg_3_6_hours_2_562".tr,
                                                    style: CustomTextStyles
                                                        .titleMediumPrimary_1))
                                          ])),
                                      SizedBox(height: 12.v),
                                      Padding(
                                          padding: EdgeInsets.only(right: 60.h),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgIcon30,
                                                height: 24.adaptSize,
                                                width: 24.adaptSize),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    left: 12.h, top: 2.v),
                                                child: Text(
                                                    "msg_7_16_hours_2_856".tr,
                                                    style: theme
                                                        .textTheme.titleMedium))
                                          ])),
                                      SizedBox(height: 12.v),
                                      _buildC17Hours(context,
                                          duration: "msg_17_hours_2_789".tr),
                                      SizedBox(height: 33.v),
                                      Text("lbl_rating".tr,
                                          style: theme.textTheme.headlineSmall),
                                      SizedBox(height: 15.v),
                                      _buildFiveMillionTwentyThreeThousand(
                                          context)
                                    ]))))
                  ]),
                )),
            bottomNavigationBar: _buildApplyFilters(context));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 165.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_filter".tr,
                    margin: EdgeInsets.only(left: 127.h, bottom: 4.v))
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
  Widget _buildFiveMillionTwentyThreeThousand(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 77.h),
        child: Consumer<FilterScreenOneProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 12.v);
              },
              itemCount: provider.filterScreenOneModelObj
                  .fivemilliontwentythreethousandItemList.length,
              itemBuilder: (context, index) {
                FivemilliontwentythreethousandItemModel model = provider
                    .filterScreenOneModelObj
                    .fivemilliontwentythreethousandItemList[index];
                return FivemilliontwentythreethousandItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildApplyFilters(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        decoration: AppDecoration.outlineOnPrimaryContainer,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomElevatedButton(
                  width: 164.h,
                  text: "lbl_reset".tr,
                  buttonTextStyle: theme.textTheme.titleLarge!),
              CustomElevatedButton(
                  width: 163.h,
                  text: "lbl_filter".tr,
                  margin: EdgeInsets.only(left: 16.h))
            ]));
  }

  /// Common widget
  Widget _buildExpert(
    BuildContext context, {
    required String userName,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgIcon30,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 12.h, top: 3.v),
          child: Text(userName,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: theme.colorScheme.errorContainer)))
    ]);
  }

  /// Common widget
  Widget _buildC17Hours(
    BuildContext context, {
    required String duration,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgIcon30,
          height: 24.adaptSize,
          width: 24.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 12.h, top: 2.v),
          child: Text(duration,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: theme.colorScheme.errorContainer)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
