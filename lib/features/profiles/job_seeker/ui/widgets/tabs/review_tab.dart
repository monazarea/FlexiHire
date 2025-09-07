import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/reviews_tab_models/review_model.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/reviews_tab/reviews_list_cubit.dart';
import 'package:grad_comp/features/profiles/job_seeker/logic/reviews_tab/reviews_list_state.dart';
import '../../../../../../core/routing/routes.dart';
import '../../../../../../core/widgets/delete_confirmation_dialog.dart';
import '../reviews_tab_widgets/review_card.dart';

class ReviewsTab extends StatefulWidget {
  const ReviewsTab({super.key});

  @override
  State<ReviewsTab> createState() => _ReviewsTabState();
}

class _ReviewsTabState extends State<ReviewsTab> {
  @override
  void initState() {
    super.initState();
    // جلب البيانات عند بناء الويدجت لأول مرة
    context.read<ReviewsListCubit>().fetchInitialReviews();
  }

  // --- دالة جديدة لإظهار التفاصيل ---
  void _showFullReview(BuildContext context, ReviewModel review) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text('Review for ${review.company.firstName}'),
        content: Column(
          mainAxisSize: MainAxisSize.min, // لجعل الـ Dialog يأخذ أقل ارتفاع ممكن
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. إضافة صف النجوم هنا
            Row(
              children: List.generate(5, (index) {
                return Icon(
                  index < review.rating ? Icons.star_rounded : Icons.star_border_rounded,
                  color: Colors.amber,
                  size: 24.sp,
                );
              }),
            ),
            const SizedBox(height: 16),
            // 2. وضعنا النص داخل SingleChildScrollView للتعامل مع النصوص الطويلة
            SingleChildScrollView(
              child: Text(review.comment ?? 'No comment.'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReviewsListCubit, ReviewsListState>(
      builder: (context, state) {
        switch (state) {
          case ReviewsListLoading():
            return const Center(child: CircularProgressIndicator());

          case ReviewsListError(:final apiErrorModel):
            return Center(child: Text(apiErrorModel.message ?? 'Error'));

          case ReviewsListSuccess(reviews: final reviews):
            if (reviews.isEmpty) {
              return const Center(child: Text('You have no reviews yet.'));
            }
            return ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: reviews.length,
              itemBuilder: (context, index) {
                final review = reviews[index];
                return ReviewCard(
                  onCompanyTap: () {
                    context.pushNamed(
                      Routes.companyProfileScreen,
                      arguments: review.company.id.toString(),
                    );},
                  review: review,
                  onTap: () {
                    _showFullReview(context, review);
                  },
                  onDeleteTapped: () async {
                    final confirm = await showDeleteConfirmationDialog(
                      context: context,
                      title: 'Delete Review', // <-- عنوان مخصص
                      content: 'Are you sure you want to permanently delete this review?', // <-- محتوى مخصص
                    );
                    if (confirm == true) {
                      context.read<ReviewsListCubit>().deleteReview(review.id);
                    }
                  },
                );
              },
            );

          default:
            return const Center(child: Text('Something went wrong.'));
        }
      },
    );
  }
}