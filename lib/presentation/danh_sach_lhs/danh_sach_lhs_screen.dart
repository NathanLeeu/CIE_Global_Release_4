import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import '../dashboard_page/dashboard_page.dart';
import 'widgets/userprofile1_item_widget.dart'; // ignore_for_file: must_be_immutable

class DanhSChLhsScreen extends StatelessWidget {
  DanhSChLhsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 11.v,
          ),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "Danh sách lưu học sinh Lào",
                    style: CustomTextStyles.headlineSmallBlack90001,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              _buildRowSearch(context),
              SizedBox(height: 23.v),
              _buildRowTT(context),
              SizedBox(height: 11.v),
              Divider(
                indent: 8.h,
                endIndent: 12.h,
              ),
              SizedBox(height: 8.v),
              _buildRowOne(context),
              SizedBox(height: 9.v),
              _buildUserProfile(context)
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
    );
  }

  /// Section Widget
  Widget _buildRowSearch(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomSearchView(
          controller: searchController,
          hintText: "Tìm kiếm sinh viên",
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
    );
  }

  /// Section Widget
  Widget _buildRowTT(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 22.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "TT",
            style: theme.textTheme.titleSmall,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 2.v,
            ),
            child: Text(
              "Họ & tên",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(),
          Text(
            "Mã sinh viên",
            style: theme.textTheme.titleSmall,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              bottom: 2.v,
            ),
            child: Text(
              "Điểm",
              style: theme.textTheme.titleSmall,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRowOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 14.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 20.v),
            child: Text(
              "1",
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Container(
            width: 88.h,
            margin: EdgeInsets.only(left: 18.h),
            child: Text(
              "Phonemany Sisouvanthong",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyMedium!.copyWith(
                height: 1.25,
              ),
            ),
          ),
          Spacer(
            flex: 58,
          ),
          Container(
            width: 63.h,
            margin: EdgeInsets.only(bottom: 2.v),
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
            flex: 41,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 19.v),
            child: Text(
              "3.2/4.0",
              style: theme.textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 12.h,
      ),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 11.v,
          );
        },
        itemCount: 14,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget();
        },
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
}
