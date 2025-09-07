import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/edit_email/update_email_cubit.dart';
import '../../logic/edit_email/update_email_state.dart';

class UpdateEmailButtonAndListener extends StatefulWidget {
  final VoidCallback onSavePressed;
  final VoidCallback onUpdateSuccess;

  const UpdateEmailButtonAndListener({
    super.key,
    required this.onSavePressed,
    required this.onUpdateSuccess,
  });

  @override
  State<UpdateEmailButtonAndListener> createState() => _UpdateEmailButtonAndListenerState();
}

class _UpdateEmailButtonAndListenerState extends State<UpdateEmailButtonAndListener> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<UpdateEmailCubit, UpdateEmailState>(
      listener: (context, state) {
        // -->> تم التعديل هنا لاستخدام switch <<--
        switch (state) {
          case UpdateEmailLoading():
            setState(() => _isLoading = true);
            break;
          case UpdateEmailSuccess(message: final message):
            setState(() => _isLoading = false);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(message), backgroundColor: Colors.green),
            );
            widget.onUpdateSuccess();
            break;
          case UpdateEmailError(error: final error):
            setState(() => _isLoading = false);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(error), backgroundColor: Colors.red),
            );
            break;
        }
      },
      child: ElevatedButton(
        onPressed: _isLoading ? null : widget.onSavePressed,
        child: _isLoading
            ? const SizedBox(
          width: 24,
          height: 24,
          child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2.5),
        )
            : const Text('Save Changes'),
      ),
    );
  }
}