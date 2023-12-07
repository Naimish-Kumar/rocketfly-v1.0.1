import '../models/languagelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class LanguagelistItemWidget extends StatelessWidget {
  LanguagelistItemWidget(
    this.languagelistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LanguagelistItemModel languagelistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 11.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 1.v,
            ),
            child: Text(
              languagelistItemModelObj.english!,
              style: CustomTextStyles.titleMediumOnError_1,
            ),
          ),
          CustomImageView(
            imagePath: languagelistItemModelObj.english1,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(left: 269.h),
          ),
        ],
      ),
    );
  }
}
