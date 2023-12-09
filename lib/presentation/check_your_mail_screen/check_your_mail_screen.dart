import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_elevated_button.dart';
import 'provider/check_your_mail_provider.dart';

class CheckYourMailScreen extends StatefulWidget {
  const CheckYourMailScreen({Key? key})
      : super(
          key: key,
        );

  @override
  CheckYourMailScreenState createState() => CheckYourMailScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CheckYourMailProvider(),
      child: CheckYourMailScreen(),
    );
  }
}

class CheckYourMailScreenState extends State<CheckYourMailScreen> {
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
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 32.v,
          ),
          child: SafeArea(
            child: Column(
              children: [
                _buildImagePlaceholder(context),
                SizedBox(height: 24.v),
                Text(
                  "lbl_check_your_mail".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 24.v),
                SizedBox(
                  width: 343.h,
                  child: Text(
                    "msg_we_have_sent_a_password".tr,
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
                  text: "lbl_open_email_app".tr,
                ),
                SizedBox(height: 27.v),
                Text(
                  "msg_skip_i_ll_confirm".tr,
                  style: CustomTextStyles.titleMediumPrimarySemiBold_1,
                ),
                SizedBox(height: 49.v),
                Container(
                  width: 307.h,
                  margin: EdgeInsets.only(
                    left: 18.h,
                    right: 17.h,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_did_not_receive2".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "msg_try_another_email".tr,
                          style: CustomTextStyles.titleMediumPrimarySemiBold,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
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
