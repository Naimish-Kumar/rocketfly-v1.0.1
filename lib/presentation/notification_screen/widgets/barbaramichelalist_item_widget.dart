import '../models/barbaramichelalist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class BarbaramichelalistItemWidget extends StatelessWidget {
  BarbaramichelalistItemWidget(
    this.barbaramichelalistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BarbaramichelalistItemModel barbaramichelalistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 281.h,
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "lbl_barbara_michela".tr,
              style: CustomTextStyles.titleSmallOnError,
            ),
            TextSpan(
              text: " ",
            ),
            TextSpan(
              text: "lbl_comments_on_the".tr,
              style: CustomTextStyles.bodyMediumOnError,
            ),
            TextSpan(
              text: "msg_courses_of_climate".tr,
              style: CustomTextStyles.titleSmallOnError,
            ),
            TextSpan(
              text: "lbl_course".tr,
              style: CustomTextStyles.bodyMediumOnError,
            ),
            TextSpan(
              text: " ",
            ),
            TextSpan(
              text: "lbl_10_00_am".tr,
              style: CustomTextStyles.labelLargeGray700,
            ),
          ],
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
