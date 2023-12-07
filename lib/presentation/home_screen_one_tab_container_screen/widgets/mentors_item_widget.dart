import '../models/mentors_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class MentorsItemWidget extends StatelessWidget {
  MentorsItemWidget(
    this.mentorsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MentorsItemModel mentorsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.h,
      child: Column(
        children: [
          Container(
            height: 80.adaptSize,
            width: 80.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 20.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder40,
            ),
            child: Opacity(
              opacity: 0.3,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
                height: 40.v,
                width: 54.h,
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            mentorsItemModelObj.jacob!,
            style: CustomTextStyles.labelLargePrimary_1,
          ),
        ],
      ),
    );
  }
}
