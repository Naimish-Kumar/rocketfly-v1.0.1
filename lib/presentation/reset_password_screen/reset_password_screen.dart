import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/core/utils/validation_functions.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/reset_password_provider.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  ResetPasswordScreenState createState() => ResetPasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ResetPasswordProvider(),
        child: ResetPasswordScreen());
  }
}

// ignore_for_file: must_be_immutable
class ResetPasswordScreenState extends State<ResetPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 25.v),
            child: Column(children: [
              Text("msg_enter_new_password".tr,
                  style: CustomTextStyles.titleMediumGray700_2),
              SizedBox(height: 32.v),
              Consumer<ResetPasswordProvider>(
                  builder: (context, provider, child) {
                return CustomTextFormField(
                    controller: provider.passwordController,
                    hintText: "lbl_password".tr,
                    hintStyle: CustomTextStyles.bodyLargeGray700,
                    textInputType: TextInputType.visiblePassword,
                    prefix: Container(
                        margin: EdgeInsets.all(12.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgIcon24x24,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    prefixConstraints: BoxConstraints(maxHeight: 48.v),
                    suffix: InkWell(
                        onTap: () {
                          provider.changePasswordVisibility();
                        },
                        child: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgButtonView,
                                height: 24.adaptSize,
                                width: 24.adaptSize))),
                    suffixConstraints: BoxConstraints(maxHeight: 48.v),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_password".tr;
                      }
                      return null;
                    },
                    obscureText: provider.isShowPassword,
                    contentPadding: EdgeInsets.symmetric(vertical: 13.v),
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                    fillColor: appTheme.gray700);
              }),
              SizedBox(height: 16.v),
              Consumer<ResetPasswordProvider>(
                  builder: (context, provider, child) {
                return CustomTextFormField(
                    controller: provider.confirmpasswordController,
                    hintText: "msg_confirm_password".tr,
                    hintStyle: CustomTextStyles.bodyLargeGray700,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    prefix: Container(
                        margin: EdgeInsets.all(12.h),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgIcon24x24,
                            height: 24.adaptSize,
                            width: 24.adaptSize)),
                    prefixConstraints: BoxConstraints(maxHeight: 48.v),
                    suffix: InkWell(
                        onTap: () {
                          provider.changePasswordVisibility1();
                        },
                        child: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgButtonView,
                                height: 24.adaptSize,
                                width: 24.adaptSize))),
                    suffixConstraints: BoxConstraints(maxHeight: 48.v),
                    validator: (value) {
                      if (value == null ||
                          (!isValidPassword(value, isRequired: true))) {
                        return "err_msg_please_enter_valid_password".tr;
                      }
                      return null;
                    },
                    obscureText: provider.isShowPassword1,
                    contentPadding: EdgeInsets.symmetric(vertical: 13.v),
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                    fillColor: appTheme.gray700);
              }),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                onPressed: (){
                  if (_formKey.currentState!.validate()) {

                    Navigator.pushNamed(context, AppRoutes.preferredLanguageScreen);
                  }
                },
                  text: "lbl_change_password".tr,
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
              padding: EdgeInsets.only(left: 16.h, right: 122.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitleTwo(
                    text: "lbl_reset_password".tr,
                    margin: EdgeInsets.only(left: 83.h, bottom: 4.v))
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
