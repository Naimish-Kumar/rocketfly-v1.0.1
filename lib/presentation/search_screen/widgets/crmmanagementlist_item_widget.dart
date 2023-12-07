import '../models/crmmanagementlist_item_model.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class CrmmanagementlistItemWidget extends StatelessWidget {
  CrmmanagementlistItemWidget(
    this.crmmanagementlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CrmmanagementlistItemModel crmmanagementlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            crmmanagementlistItemModelObj.cRMManagement!,
            style: CustomTextStyles.bodyLarge16,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIcon32,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
