import '../my_courses_ongoing_screen_one_page/widgets/fightergirlcharacterinblendertutoriallist_item_widget.dart';
import 'models/fightergirlcharacterinblendertutoriallist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'provider/my_courses_ongoing_screen_one_provider.dart';

// ignore_for_file: must_be_immutable
class MyCoursesOngoingScreenOnePage extends StatefulWidget {
  const MyCoursesOngoingScreenOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyCoursesOngoingScreenOnePageState createState() =>
      MyCoursesOngoingScreenOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyCoursesOngoingScreenOneProvider(),
      child: MyCoursesOngoingScreenOnePage(),
    );
  }
}

class MyCoursesOngoingScreenOnePageState
    extends State<MyCoursesOngoingScreenOnePage>
    with AutomaticKeepAliveClientMixin<MyCoursesOngoingScreenOnePage> {
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
              _buildFighterGirlCharacterInBlenderTutorialList(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFighterGirlCharacterInBlenderTutorialList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<MyCoursesOngoingScreenOneProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 16.v,
              );
            },
            itemCount: provider.myCoursesOngoingScreenOneModelObj
                .fightergirlcharacterinblendertutoriallistItemList.length,
            itemBuilder: (context, index) {
              FightergirlcharacterinblendertutoriallistItemModel model =
                  provider.myCoursesOngoingScreenOneModelObj
                      .fightergirlcharacterinblendertutoriallistItemList[index];
              return FightergirlcharacterinblendertutoriallistItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
