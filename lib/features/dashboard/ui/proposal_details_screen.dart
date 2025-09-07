import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/core/theming/colors.dart';
import 'package:grad_comp/core/theming/styles.dart';
import 'package:grad_comp/core/widgets/custom_back_button.dart';
import 'package:grad_comp/features/dashboard/data/models/applicants/job_proposal_model.dart';
import 'package:grad_comp/features/dashboard/logic/update_status/update_application_status_cubit.dart';
import 'package:grad_comp/features/dashboard/logic/update_status/update_application_status_state.dart';
import 'package:grad_comp/features/dashboard/ui/widgets/job_applicants_widgets/accept_reject_buttons.dart';
import 'package:grad_comp/features/dashboard/ui/widgets/job_applicants_widgets/proposal_details_body.dart';

class ProposalDetailsScreen extends StatelessWidget {
  final JobProposalModel proposal;

  const ProposalDetailsScreen({super.key, required this.proposal});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<UpdateApplicationStatusCubit>(),
      child: Scaffold(
        backgroundColor: ColorsManager.moreLightBlue,
        appBar: AppBar(
          leading: const CustomBackButton(),
          backgroundColor: ColorsManager.moreLightBlue,
          title: Text('Proposal Details',
            style: TextStyles.font16BlackBold.copyWith(
                color: Colors.grey.shade800,
                fontWeight: FontWeight.w500,
                fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: BlocListener<UpdateApplicationStatusCubit, UpdateApplicationStatusState>(
          listener: (context, state) {
            switch(state){
              case UpdateStatusSuccess(message: final message):
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.green,));
                // نرجع true لتحديث القائمة السابقة
                Navigator.of(context).pop(true);
                break;
              case UpdateStatusError(error: final errorMsg):
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(errorMsg), backgroundColor: Colors.red,));
                break;
              default:
                break;
            }
          },
          child: ProposalDetailsBody(proposal: proposal),
        ),
        bottomNavigationBar: AcceptRejectButtons(proposal: proposal),
      ),
    );
  }
}