import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hodi/api/api_client/api_client.dart';
import 'package:hodi/screen/welcome/cubit/welcome_state.dart';

class WelcomeCubit extends Cubit<WelcomeState> {
  final ApiClient _apiClient;
  WelcomeCubit(this._apiClient) : super(WelcomeState.initial());

  Future<void> getAccount() async {
    emit(state.copyWith(isLoading: true));
    try {
      final response = await _apiClient.getUserInfo();

      emit(state.copyWith(isLoading: false));
    } on DioError catch (e) {
      final errorMessage = _apiClient.mapDioErrorToMessage(e);
      emit(state.copyWith(isLoading: false, error: errorMessage));
    }
  }
}
