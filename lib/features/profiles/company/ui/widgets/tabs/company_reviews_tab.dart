import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/theming/styles.dart';
import '../../../data/models/company_profile_response.dart';
import '../review_tab_widget/company_review-card.dart';

class CompanyReviewsTab extends StatelessWidget {
  final CompanyProfileData company;

  const CompanyReviewsTab({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    final reviews = company.reviews?.reviews ?? [];

    if (reviews.isEmpty) {
      return Center(
        child: Text(
          'No reviews yet.',
          style: TextStyles.notYet,
        ),
      );
    }

    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      itemCount: reviews.length,
      separatorBuilder: (context, index) => SizedBox(height: 10.h),
      itemBuilder: (context, index) {
        final review = reviews[index];
        return CompanyReviewCard(review: review);
      },
    );
  }
}
