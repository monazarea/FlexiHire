import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/custom_network_image.dart';
import 'package:grad_comp/features/auth/logout/logic/logout_cubit.dart';
import 'package:grad_comp/features/auth/logout/ui/widgets/logout_confirmation_dialog.dart';

import '../../core/routing/routes.dart';

class SideMenuView extends StatefulWidget {
  const SideMenuView({super.key});

  @override
  State<SideMenuView> createState() => _SideMenuViewState();
}

class _SideMenuViewState extends State<SideMenuView> {
  String? _userName;
  String? _userEmail;
  String? _userImage;
  String? _userRole;

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  Future<void> _loadUserData() async {
    final name = await SharedPrefHelper.getString(SharedPrefKeys.userName);
    final email = await SharedPrefHelper.getString(SharedPrefKeys.userEmail);
    final image = await SharedPrefHelper.getString(SharedPrefKeys.userImage);
    final role = await SharedPrefHelper.getString(SharedPrefKeys.userRole);

    if (mounted) {
      setState(() {
        _userName = name;
        _userEmail = email;
        _userImage = image;
        _userRole = role;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        width: 280.w,
        color: ColorsManager.primary.withOpacity(0.8),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            _buildUserHeader(
              name: _userName ?? 'Guest',
              email: _userEmail ?? 'No email available',
              imageUrl: _userImage,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("BROWSE",
                      style: TextStyles.font13GrayW400
                          .copyWith(color: Colors.white70)),
                  SizedBox(height: 16.h),
                  if (_userRole == 'company')
                    _buildMenuItem(
                      icon: Icons.dashboard_outlined,
                      text: 'Dashboard',
                      onTap: () {
                        context.pop();
                        context.pushNamed(Routes.dashboardScreen);
                      },
                    )
                  else if (_userRole == 'user')
                    _buildMenuItem(
                      icon: Icons.bookmark_outline,
                      text: 'Saved Jobs',
                      onTap: () {
                        context.pop();
                        context.pushNamed(Routes.savedJobsScreen);
                      },
                    ),
                  _buildMenuItem(
                    icon: Icons.smart_toy_outlined,
                    text: 'AI Chat Bot',
                    onTap: () {
                      context.pop();
                       context.pushNamed(Routes.aiChatBotScreen,arguments: _userImage);
                    },
                  ),
                  // _buildMenuItem(
                  //   icon: Icons.chat_outlined,
                  //   text: 'Chats',
                  //   onTap: () {
                  //     context.pop();
                  //     // context.pushNamed(Routes.chatScreen);
                  //   },
                  // ),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(color: Colors.white24)),
                  _buildMenuItem(
                      icon: Icons.lock_outline_rounded,
                      text: 'Change Password',
                      onTap: () {
                        context.pop();
                        context.pushNamed(Routes.changePasswordScreen);
                      }),
                  _buildMenuItem(
                    icon: Icons.info_outline_rounded,
                    text: 'About Us',
                    onTap: () {
                      context.pop(); // لإغلاق القائمة الجانبية أولاً
                      context.pushNamed(Routes.aboutUsScreen); // للانتقال للشاشة الجديدة
                    },
                  ),
                  _buildMenuItem(
                    icon: Icons.info_outline_rounded,
                    text: 'Contact Us',
                    onTap: () {
                      context.pop();
                      context.pushNamed(Routes.aboutUsScreen);
                    },
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(color: Colors.white24)),
                  _buildMenuItem(
                    icon: Icons.logout,
                    text: 'Logout',
                    onTap: () async {
                      final logoutCubit = context.read<LogoutCubit>();
                      Navigator.of(context).pop();
                      final shouldLogout =
                          await showLogoutConfirmationDialog(context);
                      if (shouldLogout == true) {
                        logoutCubit.logout();
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildUserHeader(
      {required String name, required String email, String? imageUrl}) {
    return UserAccountsDrawerHeader(
      accountName: Text(name, style: TextStyles.font16WhiteW600),
      accountEmail:
          Text(email, style: TextStyle(color: Colors.white70, fontSize: 13.sp)),
      currentAccountPicture: CustomNetworkImage(
        imageUrl: imageUrl,
        width: 72,
        height: 72,
        borderRadius: 50,
        fit: BoxFit.cover,
        fallbackIcon: Icons.person,
      ),
      decoration: const BoxDecoration(color: Colors.transparent),
    );
  }

  Widget _buildMenuItem(
      {required IconData icon, required String text, VoidCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(text,
          style:
              TextStyles.font16WhiteW600.copyWith(fontWeight: FontWeight.w500)),
      onTap: onTap,
      horizontalTitleGap: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      hoverColor: ColorsManager.primary.withOpacity(0.5),
    );
  }
}
