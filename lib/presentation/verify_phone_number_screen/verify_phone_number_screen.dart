import 'models/verify_phone_number_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/core/utils/validation_functions.dart';
import 'package:rocketfly/widgets/custom_text_form_field.dart';
import 'provider/verify_phone_number_provider.dart';

class VerifyPhoneNumberScreen extends StatefulWidget {
  const VerifyPhoneNumberScreen({Key? key})
      : super(
          key: key,
        );

  @override
  VerifyPhoneNumberScreenState createState() => VerifyPhoneNumberScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VerifyPhoneNumberProvider(),
      child: VerifyPhoneNumberScreen(),
    );
  }
}

class VerifyPhoneNumberScreenState extends State<VerifyPhoneNumberScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Selector<VerifyPhoneNumberProvider, TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.phoneNumberController,
              builder: (context, phoneNumberController, child) {
                return CustomTextFormField(
                  controller: phoneNumberController,
                  hintText: "msg_verify_phone_number".tr,
                  hintStyle: CustomTextStyles.titleLargeOnError,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.phone,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(16.h, 30.v, 30.h, 30.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowLeft,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 768.v,
                  ),
                  validator: (value) {
                    if (!isValidPhone(value)) {
                      return "err_msg_please_enter_valid_phone_number".tr;
                    }
                    return null;
                  },
                  contentPadding: EdgeInsets.only(
                    top: 396.v,
                    right: 30.h,
                    bottom: 396.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillPrimary,
                  fillColor: theme.colorScheme.primary,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
