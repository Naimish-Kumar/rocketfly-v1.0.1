import '../models/fivemilliontwentythreethousand_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class FivemilliontwentythreethousandItemWidget extends StatelessWidget {
  FivemilliontwentythreethousandItemWidget(
    this.fivemilliontwentythreethousandItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FivemilliontwentythreethousandItemModel
      fivemilliontwentythreethousandItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: fivemilliontwentythreethousandItemModelObj.image,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 2.v,
          ),
          child: Text(
            fivemilliontwentythreethousandItemModelObj
                .fiveMillionTwentyThreeThousand!,
            style: theme.textTheme.titleMedium,
          ),
        ),
      ],
    );
  }
}
