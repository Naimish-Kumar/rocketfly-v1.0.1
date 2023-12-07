import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'package:rocketfly/widgets/custom_elevated_button.dart';import 'provider/payment_successful_provider.dart';class PaymentSuccessfulScreen extends StatefulWidget {const PaymentSuccessfulScreen({Key? key}) : super(key: key);

@override PaymentSuccessfulScreenState createState() =>  PaymentSuccessfulScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => PaymentSuccessfulProvider(), child: PaymentSuccessfulScreen()); } 
 }
class PaymentSuccessfulScreenState extends State<PaymentSuccessfulScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v), child: Column(children: [_buildImagePlaceHolder(context), SizedBox(height: 27.v), Text("msg_congratulations".tr, style: theme.textTheme.headlineLarge), SizedBox(height: 20.v), Container(width: 291.h, margin: EdgeInsets.only(left: 25.h, right: 26.h), child: Text("msg_you_have_successfully2".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.titleMedium!.copyWith(height: 1.50))), SizedBox(height: 5.v)])), bottomNavigationBar: _buildGoToCourse(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 131.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftPrimary, onTap: () {onTapArrowLeft(context);}), AppbarSubtitle(text: "lbl_confirmation".tr, margin: EdgeInsets.only(left: 93.h, bottom: 4.v))])), SizedBox(height: 10.v), Opacity(opacity: 0.08, child: Align(alignment: Alignment.centerLeft, child: SizedBox(width: double.maxFinite, child: Divider())))]), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildImagePlaceHolder(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 152.v), decoration: AppDecoration.fillBlueGray, child: Opacity(opacity: 0.3, child: CustomImageView(imagePath: ImageConstant.imgPlaceHolderErrorcontainer38x299, height: 38.v, width: 299.h))); } 
/// Section Widget
Widget _buildGoToCourse(BuildContext context) { return CustomElevatedButton(text: "lbl_go_to_course".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
