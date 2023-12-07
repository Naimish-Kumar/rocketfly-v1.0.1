import '../models/startanewcareerandskills_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_outlined_button.dart';

// ignore: must_be_immutable
class StartanewcareerandskillsItemWidget extends StatelessWidget {
  StartanewcareerandskillsItemWidget(
    this.startanewcareerandskillsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StartanewcareerandskillsItemModel startanewcareerandskillsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      width: 343.h,
      text: "msg_start_a_new_career".tr,
      rightIcon: Container(
        margin: EdgeInsets.only(left: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgIconErrorcontainer,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }
}
