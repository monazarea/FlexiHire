// lib/features/job_details/ui/widgets/job_not_found_widget.dart

import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';

class JobNotFoundWidget extends StatelessWidget {
  const JobNotFoundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CustomBackButton(),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.search_off_rounded,
                size: 100,
                color: Colors.grey.shade400,
              ),
              const SizedBox(height: 20),
              Text(
                'Job Not Found',
                style: TextStyles.font22BlackBold,
              ),
              const SizedBox(height: 8),
              Text(
                'This job posting may have been deleted or is no longer available.',
                textAlign: TextAlign.center,
                style: TextStyles.font13GrayW400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}