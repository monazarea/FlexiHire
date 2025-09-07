import 'package:flutter/cupertino.dart';

extension Navigation on BuildContext{
  // Push Named Route
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  // Push Replacement Named
  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }
  Future<dynamic> pushNamedAndRemoveUntil(String routeName, {required RoutePredicate predicate, Object? arguments}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }
  // Pop the current route
  void pop(){
    Navigator.of(this).pop();
  }
}
extension StringExtension on String?{
  bool isNullOrEmpyt() => this==null || this=="";
}
extension ListExtension <T>on List<T>?{
  bool isNullOrEmpty()=> this==null|| this!.isEmpty;
}
extension MaptExtension <K,V>on Map<K,V>?{
  bool isNullOrEmpty()=> this==null|| this!.isEmpty;
}
