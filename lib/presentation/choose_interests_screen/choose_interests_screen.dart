import '../choose_interests_screen/widgets/chooseinterests_item_widget.dart';import 'models/choose_interests_model.dart';import 'models/chooseinterests_item_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle_three.dart';import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'package:rocketfly/widgets/custom_elevated_button.dart';import 'provider/choose_interests_provider.dart';class ChooseInterestsScreen extends StatefulWidget {const ChooseInterestsScreen({Key? key}) : super(key: key);

@override ChooseInterestsScreenState createState() =>  ChooseInterestsScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => ChooseInterestsProvider(), child: ChooseInterestsScreen()); } 
 }
class ChooseInterestsScreenState extends State<ChooseInterestsScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v), child: Column(children: [Container(width: 314.h, margin: EdgeInsets.only(left: 13.h, right: 14.h), child: Text("msg_choose_3_or_more".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.titleMedium!.copyWith(height: 1.50))), SizedBox(height: 29.v), _buildChooseInterests(context), SizedBox(height: 5.v)])), bottomNavigationBar: _buildNext(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftPrimary, onTap: () {onTapArrowLeft(context);}), AppbarSubtitle(text: "msg_choose_interests".tr, margin: EdgeInsets.only(left: 79.h, bottom: 5.v)), AppbarSubtitleThree(text: "lbl_skip".tr, margin: EdgeInsets.only(left: 67.h, top: 2.v))])), SizedBox(height: 9.v), Opacity(opacity: 0.08, child: SizedBox(width: double.maxFinite, child: Divider()))]), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildChooseInterests(BuildContext context) { return Consumer<ChooseInterestsProvider>(builder: (context, provider, child) {return Wrap(runSpacing: 16.v, spacing: 16.h, children: List<Widget>.generate(provider.chooseInterestsModelObj.chooseinterestsItemList.length, (index) {ChooseinterestsItemModel model = provider.chooseInterestsModelObj.chooseinterestsItemList[index]; return ChooseinterestsItemWidget(model, onSelectedChipView: (value) {provider.onSelectedChipView(index, value);});}));}); } 
/// Section Widget
Widget _buildNext(BuildContext context) { return CustomElevatedButton(text: "lbl_next".tr, margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
