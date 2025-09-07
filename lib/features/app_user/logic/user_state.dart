// lib/features/app_user/logic/user_state.dart
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grad_comp/features/auth/login/data/models/login_response_body.dart';

part 'user_state.freezed.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.initial() = _UserInitial;
  const factory UserState.success(UserModel userData) = UserSuccess;
}


