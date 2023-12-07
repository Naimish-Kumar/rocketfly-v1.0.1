import '../models/barbaramichelalist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';
import 'package:rocketfly/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Barbaramichelalist1ItemWidget extends StatelessWidget {
  Barbaramichelalist1ItemWidget(
    this.barbaramichelalist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Barbaramichelalist1ItemModel barbaramichelalist1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 48.adaptSize,
          width: 48.adaptSize,
          padding: EdgeInsets.all(7.h),
          decoration: IconButtonStyleHelper.fillBlueGrayTL24,
          child: CustomImageView(
            imagePath: ImageConstant.imgPlaceHolderErrorcontainer,
          ),
        ),
        Expanded(
          child: Container(
            width: 281.h,
            margin: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 2.v,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl_barbara_michela".tr,
                    style: CustomTextStyles.titleSmallSemiBold_1,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "lbl_comments_on_the".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: "msg_courses_of_climate".tr,
                    style: CustomTextStyles.titleSmallSemiBold_1,
                  ),
                  TextSpan(
                    text: "lbl_course".tr,
                    style: theme.textTheme.bodyMedium,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "lbl_10_00_am".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
      ],
    );
  }
}
