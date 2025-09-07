import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/di/dependency_injection.dart';
import 'package:grad_comp/features/search/logic/search_cubit.dart';
import 'package:grad_comp/features/search/logic/search_type.dart';
import 'widgets/search_body.dart';

class SearchScreen extends StatelessWidget {
  final SearchType initialSearchType;
  final bool isTypeLocked;

  const SearchScreen({
    super.key,
    required this.initialSearchType,
    required this.isTypeLocked,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchCubit>()
        ..initialize(type: initialSearchType, isLocked: isTypeLocked),
      child: const SearchBody(),
    );
  }
}