import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/search/logic/search_cubit.dart';
import 'package:grad_comp/features/search/logic/search_state.dart';
import 'package:grad_comp/features/search/logic/search_type.dart';

import '../../../../core/theming/colors.dart';

class SearchFiltersBar extends StatelessWidget {
  final TextEditingController locationController;
  final TextEditingController jobTitleController;
  final TextEditingController skillsController;
  final RangeValues initialSalaryRange;
  final Function(RangeValues) onSalaryChanged;
  final VoidCallback onApplyFilters;
  final Function(String) onSkillAdded;

  const SearchFiltersBar({
    super.key,
    required this.locationController,
    required this.jobTitleController,
    required this.skillsController,
    required this.initialSalaryRange,
    required this.onSalaryChanged,
    required this.onApplyFilters,
    required this.onSkillAdded,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600);
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (p, c) =>
      (p is SearchSuccess && c is SearchSuccess) ? p.searchType != c.searchType : p.runtimeType != c.runtimeType,
      builder: (context, state) {
        if (state is! SearchSuccess || (state.keyword == null || state.keyword!.isEmpty)) {
          return const SizedBox.shrink();
        }

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // --- الفلاتر الديناميكية ---
              if (state.searchType == SearchType.companies)
                _buildStyledTextField(
                  controller: locationController,
                  hintText: 'Filter by Location...',
                  icon: Icons.location_on_outlined,
                  onSubmitted: (_) => onApplyFilters(),
                ),
              if (state.searchType == SearchType.jobSeekers)
                _buildStyledTextField(
                  controller: jobTitleController,
                  hintText: 'Filter by Job Title...',
                  icon: Icons.work_outline,
                  onSubmitted: (_) => onApplyFilters(),
                ),
              if (state.searchType == SearchType.jobs)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStyledTextField(
                      controller: locationController,
                      hintText: 'e.g. Cairo, Egypt',
                      icon: Icons.location_on_outlined,
                      onSubmitted: (_) => onApplyFilters(),
                    ),
                    const SizedBox(height: 8),
                    _buildStyledTextField(
                      controller: skillsController,
                      hintText: 'Add skill...',
                      icon: Icons.add,
                      isSkill: true,
                      onSkillAdded: onSkillAdded,
                      onSubmitted: onSkillAdded,
                    ),
                    const SizedBox(height: 16),
                    Text('Salary Range (USD)',
                        style: titleStyle),
                    SliderTheme(
                      data: SliderThemeData(
                        activeTrackColor: ColorsManager.primary,
                        inactiveTrackColor: Colors.grey.shade300,
                        thumbColor: ColorsManager.primary,
                        overlayColor: ColorsManager.primary.withOpacity(0.2),
                        valueIndicatorColor: ColorsManager.primary.withOpacity(0.8),
                      ),
                      child: RangeSlider(
                        values: initialSalaryRange,
                        min: 0,
                        max: 250000,
                        divisions: 50,
                        labels: RangeLabels(
                          '\$${(initialSalaryRange.start / 1000).round()}k',
                          '\$${(initialSalaryRange.end / 1000).round()}k',
                        ),
                        onChanged: onSalaryChanged,
                        onChangeEnd: (_) => onApplyFilters(),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }
  Widget _buildStyledTextField(
      {required TextEditingController controller,
        required String hintText,
        required IconData icon,
        required Function(String) onSubmitted,
        bool isSkill = false,
        Function(String)? onSkillAdded}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.grey.shade600, size: 20),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 14),
        filled: true,
        fillColor: Colors.grey.shade50,
        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey.shade100),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: ColorsManager.primary.withOpacity(0.6), width: 1.5),
        ),
        suffixIcon: isSkill
            ? IconButton(
          icon: const Icon(Icons.add_circle_outline),
          onPressed: () => onSkillAdded?.call(controller.text),
        )
            : null,
      ),
      onSubmitted: onSubmitted,
    );
  }
}