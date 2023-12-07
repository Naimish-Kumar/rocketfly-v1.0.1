import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/send_feedback_screen_one_provider.dart';

class SendFeedbackScreenOneScreen extends StatefulWidget {
  const SendFeedbackScreenOneScreen({Key? key}) : super(key: key);

  @override
  SendFeedbackScreenOneScreenState createState() =>
      SendFeedbackScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SendFeedbackScreenOneProvider(),
        child: SendFeedbackScreenOneScreen());
  }
}

class SendFeedbackScreenOneScreenState
    extends State<SendFeedbackScreenOneScreen> {
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
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                child: Column(children: [
                  Container(
                      width: 335.h,
                      margin: EdgeInsets.only(left: 3.h, right: 4.h),
                      child: Text("msg_tell_us_what_you".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium!
                              .copyWith(height: 1.50))),
                  SizedBox(height: 21.v),
                  Selector<SendFeedbackScreenOneProvider,
                          TextEditingController?>(
                      selector: (context, provider) =>
                          provider.writeFeedbackController,
                      builder: (context, writeFeedbackController, child) {
                        return CustomTextFormField(
                            controller: writeFeedbackController,
                            hintText: "lbl_write_feedback".tr,
                            hintStyle: theme.textTheme.bodyLarge!,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                                margin: EdgeInsets.all(12.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgIcon53,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            prefixConstraints: BoxConstraints(maxHeight: 48.v));
                      }),
                  SizedBox(height: 32.v),
                  CustomElevatedButton(text: "lbl_submit".tr),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 148.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_feedback".tr,
                    margin: EdgeInsets.only(left: 109.h, bottom: 4.v))
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
