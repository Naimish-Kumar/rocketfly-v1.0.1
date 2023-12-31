import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_switch.dart';
import 'provider/notification_screen_one1_provider.dart';

class NotificationScreenOne1Screen extends StatefulWidget {
  const NotificationScreenOne1Screen({Key? key}) : super(key: key);

  @override
  NotificationScreenOne1ScreenState createState() =>
      NotificationScreenOne1ScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NotificationScreenOne1Provider(),
        child: NotificationScreenOne1Screen());
  }
}

class NotificationScreenOne1ScreenState
    extends State<NotificationScreenOne1Screen> {
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
                  _buildGeneralNotification(context),
                  SizedBox(height: 16.v),
                  _buildSound(context),
                  SizedBox(height: 16.v),
                  _buildNewTipsAvailable(context),
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
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_notification".tr,
                    margin: EdgeInsets.only(left: 99.h, bottom: 4.v))
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
  Widget _buildGeneralNotification(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
          child: Text("msg_general_notification".tr,
              style: CustomTextStyles.titleMediumPrimary_1)),
      Selector<NotificationScreenOne1Provider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch,
          builder: (context, isSelectedSwitch, child) {
            return CustomSwitch(
                value: isSelectedSwitch,
                onChange: (value) {
                  context
                      .read<NotificationScreenOne1Provider>()
                      .changeSwitchBox(value);
                });
          })
    ]);
  }

  /// Section Widget
  Widget _buildSound(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 17.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup107), fit: BoxFit.cover)),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
                child: Text("lbl_sound".tr,
                    style: CustomTextStyles.titleMediumPrimary_1)),
            Selector<NotificationScreenOne1Provider, bool?>(
                selector: (context, provider) => provider.isSelectedSwitch1,
                builder: (context, isSelectedSwitch1, child) {
                  return CustomSwitch(
                      value: isSelectedSwitch1,
                      onChange: (value) {
                        context
                            .read<NotificationScreenOne1Provider>()
                            .changeSwitchBox1(value);
                      });
                })
          ]),
          SizedBox(height: 33.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
                child: Text("lbl_vibrate".tr,
                    style: CustomTextStyles.titleMediumPrimary_1)),
            Selector<NotificationScreenOne1Provider, bool?>(
                selector: (context, provider) => provider.isSelectedSwitch2,
                builder: (context, isSelectedSwitch2, child) {
                  return CustomSwitch(
                      value: isSelectedSwitch2,
                      onChange: (value) {
                        context
                            .read<NotificationScreenOne1Provider>()
                            .changeSwitchBox2(value);
                      });
                })
          ]),
          SizedBox(height: 33.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text("lbl_special_offers".tr,
                    style: CustomTextStyles.titleMediumPrimary_1)),
            Selector<NotificationScreenOne1Provider, bool?>(
                selector: (context, provider) => provider.isSelectedSwitch3,
                builder: (context, isSelectedSwitch3, child) {
                  return CustomSwitch(
                      value: isSelectedSwitch3,
                      onChange: (value) {
                        context
                            .read<NotificationScreenOne1Provider>()
                            .changeSwitchBox3(value);
                      });
                })
          ]),
          SizedBox(height: 33.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
                child: Text("msg_promo_discount".tr,
                    style: CustomTextStyles.titleMediumPrimary_1)),
            Selector<NotificationScreenOne1Provider, bool?>(
                selector: (context, provider) => provider.isSelectedSwitch4,
                builder: (context, isSelectedSwitch4, child) {
                  return CustomSwitch(
                      value: isSelectedSwitch4,
                      onChange: (value) {
                        context
                            .read<NotificationScreenOne1Provider>()
                            .changeSwitchBox4(value);
                      });
                })
          ]),
          SizedBox(height: 33.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text("lbl_payments".tr,
                    style: CustomTextStyles.titleMediumPrimary_1)),
            Selector<NotificationScreenOne1Provider, bool?>(
                selector: (context, provider) => provider.isSelectedSwitch5,
                builder: (context, isSelectedSwitch5, child) {
                  return CustomSwitch(
                      value: isSelectedSwitch5,
                      onChange: (value) {
                        context
                            .read<NotificationScreenOne1Provider>()
                            .changeSwitchBox5(value);
                      });
                })
          ]),
          SizedBox(height: 33.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text("lbl_app_updates".tr,
                    style: CustomTextStyles.titleMediumPrimary_1)),
            Selector<NotificationScreenOne1Provider, bool?>(
                selector: (context, provider) => provider.isSelectedSwitch6,
                builder: (context, isSelectedSwitch6, child) {
                  return CustomSwitch(
                      value: isSelectedSwitch6,
                      onChange: (value) {
                        context
                            .read<NotificationScreenOne1Provider>()
                            .changeSwitchBox6(value);
                      });
                })
          ]),
          SizedBox(height: 33.v),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
                padding: EdgeInsets.only(top: 2.v, bottom: 1.v),
                child: Text("msg_new_course_available".tr,
                    style: CustomTextStyles.titleMediumPrimary_1)),
            Selector<NotificationScreenOne1Provider, bool?>(
                selector: (context, provider) => provider.isSelectedSwitch7,
                builder: (context, isSelectedSwitch7, child) {
                  return CustomSwitch(
                      value: isSelectedSwitch7,
                      onChange: (value) {
                        context
                            .read<NotificationScreenOne1Provider>()
                            .changeSwitchBox7(value);
                      });
                })
          ])
        ]));
  }

  /// Section Widget
  Widget _buildNewTipsAvailable(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text("msg_new_tips_available".tr,
              style: CustomTextStyles.titleMediumPrimary_1)),
      Selector<NotificationScreenOne1Provider, bool?>(
          selector: (context, provider) => provider.isSelectedSwitch8,
          builder: (context, isSelectedSwitch8, child) {
            return CustomSwitch(
                value: isSelectedSwitch8,
                onChange: (value) {
                  context
                      .read<NotificationScreenOne1Provider>()
                      .changeSwitchBox8(value);
                });
          })
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
