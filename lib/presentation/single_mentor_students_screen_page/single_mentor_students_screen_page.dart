import '../single_mentor_students_screen_page/widgets/bennyspanbauer_item_widget.dart';
import 'models/bennyspanbauer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'provider/single_mentor_students_screen_provider.dart';

// ignore_for_file: must_be_immutable
class SingleMentorStudentsScreenPage extends StatefulWidget {
  const SingleMentorStudentsScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleMentorStudentsScreenPageState createState() =>
      SingleMentorStudentsScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleMentorStudentsScreenProvider(),
      child: SingleMentorStudentsScreenPage(),
    );
  }
}

class SingleMentorStudentsScreenPageState
    extends State<SingleMentorStudentsScreenPage>
    with AutomaticKeepAliveClientMixin<SingleMentorStudentsScreenPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Consumer<SingleMentorStudentsScreenProvider>(
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
                        itemCount: provider.singleMentorStudentsScreenModelObj
                            .bennyspanbauerItemList.length,
                        itemBuilder: (context, index) {
                          BennyspanbauerItemModel model = provider
                              .singleMentorStudentsScreenModelObj
                              .bennyspanbauerItemList[index];
                          return BennyspanbauerItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
