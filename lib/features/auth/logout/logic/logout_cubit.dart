import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grad_comp/core/networking/api_result.dart';
import 'package:grad_comp/features/auth/logout/data/repos/logout_repository.dart';
import 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  final LogoutRepository _logoutRepository;

  LogoutCubit(this._logoutRepository) : super(const LogoutState.initial());

  void logout() async {
    if (state is LogoutLoading) return;

    emit(const LogoutState.loading());
    final result = await _logoutRepository.logout();

    switch (result) {
      case Success():
        emit(const LogoutState.success());
        break;
      case Failure(:final apiErrorModel):
      // حتى لو فشل الـ API، نعتبره نجاحاً من ناحية التطبيق
      // لأن البيانات المحلية تم حذفها
        emit(const LogoutState.success());
        break;
    }
  }
}