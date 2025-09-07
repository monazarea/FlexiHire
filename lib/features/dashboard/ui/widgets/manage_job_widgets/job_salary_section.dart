// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_comp/features/dashboard/logic/manage_job/manage_job_cubit.dart';
//
// class JobSalarySection extends StatefulWidget {
//   const JobSalarySection({super.key});
//
//   @override
//   State<JobSalarySection> createState() => _JobSalarySectionState();
// }
//
// class _JobSalarySectionState extends State<JobSalarySection> {
//   // متغيرات محلية لإدارة حالة هذا الويدجت فقط
//   late bool _salaryNegotiable;
//   late String _selectedPaymentPeriod;
//   // متغير للوصول للكيوبت بسهولة
//   late final ManageJobCubit _cubit;
//
//   @override
//   void initState() {
//     super.initState();
//     // نحصل على نسخة الكيوبت ونهيئ المتغيرات المحلية
//     _cubit = context.read<ManageJobCubit>();
//     _salaryNegotiable = _cubit.salaryNegotiable;
//     _selectedPaymentPeriod = _cubit.selectedPaymentPeriod;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 0,
//       shape: RoundedRectangleBorder(
//         side: BorderSide(color: Theme.of(context).colorScheme.outline.withOpacity(0.5)),
//         borderRadius: const BorderRadius.all(Radius.circular(12)),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Salary Details', style: Theme.of(context).textTheme.titleLarge),
//             const SizedBox(height: 16),
//             Row(
//               children: [
//                 Expanded(
//                   child: TextFormField(
//                     controller: _cubit.minSalaryController,
//                     decoration: const InputDecoration(labelText: 'Min Salary', border: OutlineInputBorder()),
//                     keyboardType: TextInputType.number,
//                   ),
//                 ),
//                 const SizedBox(width: 16),
//                 Expanded(
//                   child: TextFormField(
//                     controller: _cubit.maxSalaryController,
//                     decoration: const InputDecoration(labelText: 'Max Salary', border: OutlineInputBorder()),
//                     keyboardType: TextInputType.number,
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             DropdownButtonFormField<String>(
//               value: _selectedPaymentPeriod,
//               decoration: const InputDecoration(labelText: 'Payment Period', border: OutlineInputBorder()),
//               items: ['monthly', 'yearly', 'hourly']
//                   .map((p) => DropdownMenuItem(value: p, child: Text(p)))
//                   .toList(),
//               onChanged: (value) {
//                 if (value != null) {
//                   setState(() {
//                     _selectedPaymentPeriod = value;
//                     _cubit.selectedPaymentPeriod = value;
//                   });
//                 }
//               },
//             ),
//             SwitchListTile(
//               title: const Text('Salary is negotiable'),
//               value: _salaryNegotiable,
//               onChanged: (value) {
//                 setState(() {
//                   _salaryNegotiable = value;
//                   _cubit.salaryNegotiable = value;
//                 });
//               },
//               contentPadding: EdgeInsets.zero,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/features/dashboard/logic/manage_job/manage_job_cubit.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/widgets/app_text_form_field.dart';
import '../../../../../core/widgets/section_title.dart';

class JobSalarySection extends StatefulWidget {
  const JobSalarySection({super.key});

  @override
  State<JobSalarySection> createState() => _JobSalarySectionState();
}

class _JobSalarySectionState extends State<JobSalarySection> {
  late bool _salaryNegotiable;
  late String _selectedPaymentPeriod;
  late final ManageJobCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<ManageJobCubit>();
    _salaryNegotiable = _cubit.salaryNegotiable;
    _selectedPaymentPeriod = _cubit.selectedPaymentPeriod;
  }

  final Map<String, String> currencies = {
    'US Dollar (USD)': 'USD',
    'Euro (EUR)': 'EUR',
    'British Pound (GBP)': 'GBP',
    'Japanese Yen (JPY)': 'JPY',
    'Australian Dollar (AUD)': 'AUD',
    'Canadian Dollar (CAD)': 'CAD',
    'Swiss Franc (CHF)': 'CHF',
    'Chinese Yuan (CNY)': 'CNY',
    'Egyptian Pound (EGP)': 'EGP',
    'UAE Dirham (AED)': 'AED',
    'Saudi Riyal (SAR)': 'SAR',
    'Indian Rupee (INR)': 'INR',
    'Brazilian Real (BRL)': 'BRL',
    'South African Rand (ZAR)': 'ZAR',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionTitle(title: "Salary Details"),
        SizedBox(height: 16.h),

        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Min Salary", style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(height: 6.h),
                  AppTextFormField(

                    controller: _cubit.minSalaryController,
                    hintText: 'Enter amount',
                    keyboardType: TextInputType.number,
                    validator: (_) => null,
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Max Salary", style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(height: 6.h),
                  AppTextFormField(

                    controller: _cubit.maxSalaryController,
                    hintText: 'Enter amount',
                    keyboardType: TextInputType.number,
                    validator: (_) => null,
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 16.h),

        Text("Payment Period", style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(height: 6.h),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          decoration: BoxDecoration(
            color: ColorsManager.morelightGray,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300,width: 1.5),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedPaymentPeriod,
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              style: Theme.of(context).textTheme.bodyMedium,
              dropdownColor: Colors.white,
              isExpanded: true,
              items: ['monthly', 'yearly', 'hourly']
                  .map((p) => DropdownMenuItem(value: p, child: Text(p,style: TextStyle(fontSize: 16,),)))
                  .toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _selectedPaymentPeriod = value;
                    _cubit.selectedPaymentPeriod = value;
                  });
                }
              },
            ),
          ),
        ),
        SizedBox(height: 16.h),

        Text("Payment Currency", style: Theme.of(context).textTheme.bodyMedium),
        SizedBox(height: 6.h),

        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          decoration: BoxDecoration(
            color: ColorsManager.morelightGray,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.grey.shade300, width: 1.5),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: currencies.entries
                  .firstWhere(
                    (entry) => entry.value == _cubit.selectedCurrency,
                orElse: () => currencies.entries.first, // يرجع أول عملة كـ default
              )
                  .key,
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              style: Theme.of(context).textTheme.bodyMedium,
              dropdownColor: Colors.white,
              isExpanded: true,
              items: currencies.keys.map((currencyName) {
                return DropdownMenuItem<String>(
                  value: currencyName,
                  child: Text(currencyName, style: const TextStyle(fontSize: 16)),
                );
              }).toList(),
              onChanged: (value) {
                if (value != null) {
                  setState(() {
                    _cubit.selectedCurrency = currencies[value]!; // نحفظ الكود فقط مثل "USD"
                  });
                }
              },
            ),

          ),
        ),


        SizedBox(height: 12.h),

        SwitchListTile(
          title: const Text('Salary is negotiable'),
          value: _salaryNegotiable,
          onChanged: (value) {
            setState(() {
              _salaryNegotiable = value;
              _cubit.salaryNegotiable = value;
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

