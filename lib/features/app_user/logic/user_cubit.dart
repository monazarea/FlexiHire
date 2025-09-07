// // lib/features/app_user/logic/user_cubit.dart
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grad_comp/features/auth/login/data/models/login_response_body.dart';
// import '../../../core/helpers/constants.dart';
// import '../../../core/helpers/shared_pref_helper.dart';
// import 'user_state.dart';
//
// class UserCubit extends Cubit<UserState> {
//   UserCubit() : super(const UserState.initial());
//
//   void updateUser(UserModel userData) {
//     emit(UserState.success(userData));
//   }
//
//   void updateUserName(String firstName, String lastName) {
//     if (state is UserSuccess) {
//       final oldUserData = (state as UserSuccess).userData;
//       final newUserData = oldUserData.copyWith(
//         firstName: firstName,
//         lastName: lastName,
//       );
//       emit(UserState.success(newUserData));
//     }
//   }
// }
