
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';
import 'package:grad_comp/features/profiles/company/data/models/company_profile_response.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/reviews_tab_models/review_model.dart';
import 'package:grad_comp/features/rate_company/data/models/rate_company_request_body.dart';
import 'package:grad_comp/features/rate_company/data/repos/rate_company_repository.dart';
import 'rate_company_state.dart';
import 'review_update_service.dart';

class RateCompanyCubit extends Cubit<RateCompanyState> {
  final RateCompanyRepository _rateCompanyRepository;
  final ReviewUpdateService _reviewUpdateService = ReviewUpdateService();

  RateCompanyCubit(this._rateCompanyRepository) : super(const RateCompanyState.initial());

  void submitReview({
    required CompanyProfileData companyData,
    required int rating,
    required String comment,
  }) async {
    if (state is RateCompanySubmitting) return;

    emit(const RateCompanyState.submitting());

    final requestBody = RateCompanyRequestBody(
      companyId: companyData.id,
      rating: rating,
      comment: comment,
    );
    final result = await _rateCompanyRepository.createReview(requestBody);

    switch (result) {
      case Success(data: final response):
        emit(RateCompanyState.success(response));

        if (response.review != null) {
          // نقوم بإنشاء ReviewModel جديد باستخدام البيانات المتاحة
          final newReviewForList = ReviewModel(
            id: response.review!.id,
            rating: response.review!.rating?.toDouble() ?? 0.0,
            comment: response.review!.comment,
            createdAt: response.review!.createdAt,
            // نستخدم بيانات الشركة التي وصلتنا
            company: CompanyModel(
              id: companyData.id,
              firstName: companyData.firstName,
              lastName: companyData.lastName,
              imageUrl: companyData.imageUrl,
            ),
          );
          _reviewUpdateService.newReviewAdded(newReviewForList);
        }
        break;
      case Failure(:final apiErrorModel):
        emit(RateCompanyState.error(apiErrorModel));
        break;
    }
  }
}