import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hodi/core/theme/theme.dart';
import 'package:hodi/theme/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeState.initial());

  Future<void> setTheme(AppTheme theme) async {
    emit(state.copyWith(
        themeData: AppThemes.appThemeData[theme] ?? ThemeData.light()));
  }
}
