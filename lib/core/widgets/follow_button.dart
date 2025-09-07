import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/reusable_action_button.dart';

class FollowButtonUI extends StatelessWidget {
  final bool isFollowing;
  final VoidCallback? onTap;
  final bool isLoading;

  const FollowButtonUI({
    super.key,
    required this.isFollowing,
    this.onTap,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32.h,
      child: ActionButton(
        type: isFollowing
            ? ActionButtonType.following
            : ActionButtonType.follow,
        onTap:onTap,
      )
    );
  }
}