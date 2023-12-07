import '../preferred_language_screen/widgets/preferredlanguagechipview_item_widget.dart';
import 'models/preferredlanguagechipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/preferred_language_provider.dart';

class PreferredLanguageScreen extends StatefulWidget {
  const PreferredLanguageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PreferredLanguageScreenState createState() => PreferredLanguageScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PreferredLanguageProvider(),
      child: PreferredLanguageScreen(),
    );
  }
}

class PreferredLanguageScreenState extends State<PreferredLanguageScreen> {
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
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "lbl_skip".tr,
                  style: CustomTextStyles.titleMediumGray700SemiBold,
                ),
              ),
              SizedBox(height: 44.v),
              Text(
                "lbl_hey_jesica".tr,
                style: CustomTextStyles.headlineLargeOnError_1,
              ),
              SizedBox(height: 20.v),
              Container(
                width: 281.h,
                margin: EdgeInsets.only(right: 61.h),
                child: Text(
                  "msg_please_select_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.titleMediumGray700_2.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              _buildPreferredLanguageChipView(context),
              SizedBox(height: 42.v),
              CustomElevatedButton(
                text: "lbl_select".tr,
                buttonStyle: CustomButtonStyles.fillDeepPurpleA,
                buttonTextStyle: theme.textTheme.titleLarge!,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPreferredLanguageChipView(BuildContext context) {
    return Consumer<PreferredLanguageProvider>(
      builder: (context, provider, child) {
        return Wrap(
          runSpacing: 18.v,
          spacing: 18.h,
          children: List<Widget>.generate(
            provider.preferredLanguageModelObj.preferredlanguagechipviewItemList
                .length,
            (index) {
              PreferredlanguagechipviewItemModel model = provider
                  .preferredLanguageModelObj
                  .preferredlanguagechipviewItemList[index];

              return PreferredlanguagechipviewItemWidget(
                model,
                onSelectedChipView: (value) {
                  provider.onSelectedChipView(index, value);
                },
              );
            },
          ),
        );
      },
    );
  }
}
