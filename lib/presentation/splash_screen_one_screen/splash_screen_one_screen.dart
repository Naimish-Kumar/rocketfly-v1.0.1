import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'provider/splash_screen_one_provider.dart';

class SplashScreenOneScreen extends StatefulWidget {
  const SplashScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SplashScreenOneScreenState createState() => SplashScreenOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashScreenOneProvider(),
      child: SplashScreenOneScreen(),
    );
  }
}

class SplashScreenOneScreenState extends State<SplashScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImageConstant.mainLogo),
                Text(
                  "msg_learn_anytime_and".tr,
                  style: CustomTextStyles.titleMediumGray70018,
                ),
              ],
            ),
          ),
    );
  }
}
