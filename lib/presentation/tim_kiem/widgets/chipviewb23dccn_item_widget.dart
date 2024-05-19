import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class Chipviewb23dccnItemWidget extends StatelessWidget {
  const Chipviewb23dccnItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        canvasColor: Colors.transparent,
      ),
      child: RawChip(
        padding: EdgeInsets.symmetric(
          horizontal: 8.h,
          vertical: 4.v,
        ),
        showCheckmark: false,
        labelPadding: EdgeInsets.zero,
        label: Text(
          "B23DCCN989",
          style: TextStyle(
            color: appTheme.black90001,
            fontSize: 14.fSize,
            fontFamily: 'SF Pro Display',
            fontWeight: FontWeight.w400,
          ),
        ),
        selected: false,
        backgroundColor: Colors.transparent,
        selectedColor: appTheme.black90001.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: appTheme.gray400,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(
            13.h,
          ),
        ),
        onSelected: (value) {},
      ),
    );
  }
}
