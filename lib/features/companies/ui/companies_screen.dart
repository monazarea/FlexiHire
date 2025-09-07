import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/features/companies/logic/companies_list_cubit.dart';
import 'widgets/companies_list_body.dart';

class CompaniesScreen extends StatelessWidget {
  const CompaniesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CompaniesListCubit>()..fetchInitialCompanies(),
      child: const CompaniesListBody(),
    );
  }
}