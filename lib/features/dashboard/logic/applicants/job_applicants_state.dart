import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/applicants/job_proposal_model.dart';

part 'job_applicants_state.freezed.dart';

@freezed
class JobApplicantsState with _$JobApplicantsState {
  const factory JobApplicantsState.initial() = _Initial;
  // V-- تم تغيير أسماء الحالات هنا --V
  const factory JobApplicantsState.contentNotFound() = ContentNotFound;
  const factory JobApplicantsState.loading() = JobApplicantsLoading;
  const factory JobApplicantsState.success({
    required List<JobProposalModel> applicants,
    required bool hasReachedMax,
    @Default(false) bool isLoadingMore,
  }) = JobApplicantsSuccess;
  const factory JobApplicantsState.error({required String error}) = JobApplicantsError;
}