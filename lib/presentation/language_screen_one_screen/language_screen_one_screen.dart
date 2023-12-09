import '../language_screen_one_screen/widgets/languagelist1_item_widget.dart';
import 'models/languagelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/app_bar/appbar_subtitle.dart';
import 'package:rocketfly/widgets/app_bar/appbar_title_image.dart';
import 'package:rocketfly/widgets/app_bar/custom_app_bar.dart';
import 'provider/language_screen_one_provider.dart';

class LanguageScreenOneScreen extends StatefulWidget {
  const LanguageScreenOneScreen({Key? key}) : super(key: key);

  @override
  LanguageScreenOneScreenState createState() => LanguageScreenOneScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LanguageScreenOneProvider(),
        child: LanguageScreenOneScreen());
  }
}

class LanguageScreenOneScreenState extends State<LanguageScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return  Scaffold(
            appBar: _buildAppBar(context),
            body: SafeArea(
              child: Padding(
                  padding: EdgeInsets.only(left: 9.h, top: 11.v, right: 12.h),
                  child: Consumer<LanguageScreenOneProvider>(
                      builder: (context, provider, child) {
                    return ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: 20.v);
                        },
                        itemCount: provider.languageScreenOneModelObj
                            .languagelist1ItemList.length,
                        itemBuilder: (context, index) {
                          Languagelist1ItemModel model = provider
                              .languageScreenOneModelObj
                              .languagelist1ItemList[index];
                          return Languagelist1ItemWidget(model);
                        });
                  })),
            ));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 16.h, right: 145.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeftPrimary,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_language".tr,
                    margin: EdgeInsets.only(left: 106.h, top: 3.v, bottom: 1.v))
              ])),
          SizedBox(height: 10.v),
          Opacity(
              opacity: 0.08,
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(width: double.maxFinite, child: Divider())))
        ]),
        styleType: Style.bgFill_1);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
