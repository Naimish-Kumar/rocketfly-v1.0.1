import '../chat_screen/widgets/chatlist_item_widget.dart';
import 'models/chat_model.dart';
import 'models/chatlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_bottom_bar.dart';
import 'provider/chat_provider.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ChatScreenState createState() => ChatScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatProvider(),
      child: ChatScreen(),
    );
  }
}

class ChatScreenState extends State<ChatScreen> {
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
              _buildChatList(context),
              SizedBox(height: 121.v),
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
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                AppbarSubtitle(
                  text: "lbl_chat".tr,
                  margin: EdgeInsets.only(
                    left: 128.h,
                    bottom: 5.v,
                  ),
                ),
                AppbarTitleImage(
                  imagePath: ImageConstant.imgButtonNotificationPrimary,
                  margin: EdgeInsets.only(
                    left: 126.h,
                    top: 1.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
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
  Widget _buildChatList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer<ChatProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 3.v,
                );
              },
              itemCount: provider.chatModelObj.chatlistItemList.length,
              itemBuilder: (context, index) {
                ChatlistItemModel model =
                    provider.chatModelObj.chatlistItemList[index];
                return ChatlistItemWidget(
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
