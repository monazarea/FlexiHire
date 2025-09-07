import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';
import 'package:grad_comp/core/widgets/vertical_job_card.dart';
import '../../../core/theming/styles.dart';
import '../logic/saved_jobs_cubit.dart';
import '../logic/saved_jobs_state.dart';

class SavedJobsScreen extends StatefulWidget {
  const SavedJobsScreen({super.key});

  @override
  State<SavedJobsScreen> createState() => _SavedJobsScreenState();
}

class _SavedJobsScreenState extends State<SavedJobsScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    // التأكد من أن الكيوبت يجلب البيانات عند فتح الشاشة
    context.read<SavedJobsCubit>().fetchInitialJobs();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      context.read<SavedJobsCubit>().loadMoreJobs();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.moreLightBlue,
      appBar: AppBar(
        backgroundColor: ColorsManager.moreLightBlue,
        title: Text('Saved Jobs',style:TextStyles.font16BlackBold.copyWith(
            color: Colors.grey.shade800,
            fontWeight: FontWeight.w500,
            fontSize: 22
        ),),
        centerTitle: true,
        leading: CustomBackButton(),
      ),
      body: BlocBuilder<SavedJobsCubit, SavedJobsState>(
        builder: (context, state) {
          switch (state) {
            case SavedJobsLoading():
              return const Center(child: CircularProgressIndicator());

            case SavedJobsError(error: final errorMsg):
              return Center(child: Text(errorMsg));

            case SavedJobsSuccess(
            savedJobs: final savedJobs,
            isLoadingMore: final isLoadingMore):
              if (savedJobs.isEmpty) {
                return const Center(child: Text('You have no saved jobs yet.'));
              }
              return ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(16.0),
                itemCount:
                isLoadingMore ? savedJobs.length + 1 : savedJobs.length,
                itemBuilder: (context, index) {
                  if (index >= savedJobs.length) {
                    return const Center(child: CircularProgressIndicator());
                  }

                  // -- V  بداية التعديل V --
                  final originalJob = savedJobs[index].job;

                  // ١. ننشئ نسخة جديدة من الوظيفة مع فرض أن حالتها محفوظة
                  final jobWithCorrectState = originalJob.copyWith(saved: true);

                  // ٢. نمرر النسخة المصححة للكارت مع الـ callback
                  return VerticalJobCard(
                    key: ValueKey(originalJob.id),
                    job: jobWithCorrectState,
                    onSaveStateChanged: (isNowSaved) {
                      // إذا تم إلغاء الحفظ
                      if (!isNowSaved) {
                        // نطلب من الكيوبت إزالة الوظيفة من القائمة
                        context
                            .read<SavedJobsCubit>()
                            .removeJobFromList(originalJob.id);
                      }
                    },
                  );
                  // -- ^ نهاية التعديل ^ --
                },
              );

            default:
              return const Center(child: Text('Something went wrong.'));
          }
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