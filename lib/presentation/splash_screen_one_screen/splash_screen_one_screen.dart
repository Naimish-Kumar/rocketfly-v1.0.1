import 'models/splash_screen_one_model.dart';
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

    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 293.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                "msg_learn_anytime_and".tr,
                style: CustomTextStyles.titleMediumGray70018,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
