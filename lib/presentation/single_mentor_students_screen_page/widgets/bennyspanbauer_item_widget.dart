import '../models/bennyspanbauer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class BennyspanbauerItemWidget extends StatelessWidget {
  BennyspanbauerItemWidget(
    this.bennyspanbauerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BennyspanbauerItemModel bennyspanbauerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 64.adaptSize,
          width: 64.adaptSize,
          padding: EdgeInsets.all(11.h),
          decoration: IconButtonStyleHelper.fillBlueGray,
          child: CustomImageView(
            imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 11.v,
            bottom: 11.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                bennyspanbauerItemModelObj.bennySpanbauer!,
                style: CustomTextStyles.titleMediumPrimary,
              ),
              SizedBox(height: 2.v),
              Text(
                bennyspanbauerItemModelObj.student!,
                style: CustomTextStyles.titleSmallErrorContainer_1,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgChat,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 20.v),
        ),
      ],
    );
  }
}
