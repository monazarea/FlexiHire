  import 'package:flutter/material.dart';
  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:grad_comp/features/search/logic/search_cubit.dart';
  import 'package:grad_comp/features/search/logic/search_state.dart';
  import 'package:grad_comp/features/search/logic/search_type.dart';

  class AdvancedFiltersView extends StatefulWidget {
    const AdvancedFiltersView({super.key});

    @override
    State<AdvancedFiltersView> createState() => _AdvancedFiltersViewState();
  }

  class _AdvancedFiltersViewState extends State<AdvancedFiltersView> {
    RangeValues _currentRangeValues = const RangeValues(0, 200000);

    @override
    Widget build(BuildContext context) {
      return BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if (state is! SearchSuccess) return const SizedBox.shrink();

          // عرض الفلاتر فقط إذا كان نوع البحث هو Jobs
          if (state.searchType != SearchType.jobs) {
            return const SizedBox.shrink();
          }

          return Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Salary Range', style: Theme.of(context).textTheme.titleMedium),
                RangeSlider(
                  values: _currentRangeValues,
                  min: 0,
                  max: 200000,
                  divisions: 20,
                  labels: RangeLabels(
                    '\$${_currentRangeValues.start.round()}',
                    '\$${_currentRangeValues.end.round()}',
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                  onChangeEnd: (values) {
                    // تحديث الكيوبت فقط عند انتهاء المستخدم من التمرير
                    context.read<SearchCubit>().applyFiltersAndSearch(
                      minSalary: values.start.toInt(),
                      maxSalary: values.end.toInt(),
                    );
                  },
                ),
                // يمكنك إضافة TextField والمنطق الخاص بإضافة المهارات هنا
              ],
            ),
          );
        },
      );
    }
  }