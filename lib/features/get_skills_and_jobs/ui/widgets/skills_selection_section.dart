// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:flutter_typeahead/flutter_typeahead.dart';
// //
// // import '../../data/models/skill_model.dart';
// // import '../../logic/skills_jobs_cubit.dart';
// // import '../../logic/skills_jobs_state.dart';
// //
// // typedef OnSkillsChanged = void Function(List<String> skills);
// //
// // class SkillsSelectionSection extends StatefulWidget {
// //   final OnSkillsChanged onSkillsChanged;
// //   final List<String> initialSkills;
// //
// //   const SkillsSelectionSection({
// //     super.key,
// //     required this.onSkillsChanged,
// //     this.initialSkills = const [],
// //   });
// //
// //   @override
// //   State<SkillsSelectionSection> createState() => _SkillsSelectionSectionState();
// // }
// //
// // class _SkillsSelectionSectionState extends State<SkillsSelectionSection> {
// //   final List<String> _selectedSkills = [];
// //   final _skillsInputController = TextEditingController();
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _selectedSkills.addAll(widget.initialSkills);
// //   }
// //
// //   void _addSkill(String skill) {
// //     final trimmedSkill = skill.trim();
// //     if (trimmedSkill.isNotEmpty && !_selectedSkills.contains(trimmedSkill)) {
// //       setState(() {
// //         _selectedSkills.add(trimmedSkill);
// //       });
// //       _skillsInputController.clear();
// //       widget.onSkillsChanged(_selectedSkills);
// //     }
// //   }
// //
// //   void _removeSkill(String skill) {
// //     setState(() {
// //       _selectedSkills.remove(skill);
// //     });
// //     widget.onSkillsChanged(_selectedSkills);
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: [
// //         Text('Skills', style: Theme.of(context).textTheme.titleLarge),
// //         const SizedBox(height: 16),
// //
// //         BlocBuilder<SkillsJobsCubit, SkillsJobsState>(
// //           builder: (context, state) {
// //             return switch (state) {
// //               SkillsJobsLoading() => const Center(child: CircularProgressIndicator()),
// //               SkillsJobsError(error: final errorMsg) => Text('Failed to load skills: $errorMsg', style: const TextStyle(color: Colors.red)),
// //               SkillsJobsSuccess(response: final response) => TypeAheadField<SkillModel>(
// //                 suggestionsCallback: (String pattern) async {
// //                   return response.skills
// //                       .where((skill) => skill.name.toLowerCase().contains(pattern.toLowerCase()))
// //                       .toList();
// //                 },
// //                 itemBuilder: (context, suggestion) => ListTile(title: Text(suggestion.name)),
// //                 onSelected: (suggestion) => _addSkill(suggestion.name),
// //                 builder: (context, controller, focusNode) => TextField(
// //                   controller: controller,
// //                   focusNode: focusNode,
// //                   onEditingComplete: () => _addSkill(controller.text),
// //                   decoration: const InputDecoration(
// //                     labelText: 'Type a skill and press Enter',
// //                     border: OutlineInputBorder(),
// //                   ),
// //                 ),
// //               ),
// //
// //             _ => const Text('Loading skills suggestions...'),
// //             };
// //           },
// //         ),
// //         const SizedBox(height: 16),
// //
// //         if (_selectedSkills.isNotEmpty)
// //           Wrap(
// //             spacing: 8.0,
// //             runSpacing: 4.0,
// //             children: _selectedSkills.map((skill) {
// //               return Chip(
// //                 label: Text(skill),
// //                 onDeleted: () => _removeSkill(skill),
// //               );
// //             }).toList(),
// //           )
// //       ],
// //     );
// //   }
// // }
//
// // import 'package:flutter/material.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';
// // import 'package:flutter_typeahead/flutter_typeahead.dart';
// //
// // import '../../data/models/skill_model.dart';
// // import '../../logic/skills_jobs_cubit.dart';
// // import '../../logic/skills_jobs_state.dart';
// //
// // typedef OnSkillsChanged = void Function(List<String> skills);
// //
// // class SkillsSelectionSection extends StatefulWidget {
// //   final OnSkillsChanged onSkillsChanged;
// //   final List<String> initialSkills;
// //
// //   const SkillsSelectionSection({
// //     super.key,
// //     required this.onSkillsChanged,
// //     this.initialSkills = const [],
// //   });
// //
// //   @override
// //   State<SkillsSelectionSection> createState() => _SkillsSelectionSectionState();
// // }
// //
// // class _SkillsSelectionSectionState extends State<SkillsSelectionSection> {
// //   final List<String> _selectedSkills = [];
// //   final _skillsInputController = TextEditingController();
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _selectedSkills.addAll(widget.initialSkills);
// //   }
// //
// //   void _addSkill(String skill) {
// //     final trimmedSkill = skill.trim();
// //     if (trimmedSkill.isNotEmpty && !_selectedSkills.contains(trimmedSkill)) {
// //       setState(() {
// //         _selectedSkills.add(trimmedSkill);
// //       });
// //       _skillsInputController.clear();
// //       widget.onSkillsChanged(_selectedSkills);
// //     }
// //   }
// //
// //   void _removeSkill(String skill) {
// //     setState(() {
// //       _selectedSkills.remove(skill);
// //     });
// //     widget.onSkillsChanged(_selectedSkills);
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       crossAxisAlignment: CrossAxisAlignment.start,
// //       children: [
// //         Text('Skills', style: Theme.of(context).textTheme.titleLarge),
// //         const SizedBox(height: 16),
// //
// //         BlocBuilder<SkillsJobsCubit, SkillsJobsState>(
// //           builder: (context, state) {
// //             return switch (state) {
// //               SkillsJobsLoading() => const Center(child: CircularProgressIndicator()),
// //               SkillsJobsError(error: final errorMsg) => Text('Failed to load skills: $errorMsg', style: const TextStyle(color: Colors.red)),
// //               SkillsJobsSuccess(response: final response) => TypeAheadField<SkillModel>(
// //                 suggestionsCallback: (String pattern) async {
// //                   return response.skills
// //                       .where((skill) => skill.name.toLowerCase().contains(pattern.toLowerCase()))
// //                       .toList();
// //                 },
// //                 itemBuilder: (context, suggestion) => ListTile(title: Text(suggestion.name)),
// //                 onSelected: (suggestion) => _addSkill(suggestion.name),
// //                 builder: (context, controller, focusNode) => TextField(
// //                   controller: controller,
// //                   focusNode: focusNode,
// //                   onEditingComplete: () => _addSkill(controller.text),
// //                   decoration: const InputDecoration(
// //                     labelText: 'Type a skill and press Enter',
// //                     border: OutlineInputBorder(),
// //                   ),
// //                 ),
// //               ),
// //
// //             _ => const Text('Loading skills suggestions...'),
// //             };
// //           },
// //         ),
// //         const SizedBox(height: 16),
// //
// //         if (_selectedSkills.isNotEmpty)
// //           Wrap(
// //             spacing: 8.0,
// //             runSpacing: 4.0,
// //             children: _selectedSkills.map((skill) {
// //               return Chip(
// //                 label: Text(skill),
// //                 onDeleted: () => _removeSkill(skill),
// //               );
// //             }).toList(),
// //           )
// //       ],
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../../core/theming/colors.dart';
// import '../../../dashboard/logic/manage_job/manage_job_cubit.dart';
// import '../../data/models/skill_model.dart';
// import '../../logic/skills_jobs_cubit.dart';
// import '../../logic/skills_jobs_state.dart';
// import '../../../../core/widgets/app_text_form_field.dart';
// import '../../../../core/widgets/section_title.dart';
//
// typedef OnSkillsChanged = void Function(List<String> skills);
//
// class SkillsSelectionSection extends StatefulWidget {
//   final OnSkillsChanged onSkillsChanged;
//   final List<String> initialSkills;
//
//   const SkillsSelectionSection({
//     super.key,
//     required this.onSkillsChanged,
//     this.initialSkills = const [],
//   });
//
//   @override
//   State<SkillsSelectionSection> createState() => _SkillsSelectionSectionState();
// }
//
// class _SkillsSelectionSectionState extends State<SkillsSelectionSection> {
//   final List<String> _selectedSkills = [];
//   final _skillsInputController = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     _selectedSkills.addAll(widget.initialSkills);
//   }
//
//   void _addSkill(String skill) {
//     final trimmedSkill = skill.trim();
//     if (trimmedSkill.isNotEmpty && !_selectedSkills.contains(trimmedSkill)) {
//       setState(() {
//         _selectedSkills.add(trimmedSkill);
//       });
//       _skillsInputController.clear();
//
//       // -- V التعديل هنا V --
//       // ١. احذف هذا السطر لأنه خاطئ
//       // context.read<ManageJobCubit>().selectedSkills
//       //   ..clear()
//       //   ..addAll(_selectedSkills);
//
//       // ٢. أضف هذا السطر لإبلاغ الشاشة الأم بالتغيير (هذا هو الصحيح)
//       widget.onSkillsChanged(_selectedSkills);
//       // -- ^ نهاية التعديل ^ --
//     }
//   }
//
//   void _removeSkill(String skill) {
//     setState(() {
//       _selectedSkills.remove(skill);
//     });
//     widget.onSkillsChanged(_selectedSkills);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SectionTitle(title: "Skills"),
//         SizedBox(height: 10.h),
//
//         BlocBuilder<SkillsJobsCubit, SkillsJobsState>(
//           builder: (context, state) {
//             return switch (state) {
//               SkillsJobsLoading() => const Center(child: CircularProgressIndicator()),
//
//               SkillsJobsError(error: final errorMsg) => Text(
//                 'Failed to load skills: $errorMsg',
//                 style: const TextStyle(color: Colors.red),
//               ),
//
//               SkillsJobsSuccess(response: final response) => TypeAheadField<SkillModel>(
//                 decorationBuilder: (context, child) {
//                   return Material(
//                     color: ColorsManager.white,
//                     elevation: 4,
//                     borderRadius: BorderRadius.circular(12),
//                     child: child,
//                   );
//                 },
//                 suggestionsCallback: (String pattern) async {
//                   return response.skills
//                       .where((skill) => skill.name
//                       .toLowerCase()
//                       .contains(pattern.toLowerCase()))
//                       .toList();
//                 },
//                 itemBuilder: (context, suggestion) => ListTile(
//                   title: Text(suggestion.name),
//                 ),
//                 onSelected: (suggestion) => _addSkill(suggestion.name),
//
//                 builder: (context, controller, focusNode) {
//                   _skillsInputController.value = controller.value;
//
//                   return AppTextFormField(
//                     controller: _skillsInputController,
//                     focusNode: focusNode,
//                     hintText: 'Type a skill and press Enter',
//                     validator: (_) => null,
//                     maxLines: 1,
//                     onEditingComplete: () => _addSkill(_skillsInputController.text), // ← تفعيل Enter
//
//                     // ← تفعيل الضغط على زر الإضافة
//                     suffixIcon: IconButton(
//                       icon: const Icon(Icons.add),
//                       onPressed: () => _addSkill(_skillsInputController.text),
//                     ),
//                   );
//                 },
//               ),
//
//               _ => const Text('Loading skills suggestions...'),
//             };
//           },
//         ),
//
//         const SizedBox(height: 20),
//
//         if (_selectedSkills.isNotEmpty)
//           Wrap(
//             spacing: 8.w,
//             runSpacing: 6.h,
//             children: _selectedSkills.map((skill) {
//               return Chip(
//                 backgroundColor: ColorsManager.primary.withOpacity(0.3),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular( 16),
//                 ),
//                 label: Text(skill),
//                 deleteIcon: const Icon(Icons.close_rounded),
//                 onDeleted: () => _removeSkill(skill),
//               );
//             }).toList(),
//           )
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';
import 'package:grad_comp/features/dashboard/logic/manage_job/manage_job_cubit.dart';

import '../../data/models/skill_model.dart';
import '../../logic/skills_jobs_cubit.dart';
import '../../logic/skills_jobs_state.dart';

class SkillsSelectionSection extends StatefulWidget {
  final List<String> initialSkills;

  const SkillsSelectionSection({
    super.key,
    required this.initialSkills,
  });

  @override
  State<SkillsSelectionSection> createState() => _SkillsSelectionSectionState();
}

class _SkillsSelectionSectionState extends State<SkillsSelectionSection> {
  final List<String> _selectedSkills = [];
  final _skillsInputController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // نسخ المهارات الأولية إلى الحالة المحلية للويدجت
    _selectedSkills.addAll(widget.initialSkills);
  }

  void _addSkill(String skill) {
    final trimmedSkill = skill.trim();
    if (trimmedSkill.isNotEmpty && !_selectedSkills.contains(trimmedSkill)) {
      setState(() {
        _selectedSkills.add(trimmedSkill);
      });
      _skillsInputController.clear();
      // نحدّث قائمة الكيوبت مباشرةً
      context.read<ManageJobCubit>().selectedSkills.add(trimmedSkill);
    }
  }

  void _removeSkill(String skill) {
    setState(() {
      _selectedSkills.remove(skill);
    });
    // نحدّث قائمة الكيوبت مباشرةً
    context.read<ManageJobCubit>().selectedSkills.remove(skill);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Skills', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        BlocBuilder<SkillsJobsCubit, SkillsJobsState>(
          builder: (context, state) {
            return switch (state) {
              SkillsJobsLoading() => const Center(child: CircularProgressIndicator()),
              SkillsJobsError(error: final errorMsg) => Text('Failed to load skills: $errorMsg', style: const TextStyle(color: Colors.red)),
              SkillsJobsSuccess(response: final response) => TypeAheadField<SkillModel>(
                controller: _skillsInputController,
                suggestionsCallback: (pattern) {
                  return response.skills
                      .where((skill) =>
                      skill.name.toLowerCase().contains(pattern.toLowerCase()))
                      .toList();
                },
                builder: (context, controller, focusNode) {
                  return AppTextFormField(
                    controller: controller,
                    focusNode: focusNode,
                    onEditingComplete: () => _addSkill(controller.text),
                    hintText: "Type a skill",
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.add_circle_outline),
                      onPressed: () => _addSkill(controller.text),
                    ),
                    validator: (value) {
                      // يمكن تركه فارغًا إذا لم تكن هناك حاجة للتحقق من الصحة هنا
                      return null;
                    },
                  );
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(title: Text(suggestion.name));
                },
                onSelected: (suggestion) {
                  _addSkill(suggestion.name);
                },
                emptyBuilder: (context) => const ListTile(
                  title: Text('No matching skills found, add it yourself!'),
                ),
              ),
              _ => const Text('Loading skills suggestions...'),
            };
          },
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: _selectedSkills.map((skill) {
            return Chip(
              label: Text(skill),
              onDeleted: () => _removeSkill(skill),
            );
          }).toList(),
        )
      ],
    );
  }
}