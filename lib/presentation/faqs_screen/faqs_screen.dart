import '../faqs_screen/widgets/refundstatuscommon_item_widget.dart';import 'models/refundstatuscommon_item_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'provider/faqs_provider.dart';class FaqsScreen extends StatefulWidget {const FaqsScreen({Key? key}) : super(key: key);

@override FaqsScreenState createState() =>  FaqsScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FaqsProvider(), child: FaqsScreen()); } 
 }
class FaqsScreenState extends State<FaqsScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: theme.colorScheme.primary, appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(top: 21.v, bottom: 5.v), child: Consumer<FaqsProvider>(builder: (context, provider, child) {return ListView.builder(shrinkWrap: true, itemCount: provider.faqsModelObj.refundstatuscommonItemList.length, itemBuilder: (context, index) {RefundstatuscommonItemModel model = provider.faqsModelObj.refundstatuscommonItemList[index]; return RefundstatuscommonItemWidget(model, onSelectedExpandableList: (value) {provider.onSelectedExpandableList(index, value);});});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 165.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeft, onTap: () {onTapArrowLeft(context);}), AppbarSubtitleTwo(text: "lbl_faqs".tr, margin: EdgeInsets.only(left: 126.h, top: 2.v, bottom: 2.v))])), SizedBox(height: 10.v), Opacity(opacity: 0.08, child: Align(alignment: Alignment.centerLeft, child: SizedBox(width: double.maxFinite, child: Divider(color: theme.colorScheme.onError))))]), styleType: Style.bgFill); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
