import '../category_screen_one_screen/widgets/businesslist1_item_widget.dart';import 'models/businesslist1_item_model.dart';import 'models/category_screen_one_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'provider/category_screen_one_provider.dart';class CategoryScreenOneScreen extends StatefulWidget {const CategoryScreenOneScreen({Key? key}) : super(key: key);

@override CategoryScreenOneScreenState createState() =>  CategoryScreenOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => CategoryScreenOneProvider(), child: CategoryScreenOneScreen()); } 
 }
class CategoryScreenOneScreenState extends State<CategoryScreenOneScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 16.h, top: 22.v, right: 16.h), child: Consumer<CategoryScreenOneProvider>(builder: (context, provider, child) {return ListView.builder(physics: BouncingScrollPhysics(), shrinkWrap: true, itemCount: provider.categoryScreenOneModelObj.businesslist1ItemList.length, itemBuilder: (context, index) {Businesslist1ItemModel model = provider.categoryScreenOneModelObj.businesslist1ItemList[index]; return Businesslist1ItemWidget(model);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 141.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftPrimary, onTap: () {onTapArrowLeft(context);}), AppbarSubtitle(text: "lbl_categories2".tr, margin: EdgeInsets.only(left: 103.h, top: 2.v, bottom: 2.v))])), SizedBox(height: 10.v), Opacity(opacity: 0.08, child: Align(alignment: Alignment.centerLeft, child: SizedBox(width: double.maxFinite, child: Divider())))]), styleType: Style.bgFill_1); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
