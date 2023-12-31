import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/single_chat_provider.dart';

class SingleChatScreen extends StatefulWidget {
  const SingleChatScreen({Key? key}) : super(key: key);

  @override
  SingleChatScreenState createState() => SingleChatScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SingleChatProvider(), child: SingleChatScreen());
  }
}

class SingleChatScreenState extends State<SingleChatScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              height: 52.v,
                              width: 57.h,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 36.v,
                                            width: 57.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.yellow900,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(8.h),
                                                    topRight:
                                                        Radius.circular(8.h),
                                                    bottomLeft: Radius.circular(
                                                        8.h))))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 4.h),
                                                  child: Text("lbl_hey".tr,
                                                      style: CustomTextStyles
                                                          .bodyMediumOnPrimaryContainer)),
                                              SizedBox(height: 12.v),
                                              Text("lbl_09_00_am".tr,
                                                  style: CustomTextStyles
                                                      .labelMediumErrorContainer_1)
                                            ]))
                                  ]))),
                      SizedBox(height: 15.v),
                      SizedBox(
                          height: 52.v,
                          width: 148.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Opacity(
                                opacity: 0.24,
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: 36.v,
                                        width: 148.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.yellow900
                                                .withOpacity(0.44),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8.h),
                                                topRight: Radius.circular(8.h),
                                                bottomRight:
                                                    Radius.circular(8.h)))))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Text("msg_hey_how_are_you".tr,
                                              style:
                                                  theme.textTheme.bodyMedium)),
                                      SizedBox(height: 12.v),
                                      Text("lbl_09_02_am".tr,
                                          style: CustomTextStyles
                                              .labelMediumErrorContainer_1)
                                    ]))
                          ])),
                      SizedBox(height: 15.v),
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              height: 70.v,
                              width: 279.h,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            height: 54.v,
                                            width: 279.h,
                                            decoration: BoxDecoration(
                                                color: appTheme.yellow900,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(8.h),
                                                    topRight:
                                                        Radius.circular(8.h),
                                                    bottomLeft: Radius.circular(
                                                        8.h))))),
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  width: 224.h,
                                                  child: Text(
                                                      "msg_gm_how_was_your".tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: CustomTextStyles
                                                          .bodyMediumOnPrimaryContainer
                                                          .copyWith(
                                                              height: 1.29))),
                                              SizedBox(height: 13.v),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Text("lbl_09_12_am".tr,
                                                      style: CustomTextStyles
                                                          .labelMediumErrorContainer_1))
                                            ]))
                                  ]))),
                      SizedBox(height: 15.v),
                      SizedBox(
                          height: 70.v,
                          width: 279.h,
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Opacity(
                                opacity: 0.24,
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        height: 54.v,
                                        width: 279.h,
                                        decoration: BoxDecoration(
                                            color: appTheme.yellow900
                                                .withOpacity(0.44),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(8.h),
                                                topRight: Radius.circular(8.h),
                                                bottomRight:
                                                    Radius.circular(8.h)))))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: SizedBox(
                                              width: 235.h,
                                              child: Text(
                                                  "msg_yes_i_m_still_finishing"
                                                      .tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodyMedium!
                                                      .copyWith(
                                                          height: 1.29)))),
                                      SizedBox(height: 11.v),
                                      Text("lbl_09_18_am".tr,
                                          style: CustomTextStyles
                                              .labelMediumErrorContainer_1)
                                    ]))
                          ])),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildInputField(context)));
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
                    text: "lbl_jenny_wilona".tr,
                    margin: EdgeInsets.only(left: 92.h, top: 2.v, bottom: 2.v)),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgButtonMorePrimary,
                    margin: EdgeInsets.only(left: 91.h))
              ])),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillYellow,
              child: CustomImageView(imagePath: ImageConstant.imgButtonAdd)),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Selector<SingleChatProvider, TextEditingController?>(
                  selector: (context, provider) =>
                      provider.inputFieldController,
                  builder: (context, inputFieldController, child) {
                    return CustomTextFormField(
                        width: 223.h,
                        controller: inputFieldController,
                        hintText: "lbl_write_here".tr,
                        hintStyle: CustomTextStyles.bodyLarge16,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgButtonRecord,
                                height: 24.adaptSize,
                                width: 24.adaptSize)),
                        suffixConstraints: BoxConstraints(maxHeight: 48.v),
                        contentPadding: EdgeInsets.only(
                            left: 12.h, top: 14.v, bottom: 14.v));
                  })),
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  decoration: IconButtonStyleHelper.fillPrimaryTL8,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgButtonSend)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
