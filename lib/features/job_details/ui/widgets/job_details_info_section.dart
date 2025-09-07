// lib/features/job_details/ui/widgets/job_details_info_section.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/home/data/models/jobs/job_model.dart';

import 'job_details_info_item.dart';
import '../../../../core/theming/styles.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/helpers/salary_utils.dart'; // عشان formatSalary

class JobDetailsInfoSection extends StatelessWidget {
  final JobModel job;

  const JobDetailsInfoSection({super.key, required this.job});

  @override
  Widget build(BuildContext context) {
    // هنا بنستخدم double.tryParse() عشان نحول الـ String لرقم
    final double? minSalaryDouble = double.tryParse(job.minSalary ?? ''); // <--- تعديل هنا
    final double? maxSalaryDouble = double.tryParse(job.maxSalary ?? ''); // <--- تعديل هنا

    final String formattedMinSalary = formatSalary(minSalaryDouble); // <--- بنمرر الـ double
    final String formattedMaxSalary = formatSalary(maxSalaryDouble); // <--- بنمرر الـ double

    return Column(
      children: [
        JobDetailsInfoItem(
          svgPath: 'assets/svgs/coins.svg',
          label:'Salary',
          value: '\$$formattedMinSalary - \$$formattedMaxSalary /${job.paymentPeriod}',
          isNegotiable: job.salaryNegotiable == true,
        ),
        SizedBox(height: 20.h,),
        JobDetailsInfoItem(svgPath: 'assets/svgs/job_loc.svg',label:  'Location', value:job.location ?? 'N/A'),
        SizedBox(height: 20.h,),
        JobDetailsInfoItem(pngPath: 'assets/images/users.png', label: 'Candidates', value:job.hiringMultipleCandidates == true ? 'Multiple' : 'One'),
      ],
    );
  }
}