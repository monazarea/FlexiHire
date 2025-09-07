import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/helpers/extensions.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/features/dashboard/data/models/applicants/job_proposal_model.dart';

import '../../../../../core/helpers/status_helper.dart';
import '../../../../../core/routing/routes.dart';
import '../../../../../core/widgets/custom_network_image.dart';
import '../../../logic/applicants/job_applicants_cubit.dart';
// import 'package:grad_comp/core/widgets/custom_network_image.dart'; // تأكدي من إضافة مسار الويدجت الصحيح

class ApplicantCard extends StatelessWidget {
  final JobProposalModel proposal;
  final bool isNew;



  const ApplicantCard({super.key, required this.proposal,this.isNew = false,});



  // دالة لفتح تطبيق الإيميل
  Future<void> _launchEmail(BuildContext context, String email) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=Job Application for ${proposal.id}',
    );
    if (!await launchUrl(emailLaunchUri)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Could not open email app.')),
      );
    }
  }



  @override
  Widget build(BuildContext context) {
    final ButtonStyle customOutlinedButtonStyle = OutlinedButton.styleFrom(
      backgroundColor: isNew?Colors.white:null,
      side: BorderSide(
        color:isNew?ColorsManager.primary.withOpacity(0.4): Colors.grey.shade300,
        width: 1.5,
      ),
      textStyle: TextStyle(fontSize: 15),
      iconColor: ColorsManager.primary.withOpacity(0.8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
    return Card(
      color: isNew ? ColorsManager.primary.withOpacity(0.1) : Colors.white,
      elevation: 0,

      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: ColorsManager.primary.withOpacity(0.3), // You can change the border color
          width: 1.5, // You can change the border width
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                CustomNetworkImage(
                  imageUrl: proposal.user.imageUrl,
                  width: 48,
                  height: 48,
                  borderRadius: 24, // نصف العرض/الارتفاع لجعلها دائرية
                  fallbackIcon: Icons.person_outline, // أيقونة بديلة مناسبة
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    '${proposal.user.firstName} ${proposal.user.lastName}',
                    style: TextStyles.font16BlackBold,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: StatusHelper.getStatusColor(proposal.status).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    children: [
                      Icon(
                          StatusHelper.getStatusIcon(proposal.status),
                          color: StatusHelper.getStatusColor(proposal.status),
                          size: 16
                      ),
                      const SizedBox(width: 6.0),
                      Text(
                        proposal.status,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: StatusHelper.getStatusColor(proposal.status),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () => _launchEmail(context, proposal.user.email),
                    icon: const Icon(Icons.email_outlined),
                    label: Text('Contact',style: TextStyles.font14DarkW500,),
                    style: customOutlinedButtonStyle, // <-- تطبيق الستايل
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: OutlinedButton.icon(

                    onPressed: () async { // ١. نجعل الدالة async
                      // ٢. ننتظر النتيجة من شاشة التفاصيل
                      final result = await context.pushNamed(
                        Routes.proposalDetailsScreen,
                        arguments: proposal,
                      );

                      // ٣. إذا كانت النتيجة true، نحدث قائمة المتقدمين
                      if (result == true && context.mounted) {
                        final cubit = context.read<JobApplicantsCubit>();
                        // ثم نستدعي الدالة مع تمرير الـ ID المحفوظ داخل الكيوبت
                        cubit.fetchInitialApplicants(cubit.jobId);
                      }
                    },
                    icon: const Icon(Icons.description_outlined),
                    label: Text('View Proposal',style: TextStyles.font13DarkW500),
                    style: customOutlinedButtonStyle, // <-- تطبيق نفس الستايل
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}