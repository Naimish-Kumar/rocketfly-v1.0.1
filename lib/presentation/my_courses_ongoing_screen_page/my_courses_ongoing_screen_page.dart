import '../my_courses_ongoing_screen_page/widgets/fightergirlcharacterinblendertutorial_item_widget.dart';
import 'models/fightergirlcharacterinblendertutorial_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'provider/my_courses_ongoing_screen_provider.dart';

// ignore_for_file: must_be_immutable
class MyCoursesOngoingScreenPage extends StatefulWidget {
  const MyCoursesOngoingScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyCoursesOngoingScreenPageState createState() =>
      MyCoursesOngoingScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyCoursesOngoingScreenProvider(),
      child: MyCoursesOngoingScreenPage(),
    );
  }
}

class MyCoursesOngoingScreenPageState extends State<MyCoursesOngoingScreenPage>
    with AutomaticKeepAliveClientMixin<MyCoursesOngoingScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
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
              _buildFighterGirlCharacterInBlenderTutorial(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFighterGirlCharacterInBlenderTutorial(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Consumer<MyCoursesOngoingScreenProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 9.v,
              );
            },
            itemCount: provider.myCoursesOngoingScreenModelObj
                .fightergirlcharacterinblendertutorialItemList.length,
            itemBuilder: (context, index) {
              FightergirlcharacterinblendertutorialItemModel model = provider
                  .myCoursesOngoingScreenModelObj
                  .fightergirlcharacterinblendertutorialItemList[index];
              return FightergirlcharacterinblendertutorialItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
