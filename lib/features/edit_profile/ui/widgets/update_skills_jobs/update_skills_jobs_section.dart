// lib/features/edit_profile/ui/widgets/update_skills_jobs_section.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';
import 'package:grad_comp/core/widgets/section_container.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import 'package:grad_comp/features/get_skills_and_jobs/data/models/skill_model.dart';
import 'package:grad_comp/features/get_skills_and_jobs/logic/skills_jobs_cubit.dart';
import 'package:grad_comp/features/get_skills_and_jobs/logic/skills_jobs_state.dart';
import '../../../../../core/widgets/shrink_wrap_button.dart';
import '../../../../get_skills_and_jobs/data/models/job_title_model.dart';
import '../../../logic/update_skills_jobs/update_skills_jobs_cubit.dart';
import '../../../logic/update_skills_jobs/update_skills_jobs_state.dart';
import 'update_skills_jobs_button_and_listener.dart';


class UpdateSkillsJobsSection extends StatefulWidget {
  final VoidCallback onUpdateSuccess;
  final List<SkillModel> initialSkills;
  final JobTitleModel? initialJob;

  const UpdateSkillsJobsSection({
    super.key,
    required this.onUpdateSuccess,
    required this.initialSkills,
    this.initialJob,
  });

  @override
  State<UpdateSkillsJobsSection> createState() => _UpdateSkillsJobsSectionState();
}

class _UpdateSkillsJobsSectionState extends State<UpdateSkillsJobsSection> {
  // متغيرات لإدارة الحالة المحلية
  final _jobTitleController = TextEditingController();
  final _skillInputController = TextEditingController();
  JobTitleModel? _selectedJob;
  final List<SkillModel> _selectedSkills = [];
  final _formKey = GlobalKey<FormState>();


  @override
  void initState() {
    super.initState();
    // تهيئة الويدجت بالقيم الأولية
    _selectedJob = widget.initialJob;
    _jobTitleController.text = widget.initialJob?.name ?? '';
    _selectedSkills.addAll(widget.initialSkills);
  }

  @override
  void dispose() {
    _jobTitleController.dispose();
    _skillInputController.dispose();
    super.dispose();
  }

  void _addSkill(SkillModel skill) {
    // التأكد من عدم إضافة المهارة مرتين
    if (!_selectedSkills.any((s) => s.id == skill.id)) {
      setState(() {
        _selectedSkills.add(skill);
      });
    }
    _skillInputController.clear();
  }

  void _removeSkill(SkillModel skill) {
    setState(() {
      _selectedSkills.removeWhere((s) => s.id == skill.id);
    });
  }

  void _saveChanges() {
    // -->> ١. أضيفي هذا السطر <<--
    print("SAVE_CHANGES: Button was clicked!");

    if (!_formKey.currentState!.validate()) {
      // -->> ٢. أضيفي هذا السطر <<--
      print("SAVE_CHANGES_ERROR: Form validation failed!");
      return;
    }

    if (_selectedJob == null) {
      // -->> ٣. أضيفي هذا السطر <<--
      print("SAVE_CHANGES_ERROR: No job was selected!");
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Please select a job title')));
      return;
    }

    // -->> ٤. أضيفي هذا السطر <<--
    print("SAVE_CHANGES_SUCCESS: Validation passed! Calling Cubit...");
    context.read<UpdateSkillsJobsCubit>().updateSkillsAndJob(
      skillIds: _selectedSkills.map((s) => s.id).toList(),
      jobId: _selectedJob!.id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SectionContainer(
      child: Form(
        key: _formKey,
        child: BlocBuilder<SkillsJobsCubit, SkillsJobsState>(
          builder: (context, state) {
            if (state is SkillsJobsSuccess) {
              final allJobs = state.response.jobs;
              final allSkills = state.response.skills;

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SectionTitle(title: 'Update Job Title & Skills'),
                  SizedBox(height: 16.h),

                  // --- حقل المسمى الوظيفي ---
                  Text('Job Title', style: Theme.of(context).textTheme.titleMedium),
                  SizedBox(height: 8.h),
                  TypeAheadField<JobTitleModel>(
                    controller: _jobTitleController,
                    suggestionsCallback: (pattern) {
                      // ١. نقوم بتحويل القائمة بشكل صريح إلى النوع الصحيح
                      final List<JobTitleModel> typedJobs = List<JobTitleModel>.from(allJobs);

                      // ٢. الآن نقوم بالفلترة على القائمة الجديدة المضمونة
                      return typedJobs.where((job) {
                        // ٣. نتعامل مع الاسم بشكل آمن (كما فعلنا سابقًا)
                        final nameLower = job.name?.toLowerCase() ?? '';
                        return nameLower.contains(pattern.toLowerCase());
                      }).toList();
                    },
                    builder: (context, controller, focusNode) => AppTextFormField(
                      controller: controller,
                      focusNode: focusNode,
                      hintText: 'e.g., Flutter Developer',
                      validator: (value) => (value == null || value.isEmpty) ? 'Job title is required' : null,
                    ),
                    itemBuilder: (context, job) => ListTile(title: Text(job.name??"")),
                    onSelected: (job) {
                      setState(() => _selectedJob = job);
                      _jobTitleController.text = job.name??"";
                    },
                  ),
                  SizedBox(height: 24.h),

                  // --- حقل المهارات ---
                  Text('Skills', style: Theme.of(context).textTheme.titleMedium),
                  SizedBox(height: 8.h),
                  TypeAheadField<SkillModel>(
                    controller: _skillInputController,
                    suggestionsCallback: (pattern) => allSkills.where((skill) => skill.name.toLowerCase().contains(pattern.toLowerCase())).toList(),
                    builder: (context, controller, focusNode) => AppTextFormField(
                      controller: controller,
                      focusNode: focusNode,
                      hintText: 'e.g., Flutter, Dart',
                      validator: (value) => null, // التحقق من الصحة ليس ضروريًا هنا
                    ),
                    itemBuilder: (context, skill) => ListTile(title: Text(skill.name)),
                    onSelected: _addSkill,
                  ),
                  SizedBox(height: 16.h),

                  // --- عرض المهارات المختارة (Chips) ---
                  Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: _selectedSkills.map((skill) => Chip(
                      label: Text(skill.name),
                      onDeleted: () => _removeSkill(skill),
                      deleteIcon: const Icon(Icons.close, size: 18),
                    )).toList(),
                  ),
                  SizedBox(height: 24.h),

                  // --- زر الحفظ ---
                  BlocListener<UpdateSkillsJobsCubit, UpdateSkillsJobsState>(
                    listener: (context, state) {
                      // منطق الـ listener يبقى كما هو
                      switch (state) {
                        case UpdateSkillsJobsLoading():
                        // يمكننا إدارة التحميل هنا إذا أردنا
                          break;
                        case UpdateSkillsJobsSuccess(message: final message):
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(message), backgroundColor: Colors.green),
                          );
                          widget.onUpdateSuccess();
                          break;
                        case UpdateSkillsJobsError(error: final error):
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error), backgroundColor: Colors.red),
                          );
                          break;

                      }
                    },
                    child: Center(
                      // نستخدم BlocBuilder آخر للزر فقط ليعيد بناء نفسه عند التحميل
                      child: BlocBuilder<UpdateSkillsJobsCubit, UpdateSkillsJobsState>(
                        builder: (context, state) {
                          final isLoading = state is UpdateSkillsJobsLoading;

                          return ShrinkWrapButton(
                            buttonText: 'Update',
                            textStyle: TextStyle(color: Colors.white,fontSize: 16.sp),
                            // الزر الآن يستدعي _saveChanges مباشرة
                            onPressed:  _saveChanges,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              );
            }
            // عرض loading أو error أثناء جلب قائمة الخيارات
            return const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}