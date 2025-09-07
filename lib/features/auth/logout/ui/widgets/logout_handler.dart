// lib/features/auth/logout/ui/widgets/logout_handler.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/core/routing/routes.dart';
import 'package:grad_comp/features/auth/logout/logic/logout_cubit.dart';
import 'package:grad_comp/features/auth/logout/logic/logout_state.dart';

class LogoutHandler extends StatelessWidget {
  final Widget child;

  const LogoutHandler({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LogoutCubit>(),
      child: BlocListener<LogoutCubit, LogoutState>(
        listener: (context, state) {
          switch (state) {
            case LogoutSuccess():
              Navigator.of(context).pushNamedAndRemoveUntil(
                Routes.loginScreen,
                    (route) => false,
              );
              break;
            default:
              break;
          }
        },
        child: child,
      ),
    );
  }
}