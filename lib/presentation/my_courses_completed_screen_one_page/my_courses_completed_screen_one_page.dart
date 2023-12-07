import '../my_courses_completed_screen_one_page/widgets/thecompletelist1_item_widget.dart';
import 'models/thecompletelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'provider/my_courses_completed_screen_one_provider.dart';

// ignore_for_file: must_be_immutable
class MyCoursesCompletedScreenOnePage extends StatefulWidget {
  const MyCoursesCompletedScreenOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyCoursesCompletedScreenOnePageState createState() =>
      MyCoursesCompletedScreenOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyCoursesCompletedScreenOneProvider(),
      child: MyCoursesCompletedScreenOnePage(),
    );
  }
}

class MyCoursesCompletedScreenOnePageState
    extends State<MyCoursesCompletedScreenOnePage>
    with AutomaticKeepAliveClientMixin<MyCoursesCompletedScreenOnePage> {
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
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
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
        child: Consumer<MyCoursesCompletedScreenOneProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 16.v,
                );
              },
              itemCount: provider.myCoursesCompletedScreenOneModelObj
                  .thecompletelist1ItemList.length,
              itemBuilder: (context, index) {
                Thecompletelist1ItemModel model = provider
                    .myCoursesCompletedScreenOneModelObj
                    .thecompletelist1ItemList[index];
                return Thecompletelist1ItemWidget(
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
