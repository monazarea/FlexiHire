import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/widgets/section_container.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import 'package:grad_comp/features/profiles/job_seeker/data/models/profile_tab_models/skill_model.dart';
import '../../../../../../core/widgets/custom_chip.dart';
import '../../../../../get_skills_and_jobs/data/models/skill_model.dart';
import 'empty_state_widget.dart';

class SkillsSection extends StatelessWidget {
  final List<SkillModel>? skills;

  const SkillsSection({
    super.key,
    this.skills, // جعلناه اختيارياً
  });

  @override
  Widget build(BuildContext context) {
    // --- 1. نقوم بالتحقق من أن القائمة ليست null وليست فارغة هنا ---
    final bool hasSkills = skills != null && skills!.isNotEmpty;

    return SectionContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SectionTitle(title: 'Skills'),
          !hasSkills
              ? const EmptyStateWidget(
              message: 'No CV has been uploaded yet.')
              : _buildSkillsList(),
        ],
      ),
    );
  }

  Widget _buildSkillsList() {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Wrap(
        spacing: 10.0.w,
        runSpacing: 1.0.h,
        children: skills!.map((skill) {
          return CustomChip(labelText: skill.name);
        }).toList(),
      ),
    );
  }
}