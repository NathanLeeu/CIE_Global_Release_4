import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import 'widgets/userprofilelist1_item_widget.dart';
import 'widgets/userprofilelisttwo_item_widget.dart'; // ignore_for_file: must_be_immutable

class KTQuTMKiMScreen extends StatelessWidget {
  KTQuTMKiMScreen({Key? key})
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
            padding: EdgeInsets.only(top: 8.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "Kết quả tìm kiếm: Năm 2021",
                        style: CustomTextStyles.headlineSmallBlack90001,
                      ),
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildSearchRow(context),
                  SizedBox(height: 16.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Liên kết đào tạo",
                        style: CustomTextStyles.titleMedium16,
                      ),
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      right: 38.h,
                    ),
                    child: _buildRowttOne(
                      context,
                      ttOne: "TT",
                      htnOne: "Họ & tên",
                      msinhvinOne: "Mã sinh viên",
                      imOne: "Điểm",
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildUserProfileList(context),
                  SizedBox(height: 25.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Lưu học sinh Lào",
                        style: CustomTextStyles.titleMedium16,
                      ),
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30.h,
                      right: 38.h,
                    ),
                    child: _buildRowttOne(
                      context,
                      ttOne: "TT",
                      htnOne: "Họ & tên",
                      msinhvinOne: "Mã sinh viên",
                      imOne: "Điểm",
                    ),
                  ),
                  SizedBox(height: 11.v),
                  _buildStack(context),
                  SizedBox(height: 8.v),
                  _buildUserProfileListTwo(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.fromLTRB(24.h, 8.v, 312.h, 8.v),
        onTap: () {
          onTapArrowleftone(context);
        },
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildSearchRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: CustomSearchView(
              controller: searchController,
              hintText: "Tìm kiếm sinh viên",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(12.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgHeroiconsOutliRed700,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 28.h,
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 9.v,
          );
        },
        itemCount: 6,
        itemBuilder: (context, index) {
          return Userprofilelist1ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildStack(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 88.h,
                  margin: EdgeInsets.only(left: 36.h),
                  child: Text(
                    "Phonemany Sisouvanthong",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.25,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Divider(),
                    SizedBox(height: 8.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 11.h,
                        right: 2.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 17.v),
                            child: Text(
                              "1",
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                          Spacer(
                            flex: 83,
                          ),
                          SizedBox(
                            width: 63.h,
                            child: Text(
                              "B23DCCN989",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                height: 1.25,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 16,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 16.v),
                            child: Text(
                              "3.2/4.0",
                              style: theme.textTheme.bodyMedium,
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
        Align(
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24.h,
                    right: 28.h,
                    bottom: 3.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Divider(),
                      SizedBox(height: 8.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 10.h,
                          right: 2.h,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 18.v),
                              child: Text(
                                "2",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                            Container(
                              width: 85.h,
                              margin: EdgeInsets.only(left: 16.h),
                              child: Text(
                                "Phouthakone Khounsathone",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  height: 1.25,
                                ),
                              ),
                            ),
                            Spacer(
                              flex: 59,
                            ),
                            SizedBox(
                              width: 63.h,
                              child: Text(
                                "B23DCCN989",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  height: 1.25,
                                ),
                              ),
                            ),
                            Spacer(
                              flex: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 17.v),
                              child: Text(
                                "3.2/4.0",
                                style: theme.textTheme.bodyMedium,
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
                alignment: Alignment.center,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 28.h,
                    vertical: 10.v,
                  ),
                  decoration: AppDecoration.outlineBlack,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgNavTrangCh,
                              height: 24.v,
                              width: 43.h,
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "Trang chủ",
                              style: CustomTextStyles.labelMediumSFProDisplay,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 28.h,
                          bottom: 2.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgNavLUHCSinh,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "Lưu học sinh",
                              style: theme.textTheme.labelMedium,
                            )
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 39,
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 2.v),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgNavVmcs,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "VMCS",
                              style: theme.textTheme.labelMedium,
                            )
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 8.h,
                          bottom: 2.v,
                        ),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgNavLkqt,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            SizedBox(height: 6.v),
                            Text(
                              "LKQT",
                              style: theme.textTheme.labelMedium,
                            )
                          ],
                        ),
                      )
                    ],
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
  Widget _buildUserProfileListTwo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 28.h,
      ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 11.v,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return UserprofilelisttwoItemWidget();
        },
      ),
    );
  }

  /// Common widget
  Widget _buildRowttOne(
    BuildContext context, {
    required String ttOne,
    required String htnOne,
    required String msinhvinOne,
    required String imOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          ttOne,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.black90001,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 2.v,
          ),
          child: Text(
            htnOne,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.black90001,
            ),
          ),
        ),
        Spacer(),
        Text(
          msinhvinOne,
          style: theme.textTheme.titleSmall!.copyWith(
            color: appTheme.black90001,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            bottom: 2.v,
          ),
          child: Text(
            imOne,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.black90001,
            ),
          ),
        )
      ],
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
