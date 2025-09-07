// lib/features/profiles/job_seeker/ui/tabs/widgets/review_header.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/custom_network_image.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/reviews_tab_models/review_model.dart';

class ReviewHeader extends StatelessWidget {
  final ReviewModel review;
  final VoidCallback? onCompanyTap;
  final BuildContext context;

  const ReviewHeader({ required this.context,super.key, required this.review,this.onCompanyTap});
  static const String fallbackImage = 'assets/images/company_replacement1.png';

  @override
  Widget build(BuildContext context) {
    final String fullName =
    '${review.company.firstName ?? ''} ${review.company.lastName ?? ''}'.trim();
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onCompanyTap,
          child: CustomNetworkImage(
            imageUrl: review.company.imageUrl,
            width: 45,
            height: 45,
            borderRadius: 10,
            fallbackImagePath: fallbackImage,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fullName ?? 'A Company',
                style: TextStyles.font16BlackBold,
              ),
              SizedBox(height: 4.h),
              _buildInfoRow(
                icon: Icons.calendar_today_outlined,
                text: review.createdAt?.split('T')[0] ?? 'N/A',
              ),
            ],
          ),
        ),
        _buildRatingStars(),
      ],
    );
  }

  Widget _buildInfoRow({required IconData icon, required String text}) {
    return Row(
      children: [
        Icon(icon, color: Colors.grey.shade600, size: 14.sp),
        const SizedBox(width: 4.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 13.sp,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }

  Widget _buildRatingStars() {
    return Row(
      children: List.generate(5, (index) {
        return Icon(
          index < review.rating ? Icons.star_rounded : Icons.star_border_rounded,
          color: Colors.amber,
          size: 20.sp,
        );
      }),
    );
  }
}