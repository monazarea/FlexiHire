import 'package:flutter/material.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/features/dashboard/data/models/applicants/job_proposal_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProposalDetailsBody extends StatelessWidget {
  final JobProposalModel proposal;

  const ProposalDetailsBody({super.key, required this.proposal});

  Future<void> _launchURL(BuildContext context, String? urlString) async {
    if (urlString == null || urlString.isEmpty) return;
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $urlString')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text(
            proposal.proposal,
            style: TextStyles.font13DarkW500.copyWith(height: 1.5, fontSize: 17),
          ),
          const SizedBox(height: 24),
          if (proposal.user.cv != null && proposal.user.cv!.isNotEmpty)
            GestureDetector(
              onTap: () => _launchURL(context, proposal.user.cv),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.picture_as_pdf_outlined, color: ColorsManager.primary),
                    SizedBox(width: 8),
                    Text(
                      'View CV',
                      style: TextStyle(
                        fontSize: 18,
                        color: ColorsManager.primary,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: ColorsManager.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}