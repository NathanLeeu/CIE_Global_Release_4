import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.zero,
      color: appTheme.yellow100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgCloseAmberA700,
            height: 70.v,
            width: 81.h,
            alignment: Alignment.centerLeft,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: 123.h,
              margin: EdgeInsets.fromLTRB(16.h, 11.v, 22.h, 11.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "9",
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "Thạc sĩ",
                        style: CustomTextStyles.bodyLargeBlack900,
                      )
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgClose,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(bottom: 22.v),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
