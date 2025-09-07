import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'sliver_tab_bar_delegate.dart';

class ProfileLayout extends StatelessWidget {
  final Widget header;
  final List<Tab> tabs;
  final List<Widget> tabViews;
  final PreferredSizeWidget? appBar;

  const ProfileLayout({
    super.key,
    required this.header,
    required this.tabs,
    required this.tabViews,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    final customTabBar = TabBar(
      tabs: tabs,
      labelColor: ColorsManager.white,
      unselectedLabelColor: Colors.grey.shade600,
      labelStyle: TextStyles.font14DarkW500.copyWith(fontWeight: FontWeight.bold,),
      unselectedLabelStyle: TextStyles.font14DarkW500,

      dividerColor: Colors.transparent,

      indicator: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorsManager.primary.withOpacity(0.7),
      ),
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
      indicatorSize: TabBarIndicatorSize.tab,
      splashFactory: NoSplash.splashFactory,
      overlayColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
          return states.contains(MaterialState.focused) ? null : Colors.transparent;
        },
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: DefaultTabController(
        length: tabs.length,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              header,
              SliverPersistentHeader(

                delegate: SliverTabBarDelegate(customTabBar),
                pinned: false,
              ),
            ];
          },
          body: TabBarView(
            children: tabViews,
          ),
        ),
      ),
    );
  }
}