import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../dashboard_page/dashboard_page.dart';
import '../tong_quan_lhs/tong_quan_lhs_page.dart';
import 'widgets/userprofile_item_widget.dart';

class TNgQuanLhsTabContainerScreen extends StatefulWidget {
  const TNgQuanLhsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TNgQuanLhsTabContainerScreenState createState() =>
      TNgQuanLhsTabContainerScreenState();
}

class TNgQuanLhsTabContainerScreenState
    extends State<TNgQuanLhsTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 11.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "Lưu học sinh Lào",
                            style: CustomTextStyles.headlineSmallBlack90001,
                          ),
                        ),
                      ),
                      SizedBox(height: 33.v),
                      _buildRowView(context),
                      SizedBox(height: 38.v),
                      _buildColumnSinhVinCC(context),
                      SizedBox(height: 35.v),
                      _buildColumnTinhTrangSinh(context),
                      SizedBox(height: 36.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Tình trạng giấy tờ",
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      SizedBox(height: 14.v),
                      _buildTabview(context),
                      _buildTabBarView(context)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
  Widget _buildRowView(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              onTapStackview(context);
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
              color: appTheme.lightGreen50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.only(left: 81.h),
                      padding: EdgeInsets.symmetric(vertical: 10.v),
                      decoration: AppDecoration.fillLightGreenA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder55,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 56.v,
                            width: 50.h,
                            decoration: BoxDecoration(
                              color: appTheme.lightGreenA20089,
                              borderRadius: BorderRadius.circular(
                                28.h,
                              ),
                            ),
                          ),
                          SizedBox(height: 35.v)
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse23110x91,
                    height: 110.v,
                    width: 91.h,
                    alignment: Alignment.bottomLeft,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        right: 19.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 5.h),
                            child: CustomIconButton(
                              height: 60.adaptSize,
                              width: 60.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.fillWhiteATL30,
                              alignment: Alignment.centerRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup42,
                              ),
                            ),
                          ),
                          SizedBox(height: 40.v),
                          Text(
                            "63",
                            style: theme.textTheme.headlineSmall,
                          ),
                          SizedBox(height: 5.v),
                          Text(
                            "Tổng số sinh viên",
                            style: CustomTextStyles.titleMediumBlack900,
                          ),
                          SizedBox(height: 15.v),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 2.v,
                                  bottom: 4.v,
                                ),
                                child: Text(
                                  "Xem chi tiết",
                                  style: CustomTextStyles.bodyMediumGray60001,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowRight,
                                height: 24.v,
                                width: 23.h,
                                margin: EdgeInsets.only(left: 9.h),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 12.v,
                  );
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  return UserprofileItemWidget();
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnSinhVinCC(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sinh viên các ngành",
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 15.v),
          Row(
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
                    SizedBox(height: 7.v),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 1.v,
                            width: 306.h,
                            margin: EdgeInsets.only(top: 36.v),
                            decoration: BoxDecoration(
                              color: appTheme.black90001.withOpacity(0.12),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 44.v),
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
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 24.h),
                            child: Row(
                              children: [
                                Container(
                                  height: 91.v,
                                  width: 28.h,
                                  margin: EdgeInsets.only(top: 31.v),
                                  decoration: BoxDecoration(
                                    color: appTheme.redA100,
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(2.h),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 122.v,
                                  width: 28.h,
                                  margin: EdgeInsets.only(left: 20.h),
                                  decoration: BoxDecoration(
                                    color: appTheme.redA100,
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(2.h),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 150.v,
                            width: 28.h,
                            margin: EdgeInsets.only(left: 121.h),
                            decoration: BoxDecoration(
                              color: appTheme.blueA100,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(2.h),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 170.v,
                            width: 28.h,
                            margin: EdgeInsets.only(right: 108.h),
                            decoration: BoxDecoration(
                              color: appTheme.redA100,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(2.h),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 105.v,
                            width: 28.h,
                            margin: EdgeInsets.only(right: 59.h),
                            decoration: BoxDecoration(
                              color: appTheme.redA100,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(2.h),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: 267.h,
                              right: 11.h,
                            ),
                            decoration: AppDecoration.yellow.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL2,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(height: 36.v),
                                Container(
                                  height: 134.v,
                                  width: 28.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.redA100,
                                    borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(2.h),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            height: 115.v,
                            width: 28.h,
                            margin: EdgeInsets.only(left: 121.h),
                            decoration: BoxDecoration(
                              color: appTheme.redA100,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(2.h),
                              ),
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
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 47.h,
                right: 13.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "2018",
                    style: theme.textTheme.bodySmall,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "2019",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "2020",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "2021",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 23.h),
                    child: Text(
                      "2022",
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "2023",
                      style: theme.textTheme.bodySmall,
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 21.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 3.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.redA100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Đại học chính quy",
                      style: CustomTextStyles.bodySmallSFProDisplayBlack90001,
                    ),
                  ),
                  Container(
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 1.v,
                      bottom: 3.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.amber500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Thạc sĩ",
                      style: CustomTextStyles.bodySmallSFProDisplayBlack90001,
                    ),
                  ),
                  Container(
                    height: 10.adaptSize,
                    width: 10.adaptSize,
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 1.v,
                      bottom: 3.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.blueA100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "Nghiên cứu sinh",
                      style: CustomTextStyles.bodySmallSFProDisplayBlack90001,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildColumnTinhTrangSinh(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 26.v,
      ),
      decoration: AppDecoration.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 6.h),
              child: Text(
                "Tình trạng sinh viên",
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.centerRight,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgChart,
                  height: 150.v,
                  width: 283.h,
                  alignment: Alignment.centerLeft,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 103.h),
                    child: Text(
                      "125",
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.only(top: 25.v),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgArrow,
                          height: 8.v,
                          width: 4.h,
                          margin: EdgeInsets.only(
                            top: 9.v,
                            bottom: 8.v,
                          ),
                        ),
                        CustomElevatedButton(
                          width: 74.h,
                          text: "Thôi học: 12",
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "Tổng số sinh viên",
            style: CustomTextStyles.titleMediumBlack900,
          ),
          SizedBox(height: 4.v),
          Text(
            "Từ khoá 2015 - 2024",
            style: CustomTextStyles.titleSmallGray60001,
          ),
          SizedBox(height: 2.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 37.v,
      width: 328.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.blueGray900,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray60001,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'SF Pro Display',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: appTheme.red700,
        tabs: [
          Tab(
            child: Text(
              "Tất cả",
            ),
          ),
          Tab(
            child: Text(
              "Hộ chiếu",
            ),
          ),
          Tab(
            child: Text(
              "Thị thực",
            ),
          ),
          Tab(
            child: Text(
              "BHYT",
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 486.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          TNgQuanLhsPage(),
          TNgQuanLhsPage(),
          TNgQuanLhsPage(),
          TNgQuanLhsPage()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Trangch:
        return AppRoutes.dashboardPage;
      case BottomBarEnum.Luhcsinh:
        return "/";
      case BottomBarEnum.Vmcs:
        return "/";
      case BottomBarEnum.Lkqt:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.dashboardPage:
        return DashboardPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the danhSChLhsScreen when the action is triggered.
  onTapStackview(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.danhSChLhsScreen);
  }
}
