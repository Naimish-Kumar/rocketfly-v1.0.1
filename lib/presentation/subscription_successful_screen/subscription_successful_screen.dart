import 'models/subscription_successful_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'package:rocketfly/widgets/custom_elevated_button.dart';import 'provider/subscription_successful_provider.dart';class SubscriptionSuccessfulScreen extends StatefulWidget {const SubscriptionSuccessfulScreen({Key? key}) : super(key: key);

@override SubscriptionSuccessfulScreenState createState() =>  SubscriptionSuccessfulScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SubscriptionSuccessfulProvider(), child: SubscriptionSuccessfulScreen()); } 
 }
class SubscriptionSuccessfulScreenState extends State<SubscriptionSuccessfulScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v), child: Column(children: [CustomImageView(imagePath: ImageConstant.imgMaskGroup11, height: 343.adaptSize, width: 343.adaptSize), SizedBox(height: 27.v), Text("msg_congratulations".tr, style: CustomTextStyles.headlineLargeOnError_1), SizedBox(height: 20.v), Container(width: 323.h, margin: EdgeInsets.only(left: 9.h, right: 10.h), child: Text("msg_you_have_successfully".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: CustomTextStyles.titleMediumGray700_2.copyWith(height: 1.50))), SizedBox(height: 5.v)])), bottomNavigationBar: _buildGoToCourse(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 131.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeft, onTap: () {onTapArrowLeft(context);}), AppbarSubtitleTwo(text: "lbl_confirmation".tr, margin: EdgeInsets.only(left: 93.h, bottom: 4.v))])), SizedBox(height: 10.v), Opacity(opacity: 0.08, child: Align(alignment: Alignment.centerLeft, child: SizedBox(width: double.maxFinite, child: Divider(color: theme.colorScheme.onError))))]), styleType: Style.bgFill); } 
/// Section Widget
Widget _buildGoToCourse(BuildContext context) { return CustomElevatedButton(text: "lbl_go_to_course".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), buttonStyle: CustomButtonStyles.fillDeepPurpleA, buttonTextStyle: theme.textTheme.titleLarge!); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
