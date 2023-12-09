import '../home_screen_one_page/widgets/lifestyle_item_widget.dart';
import 'models/lifestyle_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'provider/home_screen_one_provider.dart';

// ignore_for_file: must_be_immutable
class HomeScreenOnePage extends StatefulWidget {
  const HomeScreenOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenOnePageState createState() => HomeScreenOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenOneProvider(),
      child: HomeScreenOnePage(),
    );
  }
}

class HomeScreenOnePageState extends State<HomeScreenOnePage>
    with AutomaticKeepAliveClientMixin<HomeScreenOnePage> {
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
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Consumer<HomeScreenOneProvider>(
                      builder: (context, provider, child) {
                        return ListView.separated(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              height: 15.v,
                            );
                          },
                          itemCount: provider
                              .homeScreenOneModelObj.lifestyleItemList.length,
                          itemBuilder: (context, index) {
                            LifestyleItemModel model = provider
                                .homeScreenOneModelObj.lifestyleItemList[index];
                            return LifestyleItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      
    );
  }
}
