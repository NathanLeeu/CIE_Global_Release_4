import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_search_view.dart';
import '../dashboard_page/dashboard_page.dart';
import 'widgets/chipviewb23dccn_item_widget.dart';
import 'widgets/chipviewclose_item_widget.dart'; // ignore_for_file: must_be_immutable

class TMKiMScreen extends StatelessWidget {
  TMKiMScreen({Key? key})
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
            vertical: 12.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRowSearch(context),
              SizedBox(height: 16.v),
              _buildColumnLchstmkim(context),
              SizedBox(height: 29.v),
              _buildColumnTrnh(context),
              SizedBox(height: 26.v),
              Text(
                "Chương trình đào tạo",
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 11.v),
              Row(
                children: [
                  Text(
                    "1",
                    style: CustomTextStyles.bodyLargeRed300,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 13.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "Lưu học sinh Lào",
                      style: CustomTextStyles.bodyMediumGray900,
                    ),
                  )
                ],
              ),
              SizedBox(height: 11.v),
              Row(
                children: [
                  Text(
                    "2",
                    style: CustomTextStyles.bodyLargeRed300,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      top: 2.v,
                    ),
                    child: Text(
                      "Thạc sĩ VMCS",
                      style: CustomTextStyles.bodyMediumGray900,
                    ),
                  )
                ],
              ),
              SizedBox(height: 12.v),
              Row(
                children: [
                  Text(
                    "3",
                    style: CustomTextStyles.bodyLargeRed300,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "Liên kết quốc tế",
                      style: CustomTextStyles.bodyMediumGray900,
                    ),
                  )
                ],
              ),
              SizedBox(height: 5.v)
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
    );
  }

  /// Section Widget
  Widget _buildColumnLchstmkim(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Lịch sử tìm kiếm",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 12.v),
        Wrap(
          runSpacing: 7.84.v,
          spacing: 7.84.h,
          children:
              List<Widget>.generate(5, (index) => Chipviewb23dccnItemWidget()),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildColumnTrnh(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 1.h),
          child: Text(
            "Trình độ",
            style: theme.textTheme.titleMedium,
          ),
        ),
        SizedBox(height: 10.v),
        Wrap(
          runSpacing: 8.v,
          spacing: 8.h,
          children:
              List<Widget>.generate(3, (index) => ChipviewcloseItemWidget()),
        )
      ],
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
