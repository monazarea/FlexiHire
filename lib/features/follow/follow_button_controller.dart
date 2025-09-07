import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/features/follow/data/repos/follow_repository.dart';
import 'package:grad_comp/features/follow/logic/follow_cubit.dart';
import 'package:grad_comp/features/follow/logic/follow_state.dart';
import '../../core/widgets/follow_button.dart';

class FollowButtonController extends StatefulWidget {
  final int companyId;
  final bool initialIsFollowing;
  final Function(bool isNowFollowing)? onStateChanged;
  final Widget Function(bool isFollowing, bool isLoading,VoidCallback? onTap)? customBuilder;

  const FollowButtonController({
    super.key,
    required this.companyId,
    required this.initialIsFollowing,
    this.onStateChanged,
    this.customBuilder,
  });

  @override
  State<FollowButtonController> createState() => _FollowButtonControllerState();
}

class _FollowButtonControllerState extends State<FollowButtonController> {
  late FollowCubit _cubit;

  @override
  void initState() {
    super.initState();
    _createCubit();
  }

  void _createCubit() {
    _cubit = FollowCubit(
      getIt<FollowRepository>(),
      widget.companyId,
      widget.initialIsFollowing,
    );
  }

  @override
  void didUpdateWidget(covariant FollowButtonController oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialIsFollowing != widget.initialIsFollowing) {
      _cubit.close();
      _createCubit();
      setState(() {});
    }
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: BlocConsumer<FollowCubit, FollowState>(
        listener: (context, state) {
          if (state.status == FollowRequestStatus.success) {
            widget.onStateChanged?.call(state.isFollowing);
            if (state.successMessage != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.successMessage!),
                  backgroundColor: Colors.green,
                ),
              );
            }
          }

          if (state.status == FollowRequestStatus.error && state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error!.message ?? 'An error occurred'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          final isLoading = state.status == FollowRequestStatus.loading;
          final onTap = isLoading ? null : () => _cubit.toggleFollow();
          if (widget.customBuilder != null) {
            return widget.customBuilder!(state.isFollowing, isLoading,onTap);
          } else {
            return FollowButtonUI(
              isFollowing: state.isFollowing,
              isLoading: isLoading,
              onTap: isLoading ? null : () => context.read<FollowCubit>().toggleFollow(),
            );
          }
        },
      ),
    );
  }
}
