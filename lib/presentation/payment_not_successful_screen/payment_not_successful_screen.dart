import 'models/payment_not_successful_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'package:rocketfly/widgets/custom_elevated_button.dart';import 'provider/payment_not_successful_provider.dart';class PaymentNotSuccessfulScreen extends StatefulWidget {const PaymentNotSuccessfulScreen({Key? key}) : super(key: key);

@override PaymentNotSuccessfulScreenState createState() =>  PaymentNotSuccessfulScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PaymentNotSuccessfulProvider(), child: PaymentNotSuccessfulScreen()); } 
 }
class PaymentNotSuccessfulScreenState extends State<PaymentNotSuccessfulScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v), child: Column(children: [_buildImagePlaceHolder(context), SizedBox(height: 27.v), Text("msg_something_wrong".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 22.v), Text("msg_please_try_again2".tr, style: theme.textTheme.titleMedium), SizedBox(height: 5.v)])), bottomNavigationBar: _buildTryAgain(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 166.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftPrimary, onTap: () {onTapArrowLeft(context);}), AppbarSubtitle(text: "lbl_alert".tr, margin: EdgeInsets.only(left: 128.h, bottom: 4.v))])), SizedBox(height: 10.v), Opacity(opacity: 0.08, child: Align(alignment: Alignment.centerLeft, child: SizedBox(width: double.maxFinite, child: Divider())))]), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildImagePlaceHolder(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 152.v), decoration: AppDecoration.fillBlueGray, child: Opacity(opacity: 0.3, child: CustomImageView(imagePath: ImageConstant.imgPlaceHolderErrorcontainer38x299, height: 38.v, width: 299.h))); } 
/// Section Widget
Widget _buildTryAgain(BuildContext context) { return CustomElevatedButton(text: "lbl_try_again".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
