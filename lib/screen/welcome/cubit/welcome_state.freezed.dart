// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'welcome_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WelcomeStateTearOff {
  const _$WelcomeStateTearOff();

  _WelcomeState call({required bool isLoading, String? error}) {
    return _WelcomeState(
      isLoading: isLoading,
      error: error,
    );
  }
}

/// @nodoc
const $WelcomeState = _$WelcomeStateTearOff();

/// @nodoc
mixin _$WelcomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WelcomeStateCopyWith<WelcomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WelcomeStateCopyWith<$Res> {
  factory $WelcomeStateCopyWith(
          WelcomeState value, $Res Function(WelcomeState) then) =
      _$WelcomeStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, String? error});
}

/// @nodoc
class _$WelcomeStateCopyWithImpl<$Res> implements $WelcomeStateCopyWith<$Res> {
  _$WelcomeStateCopyWithImpl(this._value, this._then);

  final WelcomeState _value;
  // ignore: unused_field
  final $Res Function(WelcomeState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$WelcomeStateCopyWith<$Res>
    implements $WelcomeStateCopyWith<$Res> {
  factory _$WelcomeStateCopyWith(
          _WelcomeState value, $Res Function(_WelcomeState) then) =
      __$WelcomeStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, String? error});
}

/// @nodoc
class __$WelcomeStateCopyWithImpl<$Res> extends _$WelcomeStateCopyWithImpl<$Res>
    implements _$WelcomeStateCopyWith<$Res> {
  __$WelcomeStateCopyWithImpl(
      _WelcomeState _value, $Res Function(_WelcomeState) _then)
      : super(_value, (v) => _then(v as _WelcomeState));

  @override
  _WelcomeState get _value => super._value as _WelcomeState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? error = freezed,
  }) {
    return _then(_WelcomeState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_WelcomeState implements _WelcomeState {
  const _$_WelcomeState({required this.isLoading, this.error});

  @override
  final bool isLoading;
  @override
  final String? error;

  @override
  String toString() {
    return 'WelcomeState(isLoading: $isLoading, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WelcomeState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$WelcomeStateCopyWith<_WelcomeState> get copyWith =>
      __$WelcomeStateCopyWithImpl<_WelcomeState>(this, _$identity);
}

abstract class _WelcomeState implements WelcomeState {
  const factory _WelcomeState({required bool isLoading, String? error}) =
      _$_WelcomeState;

  @override
  bool get isLoading;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$WelcomeStateCopyWith<_WelcomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
