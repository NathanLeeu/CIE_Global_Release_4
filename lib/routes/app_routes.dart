import 'package:flutter/material.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/danh_sach_lhs/danh_sach_lhs_screen.dart';
import '../presentation/dashboard_container_screen/dashboard_container_screen.dart';
import '../presentation/ket_qua_tim_kiem/ket_qua_tim_kiem_screen.dart';
import '../presentation/tim_kiem/tim_kiem_screen.dart';
import '../presentation/tong_quan_lhs_tab_container/tong_quan_lhs_tab_container_screen.dart';
// ignore_for_file: must_be_immutable

class AppRoutes {
  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String tMKiMScreen = '/t_m_ki_m_screen';

  static const String kTQuTMKiMScreen = '/k_t_qu_t_m_ki_m_screen';

  static const String tNgQuanLhsPage = '/t_ng_quan_lhs_page';

  static const String tNgQuanLhsTabContainerScreen =
      '/t_ng_quan_lhs_tab_container_screen';

  static const String danhSChLhsScreen = '/danh_s_ch_lhs_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    dashboardContainerScreen: (context) => DashboardContainerScreen(),
    tMKiMScreen: (context) => TMKiMScreen(),
    kTQuTMKiMScreen: (context) => KTQuTMKiMScreen(),
    tNgQuanLhsTabContainerScreen: (context) => TNgQuanLhsTabContainerScreen(),
    danhSChLhsScreen: (context) => DanhSChLhsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => DashboardContainerScreen()
  };
}
