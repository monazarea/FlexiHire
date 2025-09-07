import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/features/dashboard/data/models/dashboard_screen/dashboard_job_model.dart';
import 'package:grad_comp/features/dashboard/ui/widgets/job_applicants_widgets/applicant_card.dart';

import '../../../core/theming/styles.dart';
import '../../../core/widgets/content_not_found_widget.dart';
import '../../../core/widgets/custom_back_button.dart';
import '../logic/applicants/job_applicants_cubit.dart';
import '../logic/applicants/job_applicants_state.dart';

class JobApplicantsScreen extends StatefulWidget {
  final int jobId;
  final bool highlightNew;
  const JobApplicantsScreen({super.key, required this.jobId,this.highlightNew = false,});

  @override
  State<JobApplicantsScreen> createState() => _JobApplicantsScreenState();
}

class _JobApplicantsScreenState extends State<JobApplicantsScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      context.read<JobApplicantsCubit>().loadMoreApplicants();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.moreLightBlue,
      appBar: AppBar(
        leading: const CustomBackButton(),
        backgroundColor: ColorsManager.moreLightBlue,
        title: Text('Applicants',style:TextStyles.font16BlackBold.copyWith(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w500,
            fontSize: 22
        ),),
        centerTitle: true,
        actions: [
          // زر الترتيب (Ranking)
          TextButton.icon(
            onPressed: () {
              context.read<JobApplicantsCubit>().rankApplicants();
            },
            icon: Icon(Icons.sort,color: ColorsManager.primary.withOpacity(0.8),size: 25,),
            label: Text('Rank',style: TextStyles.font14DarkW500.copyWith(color: ColorsManager.primary.withOpacity(0.8)),),
          ),
        ],
      ),
      body: BlocBuilder<JobApplicantsCubit, JobApplicantsState>(
        builder: (context, state) {
          return switch (state) {
            JobApplicantsLoading() => const Center(child: CircularProgressIndicator()),

            JobApplicantsError(error: final errorMsg) => Center(child: Text(errorMsg)),
            ContentNotFound() => const ContentNotFoundWidget(),
            JobApplicantsSuccess(
            applicants: final applicants,
            hasReachedMax: final hasReachedMax,
            isLoadingMore: final isLoadingMore
            ) =>
                ListView.builder(
                  controller: _scrollController,
                  padding: const EdgeInsets.all(16.0),
                  // نضيف 1 إذا كان هناك تحميل للمزيد لعرض مؤشر التحميل في الأسفل
                  itemCount: isLoadingMore ? applicants.length + 1 : applicants.length,
                  itemBuilder: (context, index) {
                    // إذا كان هذا هو العنصر الأخير وهناك تحميل، نعرض المؤشر
                    if (index >= applicants.length) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    // وإلا، نعرض كارت المتقدم
                    return ApplicantCard(proposal: applicants[index],isNew: widget.highlightNew && index == 0,);
                  },
                ),

            _ => const Center(child: Text('No applicants found.')),
          };
        },
      ),
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }
}