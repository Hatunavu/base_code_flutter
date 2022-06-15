import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hodi/app_state.dart';
import 'package:hodi/model/user/user_session.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppState.initial());
  void updateUserSession(UserSession? userSession) {
    emit(state.copyWith(userSession: userSession));
  }

  void updateLand(int land) {
    final newUserSession = state.userSession;
    if (newUserSession == null) return;
    newUserSession.land = state.userSession!.land - land;
    emit(state.copyWith(userSession: newUserSession));
  }
}
