import '../trending_courses_screen/widgets/designlist_item_widget.dart';
import 'models/designlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'provider/trending_courses_provider.dart';

class TrendingCoursesScreen extends StatefulWidget {
  const TrendingCoursesScreen({Key? key}) : super(key: key);

  @override
  TrendingCoursesScreenState createState() => TrendingCoursesScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TrendingCoursesProvider(),
        child: TrendingCoursesScreen());
  }
}

class TrendingCoursesScreenState extends State<TrendingCoursesScreen> {
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
            body: SizedBox(
                width: double.maxFinite,
                child: SafeArea(
                  child: Column(children: [
                    SizedBox(height: 22.v),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 16.h, right: 16.h, bottom: 5.v),
                                child: Column(children: [
                                  _buildDesignList(context),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("msg_create_design".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnErrorSemiBold)),
                                  SizedBox(height: 6.v),
                                  _buildDuration(context,
                                      userAge: "lbl_7_11_years".tr,
                                      userAgeRange: "lbl_5_0".tr),
                                  SizedBox(height: 209.v),
                                  Text("msg_the_complete_20233".tr,
                                      style: CustomTextStyles
                                          .titleMediumOnErrorSemiBold),
                                  SizedBox(height: 6.v),
                                  _buildDuration(context,
                                      userAge: "lbl_16_22_years".tr,
                                      userAgeRange: "lbl_4_8".tr),
                                  SizedBox(height: 209.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("msg_complete_stretching".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnErrorSemiBold)),
                                  SizedBox(height: 6.v),
                                  _buildDuration(context,
                                      userAge: "lbl_23_60_years".tr,
                                      userAgeRange: "lbl_4_5".tr),
                                  SizedBox(height: 209.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("msg_how_to_find_the".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnErrorSemiBold)),
                                  SizedBox(height: 6.v),
                                  _buildDuration(context,
                                      userAge: "lbl_12_15_years".tr,
                                      userAgeRange: "lbl_4_8".tr),
                                  SizedBox(height: 208.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("msg_the_professional".tr,
                                          style: CustomTextStyles
                                              .titleMediumOnErrorSemiBold))
                                ]))))
                  ]),
                )),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 49.v),
                child: _buildDuration(context,
                    userAge: "lbl_7_11_years".tr,
                    userAgeRange: "lbl_4_6".tr)));
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
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "msg_trending_courses2".tr,
                    margin: EdgeInsets.only(left: 76.h, top: 2.v, bottom: 2.v)),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgButtonFilterOnerror,
                    margin: EdgeInsets.only(left: 74.h))
              ])),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(color: theme.colorScheme.onError)))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildDesignList(BuildContext context) {
    return Consumer<TrendingCoursesProvider>(
        builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 78.v);
          },
          itemCount: provider.trendingCoursesModelObj.designlistItemList.length,
          itemBuilder: (context, index) {
            DesignlistItemModel model =
                provider.trendingCoursesModelObj.designlistItemList[index];
            return DesignlistItemWidget(model);
          });
    });
  }

  /// Common widget
  Widget _buildDuration(
    BuildContext context, {
    required String userAge,
    required String userAgeRange,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(userAge,
          style: CustomTextStyles.titleMediumOnError_1
              .copyWith(color: theme.colorScheme.onError.withOpacity(1))),
      Spacer(),
      CustomImageView(
          imagePath: ImageConstant.imgIconOnsecondarycontainer,
          height: 20.adaptSize,
          width: 20.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(userAgeRange,
              style: CustomTextStyles.titleMediumGray700_2
                  .copyWith(color: appTheme.gray700)))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
