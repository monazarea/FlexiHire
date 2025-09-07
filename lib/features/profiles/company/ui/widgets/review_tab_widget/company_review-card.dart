import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/custom_network_image.dart';

import '../../../../../../core/routing/routes.dart';
import '../../../../widgets/base_info_card.dart';
import '../../../data/models/company_review_model.dart';
import 'package:grad_comp/core/helpers/extensions.dart';

class CompanyReviewCard extends StatelessWidget {
  final CompanyReviewModel review;

  const CompanyReviewCard({super.key, required this.review});



  @override
  Widget build(BuildContext context) {
    final fullName = '${review.user?.firstName ?? ''} ${review.user?.lastName ?? ''}'.trim();
    final date = review.createdAt?.split('T')[0] ?? 'N/A';

    return BaseInfoCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(context,fullName, date),
          if (review.comment != null && review.comment!.isNotEmpty) ...[
            SizedBox(height: 12.h),
            Text(
              review.comment!,
              style: TextStyles.font13GrayW400.copyWith(height: 1.4),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ]
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context,String fullName, String date) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(

          onTap: () {
            if (review.user?.id != null){
            context.pushNamed(
                Routes.jobSeekerProfileScreen,
                arguments: review.user!.id.toString(),
              );
            }

          },
          borderRadius: BorderRadius.circular(10),
          child: CustomNetworkImage(
            imageUrl: review.user?.imageUrl,
            width: 45,
            height: 45,
            borderRadius: 10,
            fallbackIcon: Icons.person,
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(fullName, style: TextStyles.font16BlackBold),
              SizedBox(height: 4.h),
              _buildInfoRow(icon: Icons.calendar_today_outlined, text: date),
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
        SizedBox(width: 4.w),
        Text(
          text,
          style: TextStyle(fontSize: 13.sp, color: Colors.grey.shade700),
        ),
      ],
    );
  }

  Widget _buildRatingStars() {
    final rating =review.rating ?? 0;
    return Row(
      children: List.generate(5, (index) {
        return Icon(
          index < rating ? Icons.star_rounded : Icons.star_border_rounded,
          color: Colors.amber,
          size: 20.sp,
        );
      }),
    );
  }
}
