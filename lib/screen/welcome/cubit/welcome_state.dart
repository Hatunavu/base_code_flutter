import 'package:freezed_annotation/freezed_annotation.dart';

part 'welcome_state.freezed.dart';

@freezed
class WelcomeState with _$WelcomeState {
  const factory WelcomeState({
    required bool isLoading,
    String? error,
  }) = _WelcomeState;

  factory WelcomeState.initial() => const WelcomeState(
        isLoading: false,
      );
}
