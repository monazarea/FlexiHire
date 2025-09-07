// lib/features/report/ui/report_screen.dart

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/widgets/app_text_form_field.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import 'package:grad_comp/core/widgets/shrink_wrap_button.dart';
import '../../../core/theming/styles.dart';
import '../logic/report_cubit.dart';
import '../logic/report_state.dart';

class ReportScreen extends StatefulWidget {
  final int reportedUserId;
  const ReportScreen({super.key, required this.reportedUserId});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  final _reasonController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<File> _images = [];

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ReportCubit>(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Report User',style:TextStyles.font16BlackBold.copyWith(
              color: Colors.grey.shade800,
              fontWeight: FontWeight.w500,
              fontSize: 20
          ),),
          centerTitle: true,
          leading: CustomBackButton(),
        ),
        body: BlocConsumer<ReportCubit, ReportState>(
          listener: (context, state) {
            switch (state) {
              case ReportSuccess(message: final message):
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message), backgroundColor: Colors.green),
                );
                // نعود للشاشة السابقة بعد نجاح الإبلاغ
                context.pop();
                break;
              case ReportError(error: final error):
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error), backgroundColor: Colors.red),
                );
                break;
            // نستمع لتحديث الصور
              case ImagesPicked(images: final images):
                setState(() {
                  _images = images;
                });
                break;
              default:
            }
          },
          builder: (context, state) {
            final isLoading = state is ReportLoading;

            return Form(
              key: _formKey,
              child: ListView(
                padding: EdgeInsets.all(16.r),
                children: [
                  const SectionTitle(title: 'Please provide a reason for your report.',),
                  // Text(
                  //   'Please provide a reason for your report.',
                  //   style: Theme.of(context).textTheme.titleMedium,
                  // ),
                  SizedBox(height: 16.h),
                  AppTextFormField(
                    controller: _reasonController,
                    hintText: 'Enter reason here...',
                    maxLines: 5,
                    minLines: 3,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Reason cannot be empty.';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 24.h),
                  const SectionTitle(title: 'Attach screenshots (optional)',),

                  SizedBox(height: 8.h),
                  _buildImagePicker(context),
                  SizedBox(height: 16.h),
                  _buildImagePreview(),
                  SizedBox(height: 32.h),
                  ShrinkWrapButton(
                    buttonText: 'Submit Report',
                    textStyle: TextStyle(color: Colors.white, fontSize: 16.sp),

                    // isLoading: isLoading,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        context.read<ReportCubit>().submitReport(
                          reportedUserId: widget.reportedUserId,
                          reason: _reasonController.text,
                        );
                      }
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildImagePicker(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () => context.read<ReportCubit>().pickImages(),
      icon: const Icon(Icons.add_photo_alternate_outlined,color: ColorsManager.primary,),
      label: const Text('Add Images',style: TextStyle(color: ColorsManager.primary),),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 12.h),
      ),
    );
  }

  Widget _buildImagePreview() {
    if (_images.isEmpty) {
      return const SizedBox.shrink();
    }
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: _images.length,
      itemBuilder: (context, index) {
        final image = _images[index];
        return Stack(
          fit: StackFit.expand,
          children: [
            Image.file(image, fit: BoxFit.cover),
            Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                onTap: () => context.read<ReportCubit>().removeImage(image),
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black54,
                  child: Icon(Icons.close, color: Colors.white, size: 16),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}