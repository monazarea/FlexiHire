import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/features/job_seekers/ui/widgets/job_seeker_card.dart';
import 'package:grad_comp/features/profiles/company/logic/followers_tab/followers_cubit.dart';
import 'package:grad_comp/features/profiles/company/logic/followers_tab/followers_state.dart';

class FollowersTab extends StatefulWidget {
  const FollowersTab({super.key});

  @override
  State<FollowersTab> createState() => _FollowersTabState();
}

class _FollowersTabState extends State<FollowersTab> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // جلب البيانات عند بناء الويدجت لأول مرة
    context.read<FollowersCubit>().fetchInitialFollowers();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_isBottom) return;
    context.read<FollowersCubit>().loadMoreFollowers();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowersCubit, FollowersState>(
      builder: (context, state) {
        switch (state) {
          case FollowersLoading():
            return const Center(child: CircularProgressIndicator());

          case FollowersError(:final apiErrorModel):
            return Center(child: Text(apiErrorModel.message ?? 'Error'));

          case FollowersSuccess(
          followers: final followers,
          hasReachedMax: final hasReachedMax,
          isLoadingMore: final isLoadingMore,
          ):
            if (followers.isEmpty) {
              return const Center(child: Text('This company has no followers yet.'));
            }
            return ListView.builder(
              controller: _scrollController,
              padding: const EdgeInsets.all(16.0),
              itemCount: hasReachedMax ? followers.length : followers.length + 1,
              itemBuilder: (context, index) {
                if (index >= followers.length) {
                  return isLoadingMore
                      ? const Center(child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(),
                  ))
                      : const SizedBox.shrink();
                }
                final follower = followers[index];
                // نستخدم كارت الباحث عن عمل الذي صممناه سابقاً
                return JobSeekerCard(jobSeeker: follower);
              },
            );

          default:
            return const Center(child: Text('Something went wrong.'));
        }
      },
    );
  }
}