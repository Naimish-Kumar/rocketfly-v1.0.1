import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/core/utils/validation_functions.dart';
import 'package:rocketfly/widgets/custom_checkbox_button.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/sign_in_screen_one_provider.dart';

class SignInScreenOneScreen extends StatefulWidget {
  const SignInScreenOneScreen({Key? key}) : super(key: key);

  @override
  SignInScreenOneScreenState createState() => SignInScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SignInScreenOneProvider(),
        child: SignInScreenOneScreen());
  }
}

// ignore_for_file: must_be_immutable
class SignInScreenOneScreenState extends State<SignInScreenOneScreen> {
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
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
            child: Column(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.centerLeft,
                  onTap: () {
                    onTapImgArrowLeft(context);
                  }),
              SizedBox(height: 45.v),
              Text("msg_login_to_your_account".tr,
                  style: CustomTextStyles.headlineLargeOnError_1),
              SizedBox(height: 26.v),
              Selector<SignInScreenOneProvider, TextEditingController?>(
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
                          if (value == null ||
                              (!isValidEmail(value, isRequired: true))) {
                            return "err_msg_please_enter_valid_email".tr;
                          }
                          return null;
                        },
                        borderDecoration: TextFormFieldStyleHelper.fillGray,
                        fillColor: appTheme.gray700);
                  }),
              SizedBox(height: 12.v),
              Consumer<SignInScreenOneProvider>(
                  builder: (context, provider, child) {
                return CustomTextFormField(
                    controller: provider.passwordController,
                    hintText: "lbl_password".tr,
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
              _buildRememberMeRow(context),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    NavigatorService.pushNamed(
                      AppRoutes.signUpScreenOneScreen
                    );
                  }
                },
                  text: "lbl_sign_in".tr,
                  buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                  buttonTextStyle: theme.textTheme.titleLarge!),
              SizedBox(height: 34.v),
              _buildOrStack(context),
              SizedBox(height: 26.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomIconButton(
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    padding: EdgeInsets.all(12.h),
                    decoration: IconButtonStyleHelper.outlineOnError,
                    child: CustomImageView(imagePath: ImageConstant.imgIcon)),
                Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: CustomIconButton(
                        height: 48.adaptSize,
                        width: 48.adaptSize,
                        padding: EdgeInsets.all(12.h),
                        decoration: IconButtonStyleHelper.outlineOnError,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgIconOnerror)))
              ]),
              Spacer(),
              SizedBox(height: 36.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "msg_don_t_have_an_account2".tr,
                        style: CustomTextStyles.titleMediumGray700_1),
                    TextSpan(
                        text: "lbl_sign_up".tr,
                        style: CustomTextStyles.titleMediumOnSecondaryContainer)
                  ]),
                  textAlign: TextAlign.left),
            SizedBox(height: 10.v,)
            ]),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRememberMeRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Selector<SignInScreenOneProvider, bool?>(
          selector: (context, provider) => provider.rememberMe,
          builder: (context, rememberMe, child) {
            return CustomCheckboxButton(
                text: "lbl_remember_me".tr,
                value: rememberMe,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  context.read<SignInScreenOneProvider>().changeCheckBox(value);
                });
          }),
      Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text("msg_forget_password".tr,
              style: CustomTextStyles.titleMediumOnSecondaryContainerSemiBold))
    ]);
  }

  /// Section Widget
  Widget _buildOrStack(BuildContext context) {
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
