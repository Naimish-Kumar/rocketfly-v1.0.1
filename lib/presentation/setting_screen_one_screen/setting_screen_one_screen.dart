import 'models/setting_screen_one_model.dart';import 'package:flutter/material.dart';import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'package:rocketfly/widgets/custom_switch.dart';import 'provider/setting_screen_one_provider.dart';class SettingScreenOneScreen extends StatefulWidget {const SettingScreenOneScreen({Key? key}) : super(key: key);

@override SettingScreenOneScreenState createState() =>  SettingScreenOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SettingScreenOneProvider(), child: SettingScreenOneScreen()); } 
 }
class SettingScreenOneScreenState extends State<SettingScreenOneScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 22.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v), child: Column(children: [_buildNotification(context, userIcon: ImageConstant.imgIcon38, notificationText: "lbl_payment".tr), SizedBox(height: 8.v), Container(padding: EdgeInsets.symmetric(vertical: 9.v), decoration: BoxDecoration(image: DecorationImage(image: fs.Svg(ImageConstant.imgGroup132), fit: BoxFit.cover)), child: Column(children: [_buildNotification(context, userIcon: ImageConstant.imgIcon39, notificationText: "lbl_notification".tr), SizedBox(height: 17.v), _buildNotification(context, userIcon: ImageConstant.imgIcon40, notificationText: "lbl_language".tr), SizedBox(height: 17.v), _buildNotification(context, userIcon: ImageConstant.imgIcon41, notificationText: "lbl_currency".tr), SizedBox(height: 17.v), _buildNotification(context, userIcon: ImageConstant.imgIcon42, notificationText: "lbl_about_us".tr), SizedBox(height: 17.v), _buildNotification(context, userIcon: ImageConstant.imgIcon43, notificationText: "lbl_privacy_policy".tr), SizedBox(height: 17.v), _buildNotification(context, userIcon: ImageConstant.imgIcon44, notificationText: "lbl_faqs".tr), SizedBox(height: 17.v), _buildNotification(context, userIcon: ImageConstant.imgIcon45, notificationText: "lbl_send_feedback".tr), SizedBox(height: 17.v), _buildNotification(context, userIcon: ImageConstant.imgIcon46, notificationText: "lbl_rate_us".tr), SizedBox(height: 17.v), _buildDarkMode(context), SizedBox(height: 17.v), _buildNotification(context, userIcon: ImageConstant.imgIcon48, notificationText: "lbl_invite_friends".tr)]))]))))])), bottomNavigationBar: Padding(padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v), child: _buildNotification(context, userIcon: ImageConstant.imgIcon49, notificationText: "lbl_logout".tr)))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 152.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftPrimary, onTap: () {onTapArrowLeft(context);}), AppbarSubtitle(text: "lbl_settings".tr, margin: EdgeInsets.only(left: 114.h, top: 2.v, bottom: 2.v))])), SizedBox(height: 10.v), Opacity(opacity: 0.08, child: Align(alignment: Alignment.centerLeft, child: SizedBox(width: double.maxFinite, child: Divider())))]), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildDarkMode(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildShape(context), Padding(padding: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 13.v), child: Text("lbl_dark_mode".tr, style: CustomTextStyles.titleMediumPrimary_1)), Spacer(), Selector<SettingScreenOneProvider, bool?>(selector: (context, provider) => provider.isSelectedSwitch, builder: (context, isSelectedSwitch, child) {return CustomSwitch(margin: EdgeInsets.symmetric(vertical: 12.v), value: isSelectedSwitch, onChange: (value) {context.read<SettingScreenOneProvider>().changeSwitchBox(value);});})]); } 
/// Common widget
Widget _buildNotification(BuildContext context, {required String userIcon, required String notificationText, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 48.adaptSize, width: 48.adaptSize, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgShapeYellow900, height: 48.adaptSize, width: 48.adaptSize, alignment: Alignment.center), CustomImageView(imagePath: userIcon, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center)])), Padding(padding: EdgeInsets.only(left: 16.h, top: 14.v, bottom: 13.v), child: Text(notificationText, style: CustomTextStyles.titleMediumPrimary_1.copyWith(color: theme.colorScheme.primary))), Spacer(), CustomImageView(imagePath: ImageConstant.imgArrowLeftPrimary, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.symmetric(vertical: 12.v))]); } 
/// Common widget
Widget _buildShape(BuildContext context) { return SizedBox(height: 48.adaptSize, width: 48.adaptSize, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgShapeYellow900, height: 48.adaptSize, width: 48.adaptSize, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgIcon47, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.center)])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }