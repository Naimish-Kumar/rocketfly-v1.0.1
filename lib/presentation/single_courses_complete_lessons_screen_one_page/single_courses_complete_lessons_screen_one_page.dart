import '../single_courses_complete_lessons_screen_one_page/widgets/introduction4_item_widget.dart';
import 'models/introduction4_item_model.dart';
import 'models/single_courses_complete_lessons_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/single_courses_complete_lessons_screen_one_provider.dart';

// ignore_for_file: must_be_immutable
class SingleCoursesCompleteLessonsScreenOnePage extends StatefulWidget {
  const SingleCoursesCompleteLessonsScreenOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  SingleCoursesCompleteLessonsScreenOnePageState createState() =>
      SingleCoursesCompleteLessonsScreenOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SingleCoursesCompleteLessonsScreenOneProvider(),
      child: SingleCoursesCompleteLessonsScreenOnePage(),
    );
  }
}

class SingleCoursesCompleteLessonsScreenOnePageState
    extends State<SingleCoursesCompleteLessonsScreenOnePage>
    with
        AutomaticKeepAliveClientMixin<
            SingleCoursesCompleteLessonsScreenOnePage> {
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
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 25.v),
                Column(
                  children: [
                    _buildIntroduction(context),
                    SizedBox(height: 24.v),
                    _buildStartCourseAgain(context),
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
  Widget _buildIntroduction(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Consumer<SingleCoursesCompleteLessonsScreenOneProvider>(
          builder: (context, provider, child) {
            return GroupedListView<Introduction4ItemModel, String>(
              shrinkWrap: true,
              stickyHeaderBackgroundColor: Colors.transparent,
              elements: provider.singleCoursesCompleteLessonsScreenOneModelObj
                      .introduction4ItemList ??
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
                            .titleMediumLeagueSpartanPrimary_1
                            .copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                      Text(
                        value,
                        style:
                            CustomTextStyles.titleMediumLeagueSpartan.copyWith(
                          color: theme.colorScheme.errorContainer,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemBuilder: (context, model) {
                return Introduction4ItemWidget(
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
  Widget _buildStartCourseAgain(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineOnPrimaryContainer,
      child: CustomElevatedButton(
        text: "msg_start_course_again".tr,
      ),
    );
  }
}
