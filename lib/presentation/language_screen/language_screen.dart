import '../language_screen/widgets/languagelist_item_widget.dart';import 'models/languagelist_item_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'provider/language_provider.dart';class LanguageScreen extends StatefulWidget {const LanguageScreen({Key? key}) : super(key: key);

@override LanguageScreenState createState() =>  LanguageScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => LanguageProvider(), child: LanguageScreen()); } 
 }
class LanguageScreenState extends State<LanguageScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 16.h, top: 22.v, right: 16.h), child: Consumer<LanguageProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 9.v);}, itemCount: provider.languageModelObj.languagelistItemList.length, itemBuilder: (context, index) {LanguagelistItemModel model = provider.languageModelObj.languagelistItemList[index]; return LanguagelistItemWidget(model);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 145.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeft, onTap: () {onTapArrowLeft(context);}), AppbarSubtitleTwo(text: "lbl_language".tr, margin: EdgeInsets.only(left: 106.h, top: 3.v, bottom: 1.v))])), SizedBox(height: 10.v), Opacity(opacity: 0.08, child: Align(alignment: Alignment.centerLeft, child: SizedBox(width: double.maxFinite, child: Divider(color: theme.colorScheme.onError))))]), styleType: Style.bgFill); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
