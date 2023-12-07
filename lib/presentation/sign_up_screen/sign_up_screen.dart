import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/core/utils/validation_functions.dart';
import 'package:rocketfly/widgets/custom_checkbox_button.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/sign_up_provider.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  SignUpScreenState createState() => SignUpScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignUpProvider(), child: SignUpScreen());
  }
}

// ignore_for_file: must_be_immutable
class SignUpScreenState extends State<SignUpScreen> {
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
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgArrowLeftPrimary,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowLeft(context);
                          }),
                      SizedBox(height: 42.v),
                      Text("msg_create_your_account".tr,
                          style: theme.textTheme.headlineLarge),
                      SizedBox(height: 29.v),
                      _buildNameEditText(context),
                      SizedBox(height: 12.v),
                      _buildEmailEditText(context),
                      SizedBox(height: 12.v),
                      _buildMobileNumberEditText(context),
                      SizedBox(height: 12.v),
                      _buildPasswordEditText(context),
                      SizedBox(height: 12.v),
                      _buildConfirmpasswordEditText(context),
                      SizedBox(height: 16.v),
                      _buildRememberMeCheckBox(context),
                      SizedBox(height: 32.v),
                      _buildSignUpButton(context),
                      SizedBox(height: 34.v),
                      _buildORStack(context),
                      SizedBox(height: 25.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomIconButton(
                                height: 48.adaptSize,
                                width: 48.adaptSize,
                                padding: EdgeInsets.all(12.h),
                                decoration:
                                    IconButtonStyleHelper.outlinePrimary,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgIconBlueA400)),
                            Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: CustomIconButton(
                                    height: 48.adaptSize,
                                    width: 48.adaptSize,
                                    padding: EdgeInsets.all(12.h),
                                    decoration:
                                        IconButtonStyleHelper.outlinePrimary,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgIcon))),
                            Padding(
                                padding: EdgeInsets.only(left: 24.h),
                                child: CustomIconButton(
                                    height: 48.adaptSize,
                                    width: 48.adaptSize,
                                    padding: EdgeInsets.all(12.h),
                                    decoration:
                                        IconButtonStyleHelper.outlinePrimary,
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgIcon25)))
                          ]),
                      SizedBox(height: 29.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "lbl_already".tr,
                                style: theme.textTheme.titleMedium),
                            TextSpan(
                                text: "msg_have_an_account".tr,
                                style: theme.textTheme.titleMedium),
                            TextSpan(
                                text: "lbl_sign_in2".tr,
                                style:
                                    CustomTextStyles.titleMediumPrimarySemiBold)
                          ]),
                          textAlign: TextAlign.left),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return Selector<SignUpProvider, TextEditingController?>(
        selector: (context, provider) => provider.nameEditTextController,
        builder: (context, nameEditTextController, child) {
          return CustomTextFormField(
              controller: nameEditTextController,
              hintText: "lbl_your_name".tr,
              hintStyle: theme.textTheme.bodyLarge!,
              prefix: Container(
                  margin: EdgeInsets.all(12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcon29,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return Selector<SignUpProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailEditTextController,
        builder: (context, emailEditTextController, child) {
          return CustomTextFormField(
              controller: emailEditTextController,
              hintText: "lbl_email".tr,
              hintStyle: theme.textTheme.bodyLarge!,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                  margin: EdgeInsets.all(12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcon26,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildMobileNumberEditText(BuildContext context) {
    return Selector<SignUpProvider, TextEditingController?>(
        selector: (context, provider) =>
            provider.mobileNumberEditTextController,
        builder: (context, mobileNumberEditTextController, child) {
          return CustomTextFormField(
              controller: mobileNumberEditTextController,
              hintText: "msg_enter_mobile_number".tr,
              hintStyle: theme.textTheme.bodyLarge!,
              textInputType: TextInputType.phone,
              prefix: Padding(
                  padding: EdgeInsets.fromLTRB(12.h, 12.v, 30.h, 12.v),
                  child: Row(mainAxisSize: MainAxisSize.min, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: 20.v,
                        width: 28.h,
                        radius: BorderRadius.circular(2.h)),
                    CustomImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.fromLTRB(30.h, 12.v, -16.h, 12.v))
                  ])),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return Consumer<SignUpProvider>(builder: (context, provider, child) {
      return CustomTextFormField(
          controller: provider.passwordEditTextController,
          hintText: "lbl_password".tr,
          hintStyle: theme.textTheme.bodyLarge!,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.all(12.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgIcon27,
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
                      imagePath: ImageConstant.imgButtonViewErrorcontainer,
                      height: 24.adaptSize,
                      width: 24.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword,
          contentPadding: EdgeInsets.symmetric(vertical: 13.v));
    });
  }

  /// Section Widget
  Widget _buildConfirmpasswordEditText(BuildContext context) {
    return Consumer<SignUpProvider>(builder: (context, provider, child) {
      return CustomTextFormField(
          controller: provider.confirmpasswordEditTextController,
          hintText: "msg_confirm_password".tr,
          hintStyle: theme.textTheme.bodyLarge!,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          prefix: Container(
              margin: EdgeInsets.all(12.h),
              child: CustomImageView(
                  imagePath: ImageConstant.imgIcon27,
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
                      imagePath: ImageConstant.imgButtonViewErrorcontainer,
                      height: 24.adaptSize,
                      width: 24.adaptSize))),
          suffixConstraints: BoxConstraints(maxHeight: 48.v),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword1,
          contentPadding: EdgeInsets.symmetric(vertical: 13.v));
    });
  }

  /// Section Widget
  Widget _buildRememberMeCheckBox(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Selector<SignUpProvider, bool?>(
            selector: (context, provider) => provider.rememberMeCheckBox,
            builder: (context, rememberMeCheckBox, child) {
              return CustomCheckboxButton(
                  alignment: Alignment.centerLeft,
                  text: "lbl_remember_me".tr,
                  value: rememberMeCheckBox,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  textStyle: theme.textTheme.titleMedium,
                  onChange: (value) {
                    context.read<SignUpProvider>().changeCheckBox(value);
                  });
            }));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(text: "lbl_sign_up2".tr);
  }

  /// Section Widget
  Widget _buildORStack(BuildContext context) {
    return SizedBox(
        height: 20.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgShapePrimary,
              height: 2.v,
              width: 343.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Text("msg_or_continue_with".tr,
                  style: theme.textTheme.titleMedium))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
