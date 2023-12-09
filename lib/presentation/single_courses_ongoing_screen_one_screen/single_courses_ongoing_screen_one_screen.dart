import '../single_courses_ongoing_screen_one_screen/widgets/introduction2_item_widget.dart';
import 'models/introduction2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/single_courses_ongoing_screen_one_provider.dart';

class SingleCoursesOngoingScreenOneScreen extends StatefulWidget {
  const SingleCoursesOngoingScreenOneScreen({Key? key}) : super(key: key);

  @override
  SingleCoursesOngoingScreenOneScreenState createState() =>
      SingleCoursesOngoingScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SingleCoursesOngoingScreenOneProvider(),
        child: SingleCoursesOngoingScreenOneScreen());
  }
}

class SingleCoursesOngoingScreenOneScreenState
    extends State<SingleCoursesOngoingScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v),
                child: SafeArea(
                  child: Column(children: [
                    _buildPlaceholder(context),
                    SizedBox(height: 32.v),
                    Opacity(opacity: 0.08, child: Divider()),
                    SizedBox(height: 25.v),
                    _buildIntroduction(context),
                    SizedBox(height: 5.v)
                  ]),
                )),
            bottomNavigationBar: _buildContinueCourse(context));
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
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_my_course".tr,
                    margin: EdgeInsets.only(left: 104.h, top: 2.v, bottom: 2.v))
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
  Widget _buildPlaceholder(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 80.adaptSize,
          width: 80.adaptSize,
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 20.v),
          decoration: AppDecoration.fillBlueGray
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
          child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                  height: 40.v,
                  width: 54.h,
                  alignment: Alignment.center))),
      Padding(
          padding: EdgeInsets.only(left: 12.h, top: 4.v, bottom: 3.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
                width: 147.h,
                child: Text("msg_responsive_design2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumPrimary_1
                        .copyWith(height: 1.25))),
            SizedBox(height: 15.v),
            Row(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIconErrorcontainer16x16,
                  height: 16.adaptSize,
                  width: 16.adaptSize),
              Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child:
                      Text("lbl_1h_30m".tr, style: theme.textTheme.labelLarge))
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
    return Expanded(child: Consumer<SingleCoursesOngoingScreenOneProvider>(
        builder: (context, provider, child) {
      return GroupedListView<Introduction2ItemModel, String>(
          shrinkWrap: true,
          stickyHeaderBackgroundColor: Colors.transparent,
          elements: provider.singleCoursesOngoingScreenOneModelObj
                  .introduction2ItemList ??
              [],
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
                              .titleMediumLeagueSpartanPrimary_1
                              .copyWith(color: theme.colorScheme.primary)),
                      Text(value,
                          style: CustomTextStyles.titleMediumLeagueSpartan
                              .copyWith(
                                  color: theme.colorScheme.errorContainer))
                    ]));
          },
          itemBuilder: (context, model) {
            return Introduction2ItemWidget(model);
          },
          separator: SizedBox(height: 8.v));
    }));
  }

  /// Section Widget
  Widget _buildContinueCourse(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        decoration: AppDecoration.outlineOnPrimaryContainer,
        child: CustomElevatedButton(text: "lbl_continue_course".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
