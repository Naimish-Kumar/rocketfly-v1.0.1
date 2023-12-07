import 'models/let_s_you_in_screen_one_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/custom_elevated_button.dart';import 'package:rocketfly/widgets/custom_outlined_button.dart';import 'provider/let_s_you_in_screen_one_provider.dart';class LetSYouInScreenOneScreen extends StatefulWidget {const LetSYouInScreenOneScreen({Key? key}) : super(key: key);

@override LetSYouInScreenOneScreenState createState() =>  LetSYouInScreenOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => LetSYouInScreenOneProvider(), child: LetSYouInScreenOneScreen()); } 
 }
class LetSYouInScreenOneScreenState extends State<LetSYouInScreenOneScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgArrowLeftPrimary, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.centerLeft, onTap: () {onTapImgArrowLeft(context);}), SizedBox(height: 32.v), _buildImagePlaceholderSection(context), SizedBox(height: 32.v), Text("lbl_let_s_you_in".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 29.v), _buildContinueWithFacebookButtonSection(context), SizedBox(height: 12.v), _buildContinueWithGoogleButtonSection(context), SizedBox(height: 12.v), _buildContinueWithAppleButtonSection(context), SizedBox(height: 27.v), _buildOrSection(context), SizedBox(height: 24.v), _buildSignInWithPasswordButtonSection(context), SizedBox(height: 25.v), RichText(text: TextSpan(children: [TextSpan(text: "msg_don_t_have_an_account2".tr, style: theme.textTheme.titleMedium), TextSpan(text: "lbl_sign_up".tr, style: CustomTextStyles.titleMediumPrimarySemiBold)]), textAlign: TextAlign.left), SizedBox(height: 5.v)])))); } 
/// Section Widget
Widget _buildImagePlaceholderSection(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 96.v), decoration: AppDecoration.fillBlueGray, child: Opacity(opacity: 0.3, child: CustomImageView(imagePath: ImageConstant.imgPlaceHolderErrorcontainer38x299, height: 38.v, width: 299.h))); } 
/// Section Widget
Widget _buildContinueWithFacebookButtonSection(BuildContext context) { return CustomOutlinedButton(text: "msg_continue_with_facebook".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgIconBlueA400, height: 24.adaptSize, width: 24.adaptSize))); } 
/// Section Widget
Widget _buildContinueWithGoogleButtonSection(BuildContext context) { return CustomOutlinedButton(text: "msg_continue_with_google".tr, leftIcon: Container(margin: EdgeInsets.only(right: 8.h), child: CustomImageView(imagePath: ImageConstant.imgIcon, height: 24.adaptSize, width: 24.adaptSize))); } 
/// Section Widget
Widget _buildContinueWithAppleButtonSection(BuildContext context) { return CustomOutlinedButton(text: "msg_continue_with_apple".tr, leftIcon: Container(margin: EdgeInsets.only(right: 7.h), child: CustomImageView(imagePath: ImageConstant.imgIcon25, height: 24.adaptSize, width: 24.adaptSize))); } 
/// Section Widget
Widget _buildOrSection(BuildContext context) { return SizedBox(height: 20.v, width: 343.h, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgShapePrimary, height: 2.v, width: 343.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 7.v)), Align(alignment: Alignment.center, child: Text("lbl_or".tr, style: theme.textTheme.titleMedium))])); } 
/// Section Widget
Widget _buildSignInWithPasswordButtonSection(BuildContext context) { return CustomElevatedButton(text: "msg_sign_in_with_password".tr); } 

/// Navigates to the previous screen.
onTapImgArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
