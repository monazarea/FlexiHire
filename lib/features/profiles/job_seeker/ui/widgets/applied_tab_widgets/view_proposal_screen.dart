import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';

class ViewProposalScreen extends StatelessWidget {
  final String proposal;

  const ViewProposalScreen({super.key, required this.proposal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close, color: Colors.black, size: 30.r),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Your Proposal', style: TextStyles.font18BlackBold),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: SingleChildScrollView( // لجعل النص قابلاً للتمرير إذا كان طويلاً
            child: Text(
              proposal,
              style: TextStyles.font13GrayW400.copyWith(height: 1.6),
            ),
          ),
        ),
      ),
    );
  }
}