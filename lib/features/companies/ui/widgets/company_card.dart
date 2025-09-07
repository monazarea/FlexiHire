import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/info_row.dart';
import 'package:grad_comp/features/home/data/models/companies/company_model.dart';
import '../../../../../core/helpers/image_utils.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/widgets/custom_network_image.dart';
import '../../../../core/widgets/follow_button.dart';
import '../../../../core/widgets/highlited_text.dart';
import '../../../follow/follow_button_controller.dart';

class CompanyCard extends StatelessWidget {
  final CompanyModel company;
  final VoidCallback? onTap;
  final VoidCallback? onFollowTapped;
  final String? highlightTerm;
  final bool? showFollowButton;
  final Function(bool isFollowing)? onFollowStateChanged;

  const CompanyCard({
    super.key,
    required this.company,
    this.onTap,
    this.onFollowTapped,
    this.highlightTerm,
    this.showFollowButton ,
    this.onFollowStateChanged,
  });

  static const fallbackImage = 'assets/images/company_replacement1.png';

  @override
  Widget build(BuildContext context) {
    final String? imageUrl = getProcessedImageUrl(company.imageUrl);

    return Card(
      color: Colors.white,
      elevation: 2.0,
      shadowColor: ColorsManager.primary.withOpacity(0.4),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
          onTap: () {
            context.pushNamed(
              Routes.companyProfileScreen,
              arguments: company.id.toString(),
            );
        },
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // ✅ صورة دائرية صغيرة
                Container(
                  width: 50.w,
                  height: 50.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: ColorsManager.primary.withOpacity(0)),
                  ),
                  child: ClipOval(
                    child: CustomNetworkImage(
                      imageUrl: imageUrl,
                      width: 40.w,
                      height: 40.w,
                      fit: BoxFit.contain,
                      fallbackImagePath: fallbackImage,
                    ),
                  ),
                ),
                SizedBox(width: 12.w),
                _buildCompanyInfo(),
                SizedBox(width: 8.w),
                _buildActionsColumn(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCompanyInfo() {
    final String fullName = '${company.firstName ?? ''} ${company.lastName ?? ''}'.trim();
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 3.h),
          HighlightedText(
            text: fullName.isNotEmpty ? fullName : 'A Company',
            highlight: highlightTerm,
            style: TextStyles.font16BlackBold,
          ),
          SizedBox(height: 4.h,),
          InfoRow(
            iconData: Icons.location_on_outlined,
            text: company.location ?? 'Location',
            iconColor: ColorsManager.primary,
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              SizedBox(width: 5.w,),
              Text(
                '${company.jobsCount ?? 0} Active jobs',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }

  Widget _buildActionsColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        if (company.averageRating != null && company.averageRating! >= 0)
          InfoRow(
            iconData: Icons.star_rounded,
            text: '${company.averageRating?.toStringAsFixed(1)}',
            iconColor: Colors.amber,
          )
        else
          SizedBox(height: 20.h),
        //SizedBox(height: 0.h),
        if (showFollowButton!)
          FollowButtonController(
            companyId: company.id,
            initialIsFollowing: company.following ?? false,
            onStateChanged: onFollowStateChanged,
          )
        else
          const SizedBox(height: 32),
        SizedBox(height: 10.h,),

      ],
    );
  }
}
