import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_switch.dart';
import 'provider/notification1_provider.dart';

class Notification1Screen extends StatefulWidget {
  const Notification1Screen({Key? key}) : super(key: key);

  @override
  Notification1ScreenState createState() => Notification1ScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Notification1Provider(),
        child: Notification1Screen());
  }
}

class Notification1ScreenState extends State<Notification1Screen> {
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
                  _buildGeneralNotificationRow(context),
                  SizedBox(height: 16.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 11.v),
                  _buildAppUpdatesRow(context),
                  SizedBox(height: 16.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 16.v),
                  _buildNewCourseAvailableRow(context),
                  SizedBox(height: 16.v),
                  Opacity(
                      opacity: 0.08,
                      child: Divider(color: theme.colorScheme.onError)),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 137.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_notification".tr,
                    margin: EdgeInsets.only(left: 99.h, bottom: 4.v))
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
  Widget _buildGeneralNotificationRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
          child: Text("msg_general_notification".tr,
              style: CustomTextStyles.titleMediumOnError_1)),
      Selector<Notification1Provider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch,
          builder: (context, isSelectedSwitch, child) {
            return CustomSwitch(
                value: isSelectedSwitch,
                onChange: (value) {
                  context.read<Notification1Provider>().changeSwitchBox(value);
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildAppUpdatesRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text("lbl_app_updates".tr,
              style: CustomTextStyles.titleMediumOnError_1)),
      Selector<Notification1Provider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch1,
          builder: (context, isSelectedSwitch1, child) {
            return CustomSwitch(
                value: isSelectedSwitch1,
                onChange: (value) {
                  context.read<Notification1Provider>().changeSwitchBox1(value);
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildNewCourseAvailableRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
          child: Text("msg_new_course_available".tr,
              style: CustomTextStyles.titleMediumOnError_1)),
      Selector<Notification1Provider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch2,
          builder: (context, isSelectedSwitch2, child) {
            return CustomSwitch(
                value: isSelectedSwitch2,
                onChange: (value) {
                  context.read<Notification1Provider>().changeSwitchBox2(value);
                });
          })
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
