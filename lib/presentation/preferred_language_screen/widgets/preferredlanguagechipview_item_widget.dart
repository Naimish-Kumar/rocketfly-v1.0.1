import '../models/preferredlanguagechipview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rocketfly/core/app_export.dart';

// ignore: must_be_immutable
class PreferredlanguagechipviewItemWidget extends StatelessWidget {
  PreferredlanguagechipviewItemWidget(
    this.preferredlanguagechipviewItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  PreferredlanguagechipviewItemModel preferredlanguagechipviewItemModelObj;

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
          preferredlanguagechipviewItemModelObj.english!,
          style: TextStyle(
            color: (preferredlanguagechipviewItemModelObj.isSelected ?? false)
                ? theme.colorScheme.primary
                : theme.colorScheme.onError.withOpacity(1),
            fontSize: 14.fSize,
            fontFamily: 'Lato',
            fontWeight: FontWeight.w500,
          ),
        ),
        selected: (preferredlanguagechipviewItemModelObj.isSelected ?? false),
        backgroundColor: Colors.transparent,
        selectedColor: theme.colorScheme.onSecondaryContainer,
        shape: (preferredlanguagechipviewItemModelObj.isSelected ?? false)
            ? RoundedRectangleBorder(
                side: BorderSide.none,
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              )
            : RoundedRectangleBorder(
                side: BorderSide(
                  color: theme.colorScheme.onError.withOpacity(1),
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
