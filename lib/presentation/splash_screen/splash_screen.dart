import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'provider/splash_provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SplashScreenState createState() => SplashScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SplashProvider(),
      child: SplashScreen(),
    );
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgLogo,
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                ),
                SizedBox(height: 24.v),
                Text(
                  "lbl_guruji".tr,
                  style: theme.textTheme.displayMedium,
                ),
                SizedBox(height: 33.v),
                Text(
                  "msg_learn_anytime_and".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
              ],
            ),
          ),
        ),
    );
  }
}
