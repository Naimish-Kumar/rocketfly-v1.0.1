import '../single_courses_complete_lessons_screen_page/widgets/introductionsection_item_widget.dart';
import 'models/introductionsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/single_courses_complete_lessons_screen_provider.dart';

// ignore_for_file: must_be_immutable
class SingleCoursesCompleteLessonsScreenPage extends StatefulWidget {
  const SingleCoursesCompleteLessonsScreenPage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleCoursesCompleteLessonsScreenPageState createState() =>
      SingleCoursesCompleteLessonsScreenPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleCoursesCompleteLessonsScreenProvider(),
      child: SingleCoursesCompleteLessonsScreenPage(),
    );
  }
}

class SingleCoursesCompleteLessonsScreenPageState
    extends State<SingleCoursesCompleteLessonsScreenPage>
    with AutomaticKeepAliveClientMixin<SingleCoursesCompleteLessonsScreenPage> {
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
        backgroundColor: theme.colorScheme.primary,
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 25.v),
                  Column(
                    children: [
                      _buildIntroductionSection(context),
                      SizedBox(height: 24.v),
                      _buildStartCourseAgainSection(context),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      
    );
  }

  /// Section Widget
  Widget _buildIntroductionSection(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer<SingleCoursesCompleteLessonsScreenProvider>(
          builder: (context, provider, child) {
            return GroupedListView<IntroductionsectionItemModel, String>(
              shrinkWrap: true,
              stickyHeaderBackgroundColor: Colors.transparent,
              elements: provider.singleCoursesCompleteLessonsScreenModelObj
                      .introductionsectionItemList ??
                  [],
              groupBy: (element) => element.groupBy!,
              sort: false,
              groupSeparatorBuilder: (String value) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: 25.v,
                    bottom: 19.v,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        value,
                        style: CustomTextStyles
                            .titleMediumLeagueSpartanOnError_1
                            .copyWith(
                          color: theme.colorScheme.onError.withOpacity(1),
                        ),
                      ),
                      Text(
                        value,
                        style: CustomTextStyles.titleMediumLeagueSpartanGray700
                            .copyWith(
                          color: appTheme.gray700,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemBuilder: (context, model) {
                return IntroductionsectionItemWidget(
                  model,
                );
              },
              separator: SizedBox(
                height: 8.v,
              ),
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStartCourseAgainSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineOnError,
      child: CustomElevatedButton(
        text: "msg_start_course_again".tr,
        buttonStyle: CustomButtonStyles.fillDeepPurpleA,
        buttonTextStyle: theme.textTheme.titleLarge!,
      ),
    );
  }
}
