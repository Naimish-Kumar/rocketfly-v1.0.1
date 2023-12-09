import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/core/utils/validation_functions.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/forget_password_screen_one_provider.dart';

class ForgetPasswordScreenOneScreen extends StatefulWidget {
  const ForgetPasswordScreenOneScreen({Key? key}) : super(key: key);

  @override
  ForgetPasswordScreenOneScreenState createState() =>
      ForgetPasswordScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ForgetPasswordScreenOneProvider(),
        child: ForgetPasswordScreenOneScreen());
  }
}

// ignore_for_file: must_be_immutable
class ForgetPasswordScreenOneScreenState
    extends State<ForgetPasswordScreenOneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
            child: SafeArea(
              child: Column(children: [
                Container(
                    width: 331.h,
                    margin: EdgeInsets.only(left: 6.h, right: 5.h),
                    child: Text("msg_enter_the_email".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleMediumGray700_2
                            .copyWith(height: 1.50))),
                SizedBox(height: 29.v),
                Selector<ForgetPasswordScreenOneProvider, TextEditingController?>(
                    selector: (context, provider) => provider.passwordController,
                    builder: (context, passwordController, child) {
                      return CustomTextFormField(
                          controller: passwordController,
                          hintText: "lbl_email".tr,
                          hintStyle: CustomTextStyles.bodyLargeGray700,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: EdgeInsets.all(12.h),
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgIconOnerror24x24,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize)),
                          prefixConstraints: BoxConstraints(maxHeight: 48.v),
                          validator: (value) {
                            if (value == null ||
                                (!isValidEmail(value, isRequired: true))) {
                              return "err_msg_please_enter_valid_email".tr;
                            }
                            return null;
                          },
                          borderDecoration: TextFormFieldStyleHelper.fillGray,
                          fillColor: appTheme.gray700);
                    }),
                SizedBox(height: 32.v),
                CustomElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      Navigator.pushNamed(context,AppRoutes.verifyPhoneNumberScreenOneScreen);
                    }
                  },
                    text: "lbl_send_email".tr,
                    buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                    buttonTextStyle: theme.textTheme.titleLarge!),
                SizedBox(height: 5.v)
              ]),
            ),
          ),
        ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 118.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_forget_password".tr,
                    margin: EdgeInsets.only(left: 79.h, top: 2.v, bottom: 2.v))
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
