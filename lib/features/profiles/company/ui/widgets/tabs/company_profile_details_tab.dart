import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/helpers/constants.dart';
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/app_text_button.dart';
import 'package:grad_comp/core/widgets/reusable_action_button.dart';
import 'package:grad_comp/core/widgets/section_container.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import 'package:grad_comp/features/profiles/company/data/models/company_profile_response.dart';
import '../../../../../follow/follow_button_controller.dart';
import '../../../../../follow/logic/follow_cubit.dart';
import '../../../../../rate_company/ui/rate_company_dialog.dart';
import '../../../../job_seeker/ui/widgets/profile_tab_widget/description_section.dart';

class CompanyAboutTab extends StatefulWidget {
  final CompanyProfileData companyData;
  final bool isOwner;
  final VoidCallback onRateSuccess;

  const CompanyAboutTab({
    super.key,
    required this.companyData,
    required this.isOwner,
    required this.onRateSuccess,
  });

  @override
  State<CompanyAboutTab> createState() => _CompanyAboutTabState();
}

class _CompanyAboutTabState extends State<CompanyAboutTab> {
  String? _userRole;

  @override
  void initState() {
    super.initState();
    _loadUserRole();
  }

  // 1. دالة لجلب دور المستخدم من الذاكرة
  Future<void> _loadUserRole() async {
    final role = await SharedPrefHelper.getString(SharedPrefKeys.userRole);
    if (mounted) {
      setState(() {
        _userRole = role;
      });
    }
  }

  void _showRatingDialog(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (_) => RateCompanyDialog( companyData: widget.companyData,),
    );

    // 3. إذا نجحت العملية، نستدعي الـ Callback
    if (result == true) {
      widget.onRateSuccess();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      children: [
        DescriptionSection(
          description: widget.companyData.description,
          title: 'About Company',
        ),
        SizedBox(height: 24.h),

        // 2. بناء الأزرار بناءً على الشروط
        _buildActionButtons(),
      ],
    );
  }

  Widget _buildActionButtons() {
    if (widget.isOwner) {
      return const SizedBox.shrink();
    }

    if (_userRole == 'user') {
      final hasReviewed = widget.companyData.reviews?.hasReviewed ?? false;
      final isFollowing = widget.companyData.following ?? false;

      return Padding(
        padding: EdgeInsets.only(top: 16.h),
        child: Row(
          children: [
            Expanded(
              child: FollowButtonController(
                companyId: widget.companyData.id,
                initialIsFollowing: isFollowing,
                customBuilder: (isFollowing, isLoading,onTap) {
                  return AppTextButton(
                    buttonHeight: 45,
                    buttonText: isFollowing ? "Following" : "Follow",
                    onPressed: onTap,
                    backgroundColor: isFollowing
                        ? ColorsManager.primary.withOpacity(0.4)
                        : ColorsManager.primary.withOpacity(0.8),
                    textStyle: TextStyles.font16WhiteW600.copyWith(fontSize: 16),
                  );
                },
              ),

            ),
            SizedBox(width: 16.w),
            // زر التقييم
            Expanded(
              child: AppTextButton(
                buttonHeight: 45,
                buttonText: hasReviewed ? "Rated" : "Rate Us",
                onPressed: hasReviewed ? null : () => _showRatingDialog(context),
                backgroundColor: hasReviewed ? ColorsManager.primary.withOpacity(0.4): ColorsManager.primary.withOpacity(0.8),
                textStyle:  TextStyles.font16WhiteW600.copyWith(fontSize: 16),
              ),
            ),
          ],
        ),
      );
    }

    // إذا لم يتحقق أي شرط، لا تعرض أي شيء
    return const SizedBox.shrink();
  }
}