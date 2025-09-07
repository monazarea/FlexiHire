import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/widgets/section_container.dart';
import 'package:grad_comp/core/widgets/section_title.dart';

import '../../../../../core/theming/colors.dart';
import '../../../logic/edit_cv/update_cv_cubit.dart';
import '../../../logic/edit_cv/update_cv_state.dart';

class UpdateCvSection extends StatefulWidget {
  final String initialCvUrl;
  final VoidCallback onUpdateSuccess;
  const UpdateCvSection({super.key, required this.initialCvUrl, required this.onUpdateSuccess});

  @override
  State<UpdateCvSection> createState() => _UpdateCvSectionState();
}

class _UpdateCvSectionState extends State<UpdateCvSection> {
  late String currentCvUrl;

  @override
  void initState() {
    super.initState();
    currentCvUrl = widget.initialCvUrl;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateCvCubit, UpdateCvState>(
      listener: (context, state) {
        if (state is UpdateCvSuccess) {
          setState(() => currentCvUrl = state.newCvUrl);
          widget.onUpdateSuccess();
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.message), backgroundColor: Colors.green));
        } else if (state is UpdateCvError) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(state.error), backgroundColor: Colors.red));
        }
      },
      child: SectionContainer(
        child: Column(
          children: [
            const SectionTitle(title: 'Curriculum Vitae (CV)'),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.picture_as_pdf, color: ColorsManager.primary),
                const SizedBox(width: 8),
                Expanded(child: Text(currentCvUrl.isNotEmpty ? currentCvUrl.split('/').last : 'No CV uploaded', overflow: TextOverflow.ellipsis)),
              ],
            ),
            const SizedBox(height: 16),
            BlocBuilder<UpdateCvCubit, UpdateCvState>(
              builder: (context, state) {
                if (state is UpdateCvLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                return ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorsManager.primary, // يمكنكِ وضع أي لون تريدينه هنا
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14), // لجعل الحواف دائرية
                    ),
                  ),
                  onPressed: () => context.read<UpdateCvCubit>().pickAndUploadCv(),
                  icon: const Icon(Icons.upload_file,color: Colors.white,),
                  label: Text(currentCvUrl.isNotEmpty ? 'Change CV' : 'Upload CV',style: TextStyle(color: Colors.white),),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}