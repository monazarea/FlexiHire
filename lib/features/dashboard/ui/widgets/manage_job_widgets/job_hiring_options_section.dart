import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/dashboard/logic/manage_job/manage_job_cubit.dart';

import '../../../../../core/theming/colors.dart';

class JobHiringOptionsSection extends StatefulWidget {
  const JobHiringOptionsSection({super.key});

  @override
  State<JobHiringOptionsSection> createState() => _JobHiringOptionsSectionState();
}

class _JobHiringOptionsSectionState extends State<JobHiringOptionsSection> {
  late bool _hiringMultiple;
  late final ManageJobCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<ManageJobCubit>();
    _hiringMultiple = _cubit.hiringMultiple;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),
        SwitchListTile(
          title: const Text('Hiring multiple candidates'),
          value: _hiringMultiple,
          onChanged: (value) {
            setState(() {
              _hiringMultiple = value;
              _cubit.hiringMultiple = value;
            });
          },
          activeColor: ColorsManager.primary,
          activeTrackColor: ColorsManager.primary.withOpacity(0.4),
          contentPadding: EdgeInsets.zero,
        ),
      ],
    );
  }
}