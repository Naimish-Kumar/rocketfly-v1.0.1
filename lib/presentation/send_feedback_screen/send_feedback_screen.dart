import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/send_feedback_provider.dart';

class SendFeedbackScreen extends StatefulWidget {
  const SendFeedbackScreen({Key? key}) : super(key: key);

  @override
  SendFeedbackScreenState createState() => SendFeedbackScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SendFeedbackProvider(),
        child: SendFeedbackScreen());
  }
}

class SendFeedbackScreenState extends State<SendFeedbackScreen> {
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
                          style: CustomTextStyles.titleMediumGray700_2
                              .copyWith(height: 1.50))),
                  SizedBox(height: 21.v),
                  Selector<SendFeedbackProvider, TextEditingController?>(
                      selector: (context, provider) =>
                          provider.writeFeedbackController,
                      builder: (context, writeFeedbackController, child) {
                        return CustomTextFormField(
                            controller: writeFeedbackController,
                            hintText: "lbl_write_feedback".tr,
                            hintStyle: CustomTextStyles.bodyLargeGray700,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                                margin: EdgeInsets.all(12.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgIcon23,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            prefixConstraints: BoxConstraints(maxHeight: 48.v),
                            borderDecoration: TextFormFieldStyleHelper.fillGray,
                            fillColor: appTheme.gray700);
                      }),
                  SizedBox(height: 32.v),
                  CustomElevatedButton(
                      text: "lbl_submit".tr,
                      buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                      buttonTextStyle: theme.textTheme.titleLarge!),
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
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_feedback".tr,
                    margin: EdgeInsets.only(left: 109.h, bottom: 4.v))
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

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
