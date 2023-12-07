import '../models/chooseinterests_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class ChooseinterestsItemWidget extends StatelessWidget {
  ChooseinterestsItemWidget(
    this.chooseinterestsItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  ChooseinterestsItemModel chooseinterestsItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 11.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          chooseinterestsItemModelObj.history!,
          style: TextStyle(
            color: (chooseinterestsItemModelObj.isSelected ?? false)
                ? theme.colorScheme.onPrimaryContainer
                : theme.colorScheme.primary,
            fontSize: 14.fSize,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (chooseinterestsItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.primary,
        shape: (chooseinterestsItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.primary,
                  width: 1.h,
                ),
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              ),
        onSelected: (value) {
          onSelectedChipView?.call(value);
        },
      ),
    );
  }
}
