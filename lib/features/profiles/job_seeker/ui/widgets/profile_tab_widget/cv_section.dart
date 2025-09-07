import 'package:flutter/material.dart';
import 'package:grad_comp/core/widgets/section_container.dart';
import 'package:grad_comp/core/widgets/section_title.dart';
import 'cv_display_widget.dart';
import 'empty_state_widget.dart';

class CvSection extends StatelessWidget {
  final String? cvUrl;
  final String? firstName;
  final String? lastName;
  const CvSection({super.key, this.cvUrl, this.lastName, this.firstName});

  @override
  Widget build(BuildContext context) {
    // --- 1. نقوم بالتحقق من كل المتغيرات المطلوبة بطريقة آمنة ---
    final bool canDisplayCv = (cvUrl != null && cvUrl!.isNotEmpty) &&
        (firstName != null && firstName!.isNotEmpty) &&
        (lastName != null && lastName!.isNotEmpty);

    return SectionContainer(
      child: Column(
        children: [
          const SectionTitle(title: 'My CV'),
          // 2. نستخدم المتغير الجديد للتحقق
          canDisplayCv
          // إذا كانت كل البيانات موجودة، نعرضها
              ? CvDisplayWidget(
            cvUrl: cvUrl!,
            firstName: firstName!,
            lastName: lastName!,
          )
          // وإلا، نعرض رسالة الحالة الفارغة
              : const EmptyStateWidget(
              message: 'No CV has been uploaded yet.'),
        ],
      ),
    );
  }
}