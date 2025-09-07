import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/routing/routes.dart';
import 'package:grad_comp/features/job_seekers/ui/job_seekers_screen.dart';
import 'package:grad_comp/features/jobs/ui/jobs_screen.dart';
import 'package:grad_comp/features/search/logic/search_type.dart';
import 'package:grad_comp/features/search/ui/search_screen_args.dart';
import 'package:grad_comp/features/companies/ui/companies_screen.dart';
import 'package:grad_comp/features/home/ui/home_screen.dart';
import 'package:grad_comp/features/menu/side_menu_view.dart';
import 'package:grad_comp/features/profiles/widgets/my_profile_tap_screen.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/logic/companies/top_companies_cubit.dart';
import '../../features/home/logic/recent_jobs/recent_jobs_cubit.dart';
import '../../features/home/logic/recommended_jobs/recommended_jobs_cubit.dart';
import '../../features/notifcation/ui/widgets/notification_icon_badge.dart';

class MainAppShell extends StatefulWidget {
  const MainAppShell({super.key});

  @override
  State<MainAppShell> createState() => _MainAppShellState();
}

class _MainAppShellState extends State<MainAppShell> {
  int _pageIndex = 2; // الصفحة الافتراضية

  // قائمة الصفحات (تاب البروفايل في index 0)
  final List<Widget> _pages = [
    const MyProfileTabScreen(),
    const JobsScreen(),
    const HomeScreen(),
    const CompaniesScreen(),
    const JobSeekersScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  void refreshAllTabs() {
    context.read<TopCompaniesCubit>().getTopCompanies();
    context.read<RecentJobsCubit>().fetchRecentJobs();
    context.read<RecommendedJobsCubit>().fetchRecommendedJobs();
    // ممكن تضيف باقي الكيوبتات هنا لو حابة
  }

  @override
  Widget build(BuildContext context) {
    final bool showAppBar = _pageIndex != 0;

    return Scaffold(
      appBar: showAppBar
          ? AppBar(
        backgroundColor: ColorsManager.white,
        elevation: 1,
        leading: Builder(
          builder: (context) => IconButton(
            icon:
            const Icon(Icons.menu_rounded, color: Colors.black54, size: 28),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black54, size: 28),
            onPressed: () {
              Navigator.pushNamed(
                context,
                Routes.searchScreen,
                arguments: SearchScreenArgs(
                  initialSearchType: SearchType.jobs,
                  isTypeLocked: false,
                ),
              );
            },
          ),
          const NotificationIconBadge(),
        ],
      )
          : null,
      drawer: const SideMenuView(),
      body: IndexedStack(
        index: _pageIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: ColorsManager.primary,
        unselectedItemColor: Colors.grey.shade500,
        selectedLabelStyle:
        TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),
        unselectedLabelStyle: TextStyle(fontSize: 12.sp),
        items: [
          _buildNavItem(icon: Icons.person_outline, label: 'Profile'),
          _buildNavItem(icon: Icons.work_outline, label: 'Jobs'),
          _buildNavItem(icon: Icons.home_outlined, label: 'Home'),
          _buildNavItem(icon: Icons.apartment_outlined, label: 'Companies'),
          _buildNavItem(icon: Icons.group_outlined, label: 'Seekers'),
        ],
      ),
    );
  }

  BottomNavigationBarItem _buildNavItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4.0),
        child: Icon(icon, size: 28),
      ),
      label: label,
    );
  }
}
