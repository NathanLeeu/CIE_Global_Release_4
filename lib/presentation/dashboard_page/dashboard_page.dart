import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/appbar_trailing_circleimage.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/userprofilelist_item_widget.dart'; // ignore_for_file: must_be_immutable

class DashboardPage extends StatelessWidget {
  DashboardPage({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSearchRow(context),
                SizedBox(height: 15.v),
                _buildUserProfileList(context),
                Padding(
                  padding: EdgeInsets.only(left: 131.h),
                  child: Text(
                    "25%",
                    style: CustomTextStyles.bodySmallInterWhiteA700,
                  ),
                ),
                SizedBox(height: 1.v),
                _buildStackView(context),
                SizedBox(height: 140.v),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Sinh viên các ngành",
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 14.v),
                _buildColumntwenty(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 52.v,
      title: AppbarTitle(
        text: "Xin chào, Hường",
        margin: EdgeInsets.only(left: 16.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgHeroiconsOutlineBell,
          margin: EdgeInsets.fromLTRB(16.h, 14.v, 10.h, 4.v),
        ),
        AppbarTrailingCircleimage(
          imagePath: ImageConstant.imgAvatarLg,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 10.v,
            right: 26.h,
          ),
        )
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          onTapSearchRow(context);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSearchView(
                controller: searchController,
                hintText: "Nhập sinh viên, chương trình ...",
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.h),
                child: CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHeroiconsOutli,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        height: 165.v,
        child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 8.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return UserprofilelistItemWidget(
              onTapStacknumbertext: () {
                onTapStacknumbertext(context);
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 228.adaptSize,
            width: 228.adaptSize,
            child: CircularProgressIndicator(
              value: 0.5,
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 228.adaptSize,
                  width: 228.adaptSize,
                  child: CircularProgressIndicator(
                    value: 0.5,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 228.adaptSize,
                  width: 228.adaptSize,
                  child: CircularProgressIndicator(
                    value: 0.5,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 228.adaptSize,
                  width: 228.adaptSize,
                  child: CircularProgressIndicator(
                    value: 0.5,
                    backgroundColor: appTheme.red70001,
                    color: appTheme.lightGreenA100,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 65.h,
                    right: 18.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 10.v),
                            child: Column(
                              children: [
                                Text(
                                  "150",
                                  style: theme.textTheme.headlineLarge,
                                ),
                                SizedBox(height: 1.v),
                                Text(
                                  "Tổng sinh viên",
                                  style:
                                      CustomTextStyles.bodyMediumInterGray90001,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 52.v),
                            child: Text(
                              "12%",
                              style: CustomTextStyles.bodySmallInterWhiteA700,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 3.v),
                      Padding(
                        padding: EdgeInsets.only(right: 3.h),
                        child: Text(
                          "12%",
                          style: CustomTextStyles.bodySmallInterWhiteA700,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 40.h,
                    bottom: 37.v,
                  ),
                  child: Text(
                    "25%",
                    style: CustomTextStyles.bodySmallInterWhiteA700,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildStackView(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 18.h),
            decoration: AppDecoration.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                _buildStack(context),
                SizedBox(height: 28.v),
                Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 8.adaptSize,
                                width: 8.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 3.v,
                                  bottom: 5.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.red70001,
                                  borderRadius: BorderRadius.circular(
                                    4.h,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text(
                                  "Lào (65)",
                                  style: CustomTextStyles.bodyMediumBlack900,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 12.v),
                          Row(
                            children: [
                              Container(
                                height: 8.adaptSize,
                                width: 8.adaptSize,
                                margin: EdgeInsets.symmetric(vertical: 4.v),
                                decoration: BoxDecoration(
                                  color: appTheme.indigo100,
                                  borderRadius: BorderRadius.circular(
                                    4.h,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: Text(
                                  "Mông Cổ (1)",
                                  style: CustomTextStyles.bodyMediumBlack900,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 209.h,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                        margin: EdgeInsets.only(
                                          top: 3.v,
                                          bottom: 5.v,
                                        ),
                                        decoration: BoxDecoration(
                                          color: appTheme.pink200,
                                          borderRadius: BorderRadius.circular(
                                            4.h,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: Text(
                                          "Việt Nam (27)",
                                          style: CustomTextStyles
                                              .bodyMediumBlack900,
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 8.adaptSize,
                                        width: 8.adaptSize,
                                        margin: EdgeInsets.only(
                                          top: 3.v,
                                          bottom: 5.v,
                                        ),
                                        decoration: BoxDecoration(
                                          color: appTheme.amber50001,
                                          borderRadius: BorderRadius.circular(
                                            4.h,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: Text(
                                          "Myanmar (2)",
                                          style: CustomTextStyles
                                              .bodyMediumBlack900,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Container(
                              height: 8.adaptSize,
                              width: 8.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.lightGreenA100,
                                borderRadius: BorderRadius.circular(
                                  4.h,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            "Tanzania (2)",
            style: CustomTextStyles.bodyMediumBlack900,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildColumntwenty(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 2.v,
      ),
      decoration: AppDecoration.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "20",
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "15",
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "10",
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "5",
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 29.v),
                  Text(
                    "0",
                    style: theme.textTheme.bodySmall,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 6.v,
                  bottom: 6.v,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 1.v,
                      width: 306.h,
                      decoration: BoxDecoration(
                        color: appTheme.black90001.withOpacity(0.12),
                      ),
                    ),
                    SizedBox(height: 20.v),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 1.v,
                            width: 306.h,
                            margin: EdgeInsets.only(top: 22.v),
                            decoration: BoxDecoration(
                              color: appTheme.black90001.withOpacity(0.12),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 42.v),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 1.v,
                                  width: 306.h,
                                  decoration: BoxDecoration(
                                    color:
                                        appTheme.black90001.withOpacity(0.12),
                                  ),
                                ),
                                SizedBox(height: 43.v),
                                Container(
                                  height: 1.v,
                                  width: 306.h,
                                  decoration: BoxDecoration(
                                    color:
                                        appTheme.black90001.withOpacity(0.12),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup6104,
                          height: 99.v,
                          width: 41.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 18.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup6105,
                          height: 155.v,
                          width: 41.h,
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 90.h),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 31.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup6105,
                                  height: 127.v,
                                  width: 41.h,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup6104,
                                  height: 99.v,
                                  width: 41.h,
                                  margin: EdgeInsets.only(
                                    left: 30.h,
                                    top: 27.v,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 2.v,
                      width: 306.h,
                      decoration: BoxDecoration(
                        color: appTheme.black90001.withOpacity(0.12),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 47.h,
              right: 39.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "LKĐT",
                  style: theme.textTheme.bodySmall,
                ),
                Spacer(
                  flex: 34,
                ),
                Text(
                  "Đại học",
                  style: theme.textTheme.bodySmall,
                ),
                Spacer(
                  flex: 28,
                ),
                Text(
                  "Thạc sĩ",
                  style: theme.textTheme.bodySmall,
                ),
                Spacer(
                  flex: 36,
                ),
                Text(
                  "NCS",
                  style: theme.textTheme.bodySmall,
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(
              left: 33.h,
              right: 25.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 118.h,
                  margin: EdgeInsets.only(bottom: 1.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.symmetric(vertical: 4.v),
                        decoration: BoxDecoration(
                          color: appTheme.pink200,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "Sinh viên Quốc tế",
                          style: CustomTextStyles.bodyMediumBlack900,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 125.h,
                  margin: EdgeInsets.only(left: 27.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 8.adaptSize,
                        width: 8.adaptSize,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 5.v,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.red70001,
                          borderRadius: BorderRadius.circular(
                            4.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.h),
                        child: Text(
                          "Sinh viên Việt Nam",
                          style: CustomTextStyles.bodyMediumBlack900,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }

  /// Navigates to the tMKiMScreen when the action is triggered.
  onTapSearchRow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tMKiMScreen);
  }

  /// Navigates to the tNgQuanLhsTabContainerScreen when the action is triggered.
  onTapStacknumbertext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tNgQuanLhsTabContainerScreen);
  }
}
