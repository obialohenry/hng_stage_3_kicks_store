import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hng_stage_3_kicks_store/src/screens.dart';
import 'package:hng_stage_3_kicks_store/view_model/dashboard_view_model.dart';
import '../../../src/config.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  DashboardScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen> {
  final List<Widget> _dashBoardPages = [
    StoreScreen(),
    LikedScreen(),
    OrdersScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var dashboardProvider = ref.watch(dashboardViewModel);
    return Scaffold(
      backgroundColor: AppColors.kWhite,
      body: _dashBoardPages[dashboardProvider.currentPage],
      bottomNavigationBar: BottomNavigationBar(
        useLegacyColorScheme: false,
        backgroundColor: AppColors.kWhite,
        selectedItemColor: AppColors.kForestGreen,
        unselectedItemColor: AppColors.kSilver,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          fontFamily: inter,
          fontSize: 9,
          fontWeight: FontWeight.w400,
          color: AppColors.kForestGreen,
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: inter,
          fontSize: 9,
          fontWeight: FontWeight.w400,
          color: AppColors.kSilver,
        ),
        items: [
          BottomNavigationBarItem(
            icon: dashboardProvider.currentPage == 0
                ? Image.asset(
                    AppImages.kActiveStoreLogo,
                    width: 24,
                    height: 24,
                  )
                : Image.asset(
                    AppImages.kStoreLogo,
                    width: 24,
                    height: 24,
                  ),
            label: store,
          ),
          BottomNavigationBarItem(
            icon: dashboardProvider.currentPage == 1
                ? Image.asset(
                    AppImages.kActiveLikedLogo,
                    width: 24,
                    height: 24,
                  )
                : Image.asset(
                    AppImages.kLikedLogo,
                    width: 24,
                    height: 24,
                  ),
            label: liked,
          ),
          BottomNavigationBarItem(
            icon: dashboardProvider.currentPage == 2
                ? Image.asset(
                    AppImages.kActiveOrdersLogo,
                    width: 24,
                    height: 24,
                  )
                : Image.asset(
                    AppImages.kOrderLogo,
                    width: 24,
                    height: 24,
                  ),
            label: orders,
          ),
          BottomNavigationBarItem(
            icon: dashboardProvider.currentPage == 3
                ? Image.asset(
                    AppImages.kActiveAccountLogo,
                    width: 24,
                    height: 24,
                  )
                : Image.asset(
                    AppImages.kAccountLogo,
                    width: 24,
                    height: 24,
                  ),
            label: account,
          ),
        ],
        onTap: (page) {
          dashboardProvider.setCurrentPage(page);
        },
      ),
    );
  }
}
