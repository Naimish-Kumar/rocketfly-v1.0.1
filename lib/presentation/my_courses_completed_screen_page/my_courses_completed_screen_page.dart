import '../my_courses_completed_screen_page/widgets/thecompletelist_item_widget.dart';
import 'models/thecompletelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'provider/my_courses_completed_screen_provider.dart';

// ignore_for_file: must_be_immutable
class MyCoursesCompletedScreenPage extends StatefulWidget {
  const MyCoursesCompletedScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyCoursesCompletedScreenPageState createState() =>
      MyCoursesCompletedScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyCoursesCompletedScreenProvider(),
      child: MyCoursesCompletedScreenPage(),
    );
  }
}

class MyCoursesCompletedScreenPageState
    extends State<MyCoursesCompletedScreenPage>
    with AutomaticKeepAliveClientMixin<MyCoursesCompletedScreenPage> {
  @override
  bool get wantKeepAlive => true;
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
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              _buildTheCompleteList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTheCompleteList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer<MyCoursesCompletedScreenProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 9.v,
                );
              },
              itemCount: provider.myCoursesCompletedScreenModelObj
                  .thecompletelistItemList.length,
              itemBuilder: (context, index) {
                ThecompletelistItemModel model = provider
                    .myCoursesCompletedScreenModelObj
                    .thecompletelistItemList[index];
                return ThecompletelistItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
