import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import 'package:grad_comp/features/dashboard/logic/delete_job/delete_job_cubit.dart';
import 'package:grad_comp/features/dashboard/logic/delete_job/delete_job_state.dart';
import 'package:grad_comp/features/dashboard/ui/widgets/dashboard_screen_widgets/dashboard_body.dart';
import 'package:grad_comp/features/dashboard/ui/widgets/dashboard_screen_widgets/posted_job_card.dart';

import '../logic/dashboard_screen/posted_jobs_cubit.dart';
import '../logic/dashboard_screen/posted_jobs_state.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // 1. نقوم بطلب البيانات من الكيوبت الذي تم توفيره من الراوتر
    context.read<PostedJobsCubit>().fetchInitialJobs();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_isBottom) return;
    context.read<PostedJobsCubit>().loadMoreJobs();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.moreLightBlue,
        elevation: 0,
        automaticallyImplyLeading: false, // عشان نشيل الباك الافتراضي
        title: Text(
          "My Jobs",
          style:TextStyles.font16BlackBold.copyWith(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w500,
              fontSize: 20
          ),
        ),
        centerTitle: true,
        leading: const CustomBackButton(), // ← الباك بوتن الخاص بيك
      ),
      backgroundColor: ColorsManager.moreLightBlue,
      body: SafeArea(
        child: DashboardBody(),
      ),
    );
  }
}