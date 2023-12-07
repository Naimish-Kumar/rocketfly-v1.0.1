import '../primary_goal_screen/widgets/startanewcareerandskills_item_widget.dart';
import 'models/startanewcareerandskills_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/primary_goal_provider.dart';

class PrimaryGoalScreen extends StatefulWidget {
  const PrimaryGoalScreen({Key? key}) : super(key: key);

  @override
  PrimaryGoalScreenState createState() => PrimaryGoalScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => PrimaryGoalProvider(), child: PrimaryGoalScreen());
  }
}

class PrimaryGoalScreenState extends State<PrimaryGoalScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(children: [
                  Container(
                      width: 317.h,
                      margin: EdgeInsets.only(left: 12.h, right: 13.h),
                      child: Text("msg_what_is_your_main".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium!
                              .copyWith(height: 1.50))),
                  SizedBox(height: 29.v),
                  _buildStartanewcareerandskills(context)
                ])),
            bottomNavigationBar: _buildNextButton(context)));
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
                    text: "lbl_primary_goal".tr,
                    margin: EdgeInsets.only(left: 93.h, top: 2.v, bottom: 3.v)),
                AppbarSubtitleThree(
                    text: "lbl_skip".tr,
                    margin: EdgeInsets.only(left: 81.h, top: 2.v))
              ])),
          SizedBox(height: 9.v),
          Opacity(
              opacity: 0.08,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildStartanewcareerandskills(BuildContext context) {
    return Consumer<PrimaryGoalProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 12.v);
          },
          itemCount: provider
              .primaryGoalModelObj.startanewcareerandskillsItemList.length,
          itemBuilder: (context, index) {
            StartanewcareerandskillsItemModel model = provider
                .primaryGoalModelObj.startanewcareerandskillsItemList[index];
            return StartanewcareerandskillsItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_next".tr,
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
