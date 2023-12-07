import '../faqs_screen_one_screen/widgets/refundstatuscommon1_item_widget.dart';import 'models/refundstatuscommon1_item_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'provider/faqs_screen_one_provider.dart';class FaqsScreenOneScreen extends StatefulWidget {const FaqsScreenOneScreen({Key? key}) : super(key: key);

@override FaqsScreenOneScreenState createState() =>  FaqsScreenOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => FaqsScreenOneProvider(), child: FaqsScreenOneScreen()); } 
 }
class FaqsScreenOneScreenState extends State<FaqsScreenOneScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 21.v), child: Column(children: [_buildRefundStatusCommon(context), SizedBox(height: 24.v), _buildFAQ5(context), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 165.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftPrimary, onTap: () {onTapArrowLeft(context);}), AppbarSubtitle(text: "lbl_faqs".tr, margin: EdgeInsets.only(left: 126.h, top: 2.v, bottom: 2.v))])), SizedBox(height: 10.v), Opacity(opacity: 0.08, child: Align(alignment: Alignment.centerLeft, child: SizedBox(width: double.maxFinite, child: Divider())))]), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildRefundStatusCommon(BuildContext context) { return Consumer<FaqsScreenOneProvider>(builder: (context, provider, child) {return ListView.builder(shrinkWrap: true, itemCount: provider.faqsScreenOneModelObj.refundstatuscommon1ItemList.length, itemBuilder: (context, index) {Refundstatuscommon1ItemModel model = provider.faqsScreenOneModelObj.refundstatuscommon1ItemList[index]; return Refundstatuscommon1ItemWidget(model, onSelectedExpandableList: (value) {provider.onSelectedExpandableList(index, value);});});}); } 
/// Section Widget
Widget _buildFAQ5(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_downloading_course".tr, style: CustomTextStyles.titleMediumLeagueSpartanPrimary), CustomImageView(imagePath: ImageConstant.imgIconPrimary18x18, height: 18.adaptSize, width: 18.adaptSize)]); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
