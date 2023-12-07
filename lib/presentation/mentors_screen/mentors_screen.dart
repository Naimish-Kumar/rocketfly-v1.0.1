import '../mentors_screen/widgets/following_item_widget.dart';import 'models/following_item_model.dart';import 'models/mentors_model.dart';import 'package:flutter/material.dart';import 'package:rocketfly/core/app_export.dart';import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';import 'provider/mentors_provider.dart';class MentorsScreen extends StatefulWidget {const MentorsScreen({Key? key}) : super(key: key);

@override MentorsScreenState createState() =>  MentorsScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => MentorsProvider(), child: MentorsScreen()); } 
 }
class MentorsScreenState extends State<MentorsScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Padding(padding: EdgeInsets.only(left: 16.h, top: 22.v, right: 16.h), child: Consumer<MentorsProvider>(builder: (context, provider, child) {return ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: 16.v);}, itemCount: provider.mentorsModelObj.followingItemList.length, itemBuilder: (context, index) {FollowingItemModel model = provider.mentorsModelObj.followingItemList[index]; return FollowingItemWidget(model);});})))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(centerTitle: true, title: Column(children: [Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgArrowLeftPrimary, onTap: () {onTapArrowLeft(context);}), AppbarSubtitle(text: "lbl_mentors".tr, margin: EdgeInsets.only(left: 114.h, top: 1.v, bottom: 3.v)), AppbarTitleImage(imagePath: ImageConstant.imgButtonFilterPrimary, margin: EdgeInsets.only(left: 113.h))])), SizedBox(height: 10.v), Opacity(opacity: 0.08, child: SizedBox(width: double.maxFinite, child: Divider()))]), styleType: Style.bgFill_1); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
