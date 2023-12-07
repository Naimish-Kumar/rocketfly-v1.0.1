import '../models/languagelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class Languagelist1ItemWidget extends StatelessWidget {
  Languagelist1ItemWidget(
    this.languagelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Languagelist1ItemModel languagelist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 10.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 2.h,
              top: 3.v,
              bottom: 1.v,
            ),
            child: Text(
              languagelist1ItemModelObj.english!,
              style: CustomTextStyles.titleMediumPrimary_1,
            ),
          ),
          CustomImageView(
            imagePath: languagelist1ItemModelObj.english1,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }
}
