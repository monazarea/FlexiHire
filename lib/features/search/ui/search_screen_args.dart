import 'package:grad_comp/features/search/logic/search_type.dart';

class SearchScreenArgs {
  final SearchType initialSearchType;
  final bool isTypeLocked;

  SearchScreenArgs({
    required this.initialSearchType,
    this.isTypeLocked = false,
  });
}