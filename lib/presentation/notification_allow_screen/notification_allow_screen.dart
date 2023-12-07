import 'models/notification_allow_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/notification_allow_provider.dart';

class NotificationAllowScreen extends StatefulWidget {
  const NotificationAllowScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationAllowScreenState createState() => NotificationAllowScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationAllowProvider(),
      child: NotificationAllowScreen(),
    );
  }
}

class NotificationAllowScreenState extends State<NotificationAllowScreen> {
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
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "lbl_skip".tr,
                  style: CustomTextStyles.titleMediumSemiBold18,
                ),
              ),
              SizedBox(height: 41.v),
              _buildImagePlaceholder(context),
              SizedBox(height: 23.v),
              Text(
                "lbl_notifications".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 24.v),
              Container(
                width: 275.h,
                margin: EdgeInsets.symmetric(horizontal: 33.h),
                child: Text(
                  "msg_stay_notified_about".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.titleMedium!.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "lbl_allow".tr,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImagePlaceholder(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 152.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Opacity(
        opacity: 0.3,
        child: CustomImageView(
          imagePath: ImageConstant.imgPlaceHolderErrorcontainer38x299,
          height: 38.v,
          width: 299.h,
        ),
      ),
    );
  }
}
