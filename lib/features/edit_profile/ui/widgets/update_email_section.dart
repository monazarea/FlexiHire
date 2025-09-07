// lib/features/edit_profile/ui/widgets/update_email_section.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/helpers/shared_pref_helper.dart';
import 'package:grad_comp/core/theming/styles.dart';
import '../../logic/edit_email/update_email_cubit.dart';
import 'update_email_button_and_listener.dart';
import 'package:grad_comp/core/helpers/constants.dart';


class UpdateEmailSection extends StatefulWidget {
  final VoidCallback onUpdateSuccess;
  const UpdateEmailSection({super.key, required this.onUpdateSuccess});

  @override
  State<UpdateEmailSection> createState() => _UpdateEmailSectionState();
}

class _UpdateEmailSectionState extends State<UpdateEmailSection> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    final Object currentEmail = SharedPrefHelper.getString(SharedPrefKeys.userEmail) ?? '';
    _emailController = TextEditingController(text: currentEmail.toString());
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  void _saveEmail() {
    if (_formKey.currentState!.validate()) {
      context.read<UpdateEmailCubit>().updateEmail(_emailController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Email Address', style: TextStyles.font16BlackBold),
          const SizedBox(height: 8),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              hintText: 'Enter your new email',
              prefixIcon: Icon(Icons.email_outlined),
            ),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter an email address.';
              }
              if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                return 'Please enter a valid email address.';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          Align(
            alignment: Alignment.centerRight,
            child: UpdateEmailButtonAndListener(
              onSavePressed: _saveEmail,
              onUpdateSuccess: widget.onUpdateSuccess,
            ),
          ),
        ],
      ),
    );
  }
}