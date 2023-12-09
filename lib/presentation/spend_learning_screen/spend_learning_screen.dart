import '../spend_learning_screen/widgets/duration_item_widget.dart';
import 'models/duration_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/spend_learning_provider.dart';

class SpendLearningScreen extends StatefulWidget {
  const SpendLearningScreen({Key? key}) : super(key: key);

  @override
  SpendLearningScreenState createState() => SpendLearningScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SpendLearningProvider(),
        child: SpendLearningScreen());
  }
}

class SpendLearningScreenState extends State<SpendLearningScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      appBar: _buildAppBar(context),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
        child: SafeArea(
          child: Column(children: [
            Container(
              width: 325.h,
              margin: EdgeInsets.symmetric(horizontal: 8.h),
              child: Text(
                "msg_how_much_time_do".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium!.copyWith(height: 1.50),
              ),
            ),
            SizedBox(height: 29.v),
            _buildDuration(context)
          ]),
        ),
      ),
      bottomNavigationBar: _buildNext(context),
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
                      imagePath: ImageConstant.imgArrowLeftPrimary,
                      onTap: () {
                        onTapArrowLeft(context);
                      }),
                  AppbarSubtitle(
                    text: "lbl_spend_learning".tr,
                    margin: EdgeInsets.only(left: 82.h, top: 2.v, bottom: 3.v),
                  ),
                  AppbarSubtitleThree(
                    text: "lbl_skip".tr,
                    margin: EdgeInsets.only(left: 71.h, top: 2.v),
                  )
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
            )
          ],
        ),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildDuration(BuildContext context) {
    return Consumer<SpendLearningProvider>(builder: (context, provider, child) {
      return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(height: 12.v);
          },
          itemCount: provider.spendLearningModelObj.durationItemList.length,
          itemBuilder: (context, index) {
            DurationItemModel model =
                provider.spendLearningModelObj.durationItemList[index];
            return DurationItemWidget(model);
          });
    });
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_next".tr,
      margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 50.v),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
