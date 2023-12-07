import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/core/utils/validation_functions.dart';
import 'package:rocketfly/widgets/custom_checkbox_button.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/sign_up_screen_one_provider.dart';

class SignUpScreenOneScreen extends StatefulWidget {
  const SignUpScreenOneScreen({Key? key}) : super(key: key);

  @override
  SignUpScreenOneScreenState createState() => SignUpScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignUpScreenOneProvider(),
        child: SignUpScreenOneScreen());
  }
}

// ignore_for_file: must_be_immutable
class SignUpScreenOneScreenState extends State<SignUpScreenOneScreen> {
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
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowLeft,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.centerLeft,
                            onTap: () {
                              onTapImgArrowLeft(context);
                            }),
                        SizedBox(height: 42.v),
                        Text("msg_create_your_account".tr,
                            style: CustomTextStyles.headlineLargeOnError_1),
                        SizedBox(height: 29.v),
                        _buildName(context),
                        SizedBox(height: 12.v),
                        _buildEmail(context),
                        SizedBox(height: 12.v),
                        _buildMobileNumber(context),
                        SizedBox(height: 12.v),
                        _buildPassword(context),
                        SizedBox(height: 12.v),
                        _buildConfirmpassword(context),
                        SizedBox(height: 16.v),
                        _buildRememberMe(context),
                        SizedBox(height: 32.v),
                        _buildSignUp(context),
                        SizedBox(height: 34.v),
                        _buildOR(context),
                        SizedBox(height: 26.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomIconButton(
                                  height: 48.adaptSize,
                                  width: 48.adaptSize,
                                  padding: EdgeInsets.all(12.h),
                                  decoration:
                                      IconButtonStyleHelper.outlineOnError,
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgIcon)),
                              Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: CustomIconButton(
                                      height: 48.adaptSize,
                                      width: 48.adaptSize,
                                      padding: EdgeInsets.all(12.h),
                                      decoration:
                                          IconButtonStyleHelper.outlineOnError,
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgIconOnerror)))
                            ]),
                        SizedBox(height: 28.v),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_already".tr,
                                  style: CustomTextStyles.titleMediumGray700_1),
                              TextSpan(
                                  text: "msg_have_an_account".tr,
                                  style: CustomTextStyles.titleMediumGray700_1),
                              TextSpan(
                                  text: "lbl_sign_in2".tr,
                                  style: CustomTextStyles
                                      .titleMediumOnSecondaryContainer)
                            ]),
                            textAlign: TextAlign.left),
                        SizedBox(height: 5.v)
                      ]),
                    )))));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Selector<SignUpScreenOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.nameController,
        builder: (context, nameController, child) {
          return CustomTextFormField(
              controller: nameController,
              hintText: "lbl_your_name".tr,
              hintStyle: CustomTextStyles.bodyLargeGray700,
              prefix: Container(
                  margin: EdgeInsets.all(12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIcon2,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              },
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray700);
        });
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Selector<SignUpScreenOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.emailController,
        builder: (context, emailController, child) {
          return CustomTextFormField(
              controller: emailController,
              hintText: "lbl_email".tr,
              hintStyle: CustomTextStyles.bodyLargeGray700,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                  margin: EdgeInsets.all(12.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIconOnerror24x24,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray700);
        });
  }

  /// Section Widget
  Widget _buildMobileNumber(BuildContext context) {
    return Selector<SignUpScreenOneProvider, TextEditingController?>(
        selector: (context, provider) => provider.mobileNumberController,
        builder: (context, mobileNumberController, child) {
          return CustomTextFormField(
              controller: mobileNumberController,
              hintText: "msg_enter_mobile_number".tr,
              hintStyle: CustomTextStyles.bodyLargeGray700,
              textInputType: TextInputType.phone,
              prefix: Padding(
                padding: EdgeInsets.fromLTRB(12.h, 12.v, 30.h, 12.v),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // CustomImageView(
                    //     imagePath: ImageConstant.img0046,
                    //     height: 16.74.v,
                    //     width: 28.h),
                    // CustomImageView(
                    //     imagePath: ImageConstant.img0047,
                    //     height: 24.adaptSize,
                    //     width: 24.adaptSize,
                    //     margin: EdgeInsets.fromLTRB(30.h, 12.v, -16.h, 12.v))
                  ],
                ),
              ),
              prefixConstraints: BoxConstraints(maxHeight: 48.v),
              validator: (value) {
                if (!isValidPhone(value)) {
                  return "err_msg_please_enter_valid_phone_number".tr;
                }
                return null;
              },
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray700);
        });
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Consumer<SignUpScreenOneProvider>(
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
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword,
          contentPadding: EdgeInsets.symmetric(vertical: 13.v),
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          fillColor: appTheme.gray700);
    });
  }

  /// Section Widget
  Widget _buildConfirmpassword(BuildContext context) {
    return Consumer<SignUpScreenOneProvider>(
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
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
          obscureText: provider.isShowPassword1,
          contentPadding: EdgeInsets.symmetric(vertical: 13.v),
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          fillColor: appTheme.gray700);
    });
  }

  /// Section Widget
  Widget _buildRememberMe(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Selector<SignUpScreenOneProvider, bool?>(
            selector: (context, provider) => provider.rememberMe,
            builder: (context, rememberMe, child) {
              return CustomCheckboxButton(
                  alignment: Alignment.centerLeft,
                  text: "lbl_remember_me".tr,
                  value: rememberMe,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    context
                        .read<SignUpScreenOneProvider>()
                        .changeCheckBox(value);
                  });
            }));
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      onPressed: (){
        if (_formKey.currentState!.validate()) {
          NavigatorService.pushNamed(
            AppRoutes.forgetPasswordScreenOneScreen
          );
        }
      },
        text: "lbl_sign_up2".tr,
        buttonStyle: CustomButtonStyles.fillDeepPurpleA,
        buttonTextStyle: theme.textTheme.titleLarge!);
  }

  /// Section Widget
  Widget _buildOR(BuildContext context) {
    return SizedBox(
        height: 20.v,
        width: 343.h,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgShapeOnerror,
              height: 2.v,
              width: 343.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.center,
              child: Text("msg_or_continue_with".tr,
                  style: CustomTextStyles.titleMediumGray700_2))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
