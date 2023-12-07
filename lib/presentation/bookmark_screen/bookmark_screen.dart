import '../bookmark_screen/widgets/threeddesignlist_item_widget.dart';
import 'models/bookmark_model.dart';
import 'models/threeddesignlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_bottom_bar.dart';
import 'provider/bookmark_provider.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key})
      : super(
          key: key,
        );

  @override
  BookmarkScreenState createState() => BookmarkScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BookmarkProvider(),
      child: BookmarkScreen(),
    );
  }
}

class BookmarkScreenState extends State<BookmarkScreen> {
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
        backgroundColor: theme.colorScheme.primary,
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
                  imagePath: ImageConstant.imgButtonSetting,
                ),
                AppbarSubtitleTwo(
                  text: "lbl_bookmarks".tr,
                  margin: EdgeInsets.only(
                    left: 102.h,
                    bottom: 4.v,
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgButtonFilterOnerror,
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
              child: Divider(
                color: theme.colorScheme.onError,
              ),
            ),
          ),
        ],
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildThreeDDesignList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer<BookmarkProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 11.v,
                );
              },
              itemCount:
                  provider.bookmarkModelObj.threeddesignlistItemList.length,
              itemBuilder: (context, index) {
                ThreeddesignlistItemModel model =
                    provider.bookmarkModelObj.threeddesignlistItemList[index];
                return ThreeddesignlistItemWidget(
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
