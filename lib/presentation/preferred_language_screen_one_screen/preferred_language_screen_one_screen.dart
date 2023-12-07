import '../preferred_language_screen_one_screen/widgets/languageselection_item_widget.dart';
import 'models/languageselection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/preferred_language_screen_one_provider.dart';

class PreferredLanguageScreenOneScreen extends StatefulWidget {
  const PreferredLanguageScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PreferredLanguageScreenOneScreenState createState() =>
      PreferredLanguageScreenOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PreferredLanguageScreenOneProvider(),
      child: PreferredLanguageScreenOneScreen(),
    );
  }
}

class PreferredLanguageScreenOneScreenState
    extends State<PreferredLanguageScreenOneScreen> {
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
                  style: CustomTextStyles.titleMediumSemiBold18,
                ),
              ),
              SizedBox(height: 44.v),
              Text(
                "lbl_hey_jesica".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 20.v),
              Container(
                width: 281.h,
                margin: EdgeInsets.only(right: 61.h),
                child: Text(
                  "msg_please_select_your".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              _buildLanguageSelection(context),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                text: "lbl_select".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguageSelection(BuildContext context) {
    return Consumer<PreferredLanguageScreenOneProvider>(
      builder: (context, provider, child) {
        return Wrap(
          runSpacing: 16.v,
          spacing: 16.h,
          children: List<Widget>.generate(
            provider.preferredLanguageScreenOneModelObj
                .languageselectionItemList.length,
            (index) {
              LanguageselectionItemModel model = provider
                  .preferredLanguageScreenOneModelObj
                  .languageselectionItemList[index];

              return LanguageselectionItemWidget(
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
