import '../search_screen/widgets/crmmanagementlist_item_widget.dart';import 'models/crmmanagementlist_item_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'package:rocketfly/widgets/custom_search_view.dart';import 'provider/search_provider.dart';class SearchScreen extends StatefulWidget {const SearchScreen({Key? key}) : super(key: key);

@override SearchScreenState createState() =>  SearchScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => SearchProvider(), child: SearchScreen()); } 
 }
class SearchScreenState extends State<SearchScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.v), child: Column(children: [Selector<SearchProvider, TextEditingController?>(selector: (context, provider) => provider.searchController, builder: (context, searchController, child) {return CustomSearchView(controller: searchController, hintText: "lbl_search_here".tr);}), SizedBox(height: 30.v), _buildRecentRow(context), SizedBox(height: 9.v), _buildCrmManagementList(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.only(left: 16.h, right: 158.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftPrimary, onTap: () {onTapArrowLeft(context);}), AppbarSubtitle(text: "lbl_search".tr, margin: EdgeInsets.only(left: 119.h, bottom: 4.v))])), SizedBox(height: 10.v), Opacity(opacity: 0.08, child: Align(alignment: Alignment.centerLeft, child: SizedBox(width: double.maxFinite, child: Divider())))]), styleType: Style.bgFill_1); } 
/// Section Widget
Widget _buildRecentRow(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_recent".tr, style: theme.textTheme.headlineSmall), Padding(padding: EdgeInsets.only(top: 3.v), child: Text("lbl_clear_all".tr, style: CustomTextStyles.titleMediumSemiBold))]); } 
/// Section Widget
Widget _buildCrmManagementList(BuildContext context) { return Consumer<SearchProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Opacity(opacity: 0.08, child: Padding(padding: EdgeInsets.symmetric(vertical: 8.0.v), child: SizedBox(width: 343.h, child: Divider(height: 1.v, thickness: 1.v, color: theme.colorScheme.primary.withOpacity(0.38)))));}, itemCount: provider.searchModelObj.crmmanagementlistItemList.length, itemBuilder: (context, index) {CrmmanagementlistItemModel model = provider.searchModelObj.crmmanagementlistItemList[index]; return CrmmanagementlistItemWidget(model);});}); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
