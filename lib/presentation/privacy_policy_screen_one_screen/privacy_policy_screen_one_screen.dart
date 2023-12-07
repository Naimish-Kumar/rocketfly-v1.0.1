import 'models/privacy_policy_screen_one_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/privacy_policy_screen_one_provider.dart';

class PrivacyPolicyScreenOneScreen extends StatefulWidget {
  const PrivacyPolicyScreenOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  PrivacyPolicyScreenOneScreenState createState() =>
      PrivacyPolicyScreenOneScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PrivacyPolicyScreenOneProvider(),
      child: PrivacyPolicyScreenOneScreen(),
    );
  }
}

class PrivacyPolicyScreenOneScreenState
    extends State<PrivacyPolicyScreenOneScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Selector<PrivacyPolicyScreenOneProvider,
                TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.arrowleftController,
              builder: (context, arrowleftController, child) {
                return CustomTextFormField(
                  width: double.maxFinite,
                  controller: arrowleftController,
                  hintText: "lbl_privacy_policy".tr,
                  hintStyle: theme.textTheme.titleLarge!,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 30.v, 30.h, 30.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeftPrimary,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 1867.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    top: 946.v,
                    right: 30.h,
                    bottom: 946.v,
                  ),
                  borderDecoration:
                      TextFormFieldStyleHelper.fillOnPrimaryContainer,
                  fillColor: theme.colorScheme.onPrimaryContainer,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
