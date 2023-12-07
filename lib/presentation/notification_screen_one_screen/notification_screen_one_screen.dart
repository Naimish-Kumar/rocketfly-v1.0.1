import '../notification_screen_one_screen/widgets/barbaramichelalist1_item_widget.dart';
import 'models/barbaramichelalist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'provider/notification_screen_one_provider.dart';

class NotificationScreenOneScreen extends StatefulWidget {
  const NotificationScreenOneScreen({Key? key}) : super(key: key);

  @override
  NotificationScreenOneScreenState createState() =>
      NotificationScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => NotificationScreenOneProvider(),
        child: NotificationScreenOneScreen());
  }
}

class NotificationScreenOneScreenState
    extends State<NotificationScreenOneScreen> {
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
                  _buildBarbaraMichelaList(context),
                  _buildViewStack(context)
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
  Widget _buildBarbaraMichelaList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: Consumer<NotificationScreenOneProvider>(
            builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(height: 276.v);
              },
              itemCount: provider.notificationScreenOneModelObj
                  .barbaramichelalist1ItemList.length,
              itemBuilder: (context, index) {
                Barbaramichelalist1ItemModel model = provider
                    .notificationScreenOneModelObj
                    .barbaramichelalist1ItemList[index];
                return Barbaramichelalist1ItemWidget(model);
              });
        }));
  }

  /// Section Widget
  Widget _buildViewStack(BuildContext context) {
    return SizedBox(
        height: 244.v,
        width: 343.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Opacity(
                    opacity: 0.08,
                    child: Container(
                        height: 1.v,
                        width: 343.h,
                        decoration: BoxDecoration(
                            color:
                                theme.colorScheme.primary.withOpacity(0.38)))),
                SizedBox(height: 80.v),
                Opacity(
                    opacity: 0.08,
                    child: Container(
                        height: 1.v,
                        width: 343.h,
                        decoration: BoxDecoration(
                            color:
                                theme.colorScheme.primary.withOpacity(0.38)))),
                SizedBox(height: 80.v),
                Opacity(
                    opacity: 0.08,
                    child: Container(
                        height: 1.v,
                        width: 343.h,
                        decoration: BoxDecoration(
                            color:
                                theme.colorScheme.primary.withOpacity(0.38)))),
                SizedBox(height: 80.v),
                Opacity(
                    opacity: 0.08,
                    child: Container(
                        height: 1.v,
                        width: 343.h,
                        decoration: BoxDecoration(
                            color:
                                theme.colorScheme.primary.withOpacity(0.38))))
              ])),
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 17.v),
                  child: Row(children: [
                    CustomIconButton(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        decoration: IconButtonStyleHelper.fillBlueGrayTL24,
                        child: CustomImageView(
                            imagePath:
                                ImageConstant.imgPlaceHolderErrorcontainer)),
                    Expanded(
                        child: Container(
                            width: 263.h,
                            margin: EdgeInsets.only(
                                left: 11.h, top: 5.v, bottom: 2.v),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_amber_julia".tr,
                                      style: CustomTextStyles
                                          .titleSmallSemiBold_1),
                                  TextSpan(
                                      text: "lbl_loves_your".tr,
                                      style: theme.textTheme.titleSmall),
                                  TextSpan(
                                      text: "msg_comments_in_the".tr,
                                      style: theme.textTheme.bodyMedium),
                                  TextSpan(
                                      text: "msg_making_sense_of".tr,
                                      style: CustomTextStyles
                                          .titleSmallSemiBold_1),
                                  TextSpan(
                                      text: "lbl".tr,
                                      style: theme.textTheme.bodyMedium),
                                  TextSpan(text: " "),
                                  TextSpan(
                                      text: "lbl_yesterday".tr,
                                      style: theme.textTheme.labelLarge)
                                ]),
                                textAlign: TextAlign.left)))
                  ]))),
          Align(
              alignment: Alignment.centerLeft,
              child: Row(children: [
                CustomIconButton(
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    decoration: IconButtonStyleHelper.fillBlueGrayTL24,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgPlaceHolderErrorcontainer)),
                Container(
                    width: 229.h,
                    margin: EdgeInsets.only(left: 12.h, top: 4.v),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_daniela_marwa".tr,
                              style: CustomTextStyles.titleSmallSemiBold_1),
                          TextSpan(
                              text: "msg_started_following".tr,
                              style: theme.textTheme.bodyMedium),
                          TextSpan(
                              text: "lbl_07_00_am".tr,
                              style: theme.textTheme.labelLarge)
                        ]),
                        textAlign: TextAlign.left))
              ])),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(top: 17.v),
                  child: Row(children: [
                    CustomIconButton(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        decoration: IconButtonStyleHelper.fillBlueGrayTL24,
                        child: CustomImageView(
                            imagePath:
                                ImageConstant.imgPlaceHolderErrorcontainer)),
                    Container(
                        width: 218.h,
                        margin: EdgeInsets.only(left: 12.h, top: 5.v),
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_nicole_foster".tr,
                                  style: CustomTextStyles.titleSmallSemiBold_1),
                              TextSpan(
                                  text: "msg_started_following".tr,
                                  style: theme.textTheme.bodyMedium),
                              TextSpan(
                                  text: "lbl_08_00_am".tr,
                                  style: theme.textTheme.labelLarge)
                            ]),
                            textAlign: TextAlign.left))
                  ])))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
