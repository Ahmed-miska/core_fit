// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SignupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() governoratesLoading,
    required TResult Function(List<Governorate> response) governoratesSuccess,
    required TResult Function(ErrorHandler errorHandler) governoratesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? governoratesLoading,
    TResult? Function(List<Governorate> response)? governoratesSuccess,
    TResult? Function(ErrorHandler errorHandler)? governoratesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? governoratesLoading,
    TResult Function(List<Governorate> response)? governoratesSuccess,
    TResult Function(ErrorHandler errorHandler)? governoratesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GovernoratesLoading value) governoratesLoading,
    required TResult Function(GovernoratesSuccess value) governoratesSuccess,
    required TResult Function(GovernoratesError value) governoratesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GovernoratesLoading value)? governoratesLoading,
    TResult? Function(GovernoratesSuccess value)? governoratesSuccess,
    TResult? Function(GovernoratesError value)? governoratesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GovernoratesLoading value)? governoratesLoading,
    TResult Function(GovernoratesSuccess value)? governoratesSuccess,
    TResult Function(GovernoratesError value)? governoratesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res, SignupState>;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res, $Val extends SignupState>
    implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SignupState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() governoratesLoading,
    required TResult Function(List<Governorate> response) governoratesSuccess,
    required TResult Function(ErrorHandler errorHandler) governoratesError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? governoratesLoading,
    TResult? Function(List<Governorate> response)? governoratesSuccess,
    TResult? Function(ErrorHandler errorHandler)? governoratesError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? governoratesLoading,
    TResult Function(List<Governorate> response)? governoratesSuccess,
    TResult Function(ErrorHandler errorHandler)? governoratesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GovernoratesLoading value) governoratesLoading,
    required TResult Function(GovernoratesSuccess value) governoratesSuccess,
    required TResult Function(GovernoratesError value) governoratesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GovernoratesLoading value)? governoratesLoading,
    TResult? Function(GovernoratesSuccess value)? governoratesSuccess,
    TResult? Function(GovernoratesError value)? governoratesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GovernoratesLoading value)? governoratesLoading,
    TResult Function(GovernoratesSuccess value)? governoratesSuccess,
    TResult Function(GovernoratesError value)? governoratesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SignupState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GovernoratesLoadingImplCopyWith<$Res> {
  factory _$$GovernoratesLoadingImplCopyWith(_$GovernoratesLoadingImpl value,
          $Res Function(_$GovernoratesLoadingImpl) then) =
      __$$GovernoratesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GovernoratesLoadingImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$GovernoratesLoadingImpl>
    implements _$$GovernoratesLoadingImplCopyWith<$Res> {
  __$$GovernoratesLoadingImplCopyWithImpl(_$GovernoratesLoadingImpl _value,
      $Res Function(_$GovernoratesLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GovernoratesLoadingImpl implements GovernoratesLoading {
  const _$GovernoratesLoadingImpl();

  @override
  String toString() {
    return 'SignupState.governoratesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GovernoratesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() governoratesLoading,
    required TResult Function(List<Governorate> response) governoratesSuccess,
    required TResult Function(ErrorHandler errorHandler) governoratesError,
  }) {
    return governoratesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? governoratesLoading,
    TResult? Function(List<Governorate> response)? governoratesSuccess,
    TResult? Function(ErrorHandler errorHandler)? governoratesError,
  }) {
    return governoratesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? governoratesLoading,
    TResult Function(List<Governorate> response)? governoratesSuccess,
    TResult Function(ErrorHandler errorHandler)? governoratesError,
    required TResult orElse(),
  }) {
    if (governoratesLoading != null) {
      return governoratesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GovernoratesLoading value) governoratesLoading,
    required TResult Function(GovernoratesSuccess value) governoratesSuccess,
    required TResult Function(GovernoratesError value) governoratesError,
  }) {
    return governoratesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GovernoratesLoading value)? governoratesLoading,
    TResult? Function(GovernoratesSuccess value)? governoratesSuccess,
    TResult? Function(GovernoratesError value)? governoratesError,
  }) {
    return governoratesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GovernoratesLoading value)? governoratesLoading,
    TResult Function(GovernoratesSuccess value)? governoratesSuccess,
    TResult Function(GovernoratesError value)? governoratesError,
    required TResult orElse(),
  }) {
    if (governoratesLoading != null) {
      return governoratesLoading(this);
    }
    return orElse();
  }
}

abstract class GovernoratesLoading implements SignupState {
  const factory GovernoratesLoading() = _$GovernoratesLoadingImpl;
}

/// @nodoc
abstract class _$$GovernoratesSuccessImplCopyWith<$Res> {
  factory _$$GovernoratesSuccessImplCopyWith(_$GovernoratesSuccessImpl value,
          $Res Function(_$GovernoratesSuccessImpl) then) =
      __$$GovernoratesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Governorate> response});
}

/// @nodoc
class __$$GovernoratesSuccessImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$GovernoratesSuccessImpl>
    implements _$$GovernoratesSuccessImplCopyWith<$Res> {
  __$$GovernoratesSuccessImplCopyWithImpl(_$GovernoratesSuccessImpl _value,
      $Res Function(_$GovernoratesSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$GovernoratesSuccessImpl(
      null == response
          ? _value._response
          : response // ignore: cast_nullable_to_non_nullable
              as List<Governorate>,
    ));
  }
}

/// @nodoc

class _$GovernoratesSuccessImpl implements GovernoratesSuccess {
  const _$GovernoratesSuccessImpl(final List<Governorate> response)
      : _response = response;

  final List<Governorate> _response;
  @override
  List<Governorate> get response {
    if (_response is EqualUnmodifiableListView) return _response;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_response);
  }

  @override
  String toString() {
    return 'SignupState.governoratesSuccess(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GovernoratesSuccessImpl &&
            const DeepCollectionEquality().equals(other._response, _response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_response));

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GovernoratesSuccessImplCopyWith<_$GovernoratesSuccessImpl> get copyWith =>
      __$$GovernoratesSuccessImplCopyWithImpl<_$GovernoratesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() governoratesLoading,
    required TResult Function(List<Governorate> response) governoratesSuccess,
    required TResult Function(ErrorHandler errorHandler) governoratesError,
  }) {
    return governoratesSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? governoratesLoading,
    TResult? Function(List<Governorate> response)? governoratesSuccess,
    TResult? Function(ErrorHandler errorHandler)? governoratesError,
  }) {
    return governoratesSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? governoratesLoading,
    TResult Function(List<Governorate> response)? governoratesSuccess,
    TResult Function(ErrorHandler errorHandler)? governoratesError,
    required TResult orElse(),
  }) {
    if (governoratesSuccess != null) {
      return governoratesSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GovernoratesLoading value) governoratesLoading,
    required TResult Function(GovernoratesSuccess value) governoratesSuccess,
    required TResult Function(GovernoratesError value) governoratesError,
  }) {
    return governoratesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GovernoratesLoading value)? governoratesLoading,
    TResult? Function(GovernoratesSuccess value)? governoratesSuccess,
    TResult? Function(GovernoratesError value)? governoratesError,
  }) {
    return governoratesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GovernoratesLoading value)? governoratesLoading,
    TResult Function(GovernoratesSuccess value)? governoratesSuccess,
    TResult Function(GovernoratesError value)? governoratesError,
    required TResult orElse(),
  }) {
    if (governoratesSuccess != null) {
      return governoratesSuccess(this);
    }
    return orElse();
  }
}

abstract class GovernoratesSuccess implements SignupState {
  const factory GovernoratesSuccess(final List<Governorate> response) =
      _$GovernoratesSuccessImpl;

  List<Governorate> get response;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GovernoratesSuccessImplCopyWith<_$GovernoratesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GovernoratesErrorImplCopyWith<$Res> {
  factory _$$GovernoratesErrorImplCopyWith(_$GovernoratesErrorImpl value,
          $Res Function(_$GovernoratesErrorImpl) then) =
      __$$GovernoratesErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$GovernoratesErrorImplCopyWithImpl<$Res>
    extends _$SignupStateCopyWithImpl<$Res, _$GovernoratesErrorImpl>
    implements _$$GovernoratesErrorImplCopyWith<$Res> {
  __$$GovernoratesErrorImplCopyWithImpl(_$GovernoratesErrorImpl _value,
      $Res Function(_$GovernoratesErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$GovernoratesErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$GovernoratesErrorImpl implements GovernoratesError {
  const _$GovernoratesErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'SignupState.governoratesError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GovernoratesErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GovernoratesErrorImplCopyWith<_$GovernoratesErrorImpl> get copyWith =>
      __$$GovernoratesErrorImplCopyWithImpl<_$GovernoratesErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() governoratesLoading,
    required TResult Function(List<Governorate> response) governoratesSuccess,
    required TResult Function(ErrorHandler errorHandler) governoratesError,
  }) {
    return governoratesError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? governoratesLoading,
    TResult? Function(List<Governorate> response)? governoratesSuccess,
    TResult? Function(ErrorHandler errorHandler)? governoratesError,
  }) {
    return governoratesError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? governoratesLoading,
    TResult Function(List<Governorate> response)? governoratesSuccess,
    TResult Function(ErrorHandler errorHandler)? governoratesError,
    required TResult orElse(),
  }) {
    if (governoratesError != null) {
      return governoratesError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(GovernoratesLoading value) governoratesLoading,
    required TResult Function(GovernoratesSuccess value) governoratesSuccess,
    required TResult Function(GovernoratesError value) governoratesError,
  }) {
    return governoratesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(GovernoratesLoading value)? governoratesLoading,
    TResult? Function(GovernoratesSuccess value)? governoratesSuccess,
    TResult? Function(GovernoratesError value)? governoratesError,
  }) {
    return governoratesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(GovernoratesLoading value)? governoratesLoading,
    TResult Function(GovernoratesSuccess value)? governoratesSuccess,
    TResult Function(GovernoratesError value)? governoratesError,
    required TResult orElse(),
  }) {
    if (governoratesError != null) {
      return governoratesError(this);
    }
    return orElse();
  }
}

abstract class GovernoratesError implements SignupState {
  const factory GovernoratesError(final ErrorHandler errorHandler) =
      _$GovernoratesErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of SignupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GovernoratesErrorImplCopyWith<_$GovernoratesErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
