import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/search/logic/search_cubit.dart';
import 'package:grad_comp/features/search/logic/search_state.dart';

import '../../../../core/theming/colors.dart';
import '../../logic/search_type.dart';

class ActiveFiltersDisplay extends StatelessWidget {
  final Function(String, {String? value}) onClearFilter;

  const ActiveFiltersDisplay({
    super.key,
    required this.onClearFilter,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is! SearchSuccess) return const SizedBox.shrink();

        final filters = <Widget>[];

        // --- 2. التعديل الرئيسي هنا ---
        // تم حذف الكود الذي كان يضيف Chip الكلمة المفتاحية

        if (state.location != null && state.location!.isNotEmpty) {
          filters.add(_buildFilterChip('Location: ${state.location}', () => onClearFilter('location')));
        }
        if (state.jobSearch != null && state.jobSearch!.isNotEmpty) {
          filters.add(_buildFilterChip('Job: ${state.jobSearch}', () => onClearFilter('jobSearch')));
        }
        if (state.searchType == SearchType.jobs && (state.minSalary != null || state.maxSalary != null)) {
          filters.add(_buildFilterChip('Salary: \$${(state.minSalary! / 1000).round()}k : \$${(state.maxSalary! / 1000).round()}k', () => onClearFilter('salary')));
        }
        if (state.searchType == SearchType.jobs) {
          for (var skill in state.skills) {
            filters.add(_buildFilterChip('Skill: $skill', () => onClearFilter('skill', value: skill)));
          }
        }

        if (filters.isEmpty) return const SizedBox.shrink();

        return Container(
          width: double.infinity,
          color: Colors.white,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Wrap(spacing: 8, runSpacing: 8, children: filters),
        );
      },
    );
  }

  Widget _buildFilterChip(String label, VoidCallback onDeleted) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: Color(0xFF1DA5CA),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            label,
            style: TextStyle(
              color: ColorsManager.white,
              fontWeight: FontWeight.w600,
              fontSize: 13.sp,
            ),
          ),
          SizedBox(width: 6.w),
          InkWell(
            onTap: onDeleted,
            customBorder: const CircleBorder(),
            child: Icon(
              Icons.close_rounded,
              size: 16.sp,
              color: ColorsManager.white,
              //weight:900.0 ,
            ),
          ),
        ],
      ),
    );
  }
}
