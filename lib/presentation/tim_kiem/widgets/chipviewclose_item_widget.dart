import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class ChipviewcloseItemWidget extends StatelessWidget {
  const ChipviewcloseItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        left: 6.h,
        top: 13.v,
        bottom: 13.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Thạc sĩ",
        style: TextStyle(
          color: appTheme.black90001,
          fontSize: 14.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
      ),
      deleteIcon: CustomImageView(
        imagePath: ImageConstant.imgClose,
        height: 24.adaptSize,
        width: 24.adaptSize,
        margin: EdgeInsets.only(left: 25.h),
      ),
      onDeleted: () {},
      selected: false,
      backgroundColor: appTheme.deepOrange50,
      selectedColor: appTheme.blue50,
      shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(
          8.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
