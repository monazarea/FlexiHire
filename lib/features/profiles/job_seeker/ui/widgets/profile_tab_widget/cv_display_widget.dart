// lib/features/profiles/job_seeker/ui/widgets/cv_display_widget.dart

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class CvDisplayWidget extends StatelessWidget {
  final String cvUrl;
  final String firstName;
  final String lastName;

  const CvDisplayWidget({
    super.key,
    required this.cvUrl,
    required this.firstName,
    required this.lastName,
  });

  Future<void> _handleCvTap() async {
    final Uri url = Uri.parse(cvUrl);
    try {
      await launchUrl(
        url,
        mode: LaunchMode.externalApplication,
      );
    } catch (e) {
      debugPrint('Could not launch $url: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final generatedFileName = '${firstName}_${lastName}_CV.pdf';

    return InkWell(
      onTap: _handleCvTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0.h, horizontal: 8.0.w),
        child: Row(
          children: [
            const Icon(
              Icons.picture_as_pdf_rounded,
              color: ColorsManager.primary,
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                generatedFileName,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: ColorsManager.darkBlue,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}