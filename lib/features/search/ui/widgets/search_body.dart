import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';
import 'package:grad_comp/features/search/logic/search_cubit.dart';
import 'package:grad_comp/features/search/logic/search_state.dart';
import 'package:grad_comp/features/search/logic/search_type.dart';
import 'active_filters_display.dart';
import 'search_filters_bar.dart';
import 'search_results_list.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  final _searchController = TextEditingController();
  final _locationController = TextEditingController();
  final _jobTitleController = TextEditingController();
  final _skillsController = TextEditingController();
  final RangeValues _defaultSalaryRange = const RangeValues(0, 250000);
  late RangeValues _currentSalaryRange;
  final List<String> _selectedSkills = [];

  @override
  void initState() {
    super.initState();
    _currentSalaryRange = _defaultSalaryRange;
  }

  @override
  void dispose() {
    _searchController.dispose();
    _locationController.dispose();
    _jobTitleController.dispose();
    _skillsController.dispose();
    super.dispose();
  }

  void _applyFilters() {
    context.read<SearchCubit>().applyFiltersAndSearch(
          keyword: _searchController.text,
          location: _locationController.text,
          jobSearch: _jobTitleController.text,
          skills: _selectedSkills,
          minSalary: _currentSalaryRange == _defaultSalaryRange
              ? null
              : _currentSalaryRange.start.round(),
          maxSalary: _currentSalaryRange == _defaultSalaryRange
              ? null
              : _currentSalaryRange.end.round(),
        );
  }

  void _addSkill(String skill) {
    final trimmedSkill = skill.trim();
    if (trimmedSkill.isNotEmpty && !_selectedSkills.contains(trimmedSkill)) {
      setState(() {
        _selectedSkills.add(trimmedSkill);
      });
      _skillsController.clear();
      _applyFilters();
    }
  }

  void _onClearFilter(String filterKey, {String? value}) {
    if (filterKey == 'keyword') _searchController.clear();
    if (filterKey == 'location') _locationController.clear();
    if (filterKey == 'jobSearch') _jobTitleController.clear();
    if (filterKey == 'salary')
      setState(() => _currentSalaryRange = _defaultSalaryRange);
    if (filterKey == 'skill' && value != null) {
      setState(() {
        _selectedSkills.remove(value);
      });
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _applyFilters();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.moreLightBlue,
      appBar: AppBar(
        title: _buildAppBarTitle(),
        elevation: 1,
        backgroundColor: Colors.white,
        leading: const CustomBackButton()
      ),
      body: BlocListener<SearchCubit, SearchState>(
        listener: (context, state) {
          if (state is SearchSuccess &&
              state.results.isEmpty &&
              state.keyword == null) {
            _searchController.clear();
            _locationController.clear();
            _jobTitleController.clear();
            _skillsController.clear();
            setState(() {
              _currentSalaryRange = _defaultSalaryRange;
              _selectedSkills.clear();
            });
          }
        },
        child: Column(
          children: [
            SearchFiltersBar(
              locationController: _locationController,
              jobTitleController: _jobTitleController,
              skillsController: _skillsController,
              initialSalaryRange: _currentSalaryRange,
              onSalaryChanged: (values) =>
                  setState(() => _currentSalaryRange = values),
              onApplyFilters: _applyFilters,
              onSkillAdded: _addSkill,
            ),
            ActiveFiltersDisplay(
              onClearFilter: _onClearFilter,
            ),
            const Expanded(child: SearchResultsList()),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBarTitle() {
    // التصميم الجديد لحقل البحث
    final searchField = TextField(
      controller: _searchController,
      autofocus: true,
      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(

        hintText: 'Search...',
        hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 14.sp),
        prefixIcon: Icon(Icons.search, color: Colors.grey.shade500, size: 22),
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: ColorsManager.primary.withOpacity(0.6), width: 1.5),
        ),
      ),
      onSubmitted: (_) => _applyFilters(),
    );

    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen: (p, c) => c is SearchSuccess,
      builder: (context, state) {
        if (state is! SearchSuccess || state.isTypeLocked) {
          return searchField;
        }

        return Row(
          children: [
            Expanded(child: searchField),
            SizedBox(width: 8.h),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12,),
              decoration: BoxDecoration(
                color: ColorsManager.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<SearchType>(
                  value: state.searchType,
                  icon: const Icon(Icons.keyboard_arrow_down,
                      color: ColorsManager.primary),
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                  
                  items: SearchType.values
                      .map((type) => DropdownMenuItem(
                            value: type,
                            child: Text(type.name[0].toUpperCase() +
                                type.name.substring(1)),
                          ))
                      .toList(),
                  onChanged: (newType) {
                    if (newType != null) {
                      context.read<SearchCubit>().searchTypeChanged(newType);
                    }
                  },
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
