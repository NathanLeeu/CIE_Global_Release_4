import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable

class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget({Key? key, this.onTapStacknumbertext})
      : super(
          key: key,
        );

  VoidCallback? onTapStacknumbertext;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 104.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    onTapStacknumbertext?.call();
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.zero,
                    color: appTheme.yellow100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Container(
                      height: 139.v,
                      width: 104.h,
                      padding: EdgeInsets.symmetric(vertical: 12.v),
                      decoration: AppDecoration.fillYellow.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder12,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse23,
                            height: 102.v,
                            width: 52.h,
                            alignment: Alignment.centerRight,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 12.h),
                            child: CustomIconButton(
                              height: 36.adaptSize,
                              width: 36.adaptSize,
                              padding: EdgeInsets.all(6.h),
                              alignment: Alignment.topRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgContrast,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                right: 45.h,
                                bottom: 4.v,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "68",
                                    style: theme.textTheme.headlineSmall,
                                  ),
                                  SizedBox(height: 5.v),
                                  Text(
                                    "LHS Lào",
                                    style: CustomTextStyles.bodyMediumBlack900,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 4.v),
            Text(
              "Quốc tịch",
              style: theme.textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
