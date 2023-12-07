import '../bookmark_screen_one_screen/widgets/threeddesignlist1_item_widget.dart';
import 'models/threeddesignlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_bottom_bar.dart';
import 'provider/bookmark_screen_one_provider.dart';

class BookmarkScreenOneScreen extends StatefulWidget {
  const BookmarkScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BookmarkScreenOneScreenState createState() => BookmarkScreenOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookmarkScreenOneProvider(),
      child: BookmarkScreenOneScreen(),
    );
  }
}

class BookmarkScreenOneScreenState extends State<BookmarkScreenOneScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 22.v),
              _buildThreeDDesignList(context),
              SizedBox(height: 12.v),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgButtonSettingPrimary,
                ),
                AppbarSubtitle(
                  text: "lbl_bookmarks".tr,
                  margin: EdgeInsets.only(
                    left: 102.h,
                    bottom: 4.v,
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgButtonFilterPrimary,
                  margin: EdgeInsets.only(left: 101.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Opacity(
            opacity: 0.08,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(),
            ),
          ),
        ],
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildThreeDDesignList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer<BookmarkScreenOneProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 15.v,
                );
              },
              itemCount: provider
                  .bookmarkScreenOneModelObj.threeddesignlist1ItemList.length,
              itemBuilder: (context, index) {
                Threeddesignlist1ItemModel model = provider
                    .bookmarkScreenOneModelObj.threeddesignlist1ItemList[index];
                return Threeddesignlist1ItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
