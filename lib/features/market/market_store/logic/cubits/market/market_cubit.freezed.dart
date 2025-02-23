// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MarketState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Market> markets) success,
    required TResult Function(String error) error,
    required TResult Function() loadingMarketDetails,
    required TResult Function(MarketDetailsResponseModel marketDetails)
        successMarketDetails,
    required TResult Function(String error) errorMarketDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Market> markets)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingMarketDetails,
    TResult? Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult? Function(String error)? errorMarketDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Market> markets)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingMarketDetails,
    TResult Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult Function(String error)? errorMarketDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(LoadingMarketDetails<T> value)
        loadingMarketDetails,
    required TResult Function(SuccessMarketDetails<T> value)
        successMarketDetails,
    required TResult Function(ErrorMarketDetails<T> value) errorMarketDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult? Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult? Function(ErrorMarketDetails<T> value)? errorMarketDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult Function(ErrorMarketDetails<T> value)? errorMarketDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketStateCopyWith<T, $Res> {
  factory $MarketStateCopyWith(
          MarketState<T> value, $Res Function(MarketState<T>) then) =
      _$MarketStateCopyWithImpl<T, $Res, MarketState<T>>;
}

/// @nodoc
class _$MarketStateCopyWithImpl<T, $Res, $Val extends MarketState<T>>
    implements $MarketStateCopyWith<T, $Res> {
  _$MarketStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$MarketStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MarketState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Market> markets) success,
    required TResult Function(String error) error,
    required TResult Function() loadingMarketDetails,
    required TResult Function(MarketDetailsResponseModel marketDetails)
        successMarketDetails,
    required TResult Function(String error) errorMarketDetails,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Market> markets)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingMarketDetails,
    TResult? Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult? Function(String error)? errorMarketDetails,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Market> markets)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingMarketDetails,
    TResult Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult Function(String error)? errorMarketDetails,
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
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(LoadingMarketDetails<T> value)
        loadingMarketDetails,
    required TResult Function(SuccessMarketDetails<T> value)
        successMarketDetails,
    required TResult Function(ErrorMarketDetails<T> value) errorMarketDetails,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult? Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult? Function(ErrorMarketDetails<T> value)? errorMarketDetails,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult Function(ErrorMarketDetails<T> value)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements MarketState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$MarketStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'MarketState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Market> markets) success,
    required TResult Function(String error) error,
    required TResult Function() loadingMarketDetails,
    required TResult Function(MarketDetailsResponseModel marketDetails)
        successMarketDetails,
    required TResult Function(String error) errorMarketDetails,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Market> markets)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingMarketDetails,
    TResult? Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult? Function(String error)? errorMarketDetails,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Market> markets)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingMarketDetails,
    TResult Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult Function(String error)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(LoadingMarketDetails<T> value)
        loadingMarketDetails,
    required TResult Function(SuccessMarketDetails<T> value)
        successMarketDetails,
    required TResult Function(ErrorMarketDetails<T> value) errorMarketDetails,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult? Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult? Function(ErrorMarketDetails<T> value)? errorMarketDetails,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult Function(ErrorMarketDetails<T> value)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements MarketState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<Market> markets});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$MarketStateCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? markets = null,
  }) {
    return _then(_$SuccessImpl<T>(
      null == markets
          ? _value._markets
          : markets // ignore: cast_nullable_to_non_nullable
              as List<Market>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements Success<T> {
  const _$SuccessImpl(final List<Market> markets) : _markets = markets;

  final List<Market> _markets;
  @override
  List<Market> get markets {
    if (_markets is EqualUnmodifiableListView) return _markets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markets);
  }

  @override
  String toString() {
    return 'MarketState<$T>.success(markets: $markets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._markets, _markets));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_markets));

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      __$$SuccessImplCopyWithImpl<T, _$SuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Market> markets) success,
    required TResult Function(String error) error,
    required TResult Function() loadingMarketDetails,
    required TResult Function(MarketDetailsResponseModel marketDetails)
        successMarketDetails,
    required TResult Function(String error) errorMarketDetails,
  }) {
    return success(markets);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Market> markets)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingMarketDetails,
    TResult? Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult? Function(String error)? errorMarketDetails,
  }) {
    return success?.call(markets);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Market> markets)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingMarketDetails,
    TResult Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult Function(String error)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(markets);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(LoadingMarketDetails<T> value)
        loadingMarketDetails,
    required TResult Function(SuccessMarketDetails<T> value)
        successMarketDetails,
    required TResult Function(ErrorMarketDetails<T> value) errorMarketDetails,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult? Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult? Function(ErrorMarketDetails<T> value)? errorMarketDetails,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult Function(ErrorMarketDetails<T> value)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements MarketState<T> {
  const factory Success(final List<Market> markets) = _$SuccessImpl<T>;

  List<Market> get markets;

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessImplCopyWith<T, _$SuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<T, $Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl<T> value, $Res Function(_$ErrorImpl<T>) then) =
      __$$ErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$MarketStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements Error<T> {
  const _$ErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MarketState<$T>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      __$$ErrorImplCopyWithImpl<T, _$ErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Market> markets) success,
    required TResult Function(String error) error,
    required TResult Function() loadingMarketDetails,
    required TResult Function(MarketDetailsResponseModel marketDetails)
        successMarketDetails,
    required TResult Function(String error) errorMarketDetails,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Market> markets)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingMarketDetails,
    TResult? Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult? Function(String error)? errorMarketDetails,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Market> markets)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingMarketDetails,
    TResult Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult Function(String error)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(LoadingMarketDetails<T> value)
        loadingMarketDetails,
    required TResult Function(SuccessMarketDetails<T> value)
        successMarketDetails,
    required TResult Function(ErrorMarketDetails<T> value) errorMarketDetails,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult? Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult? Function(ErrorMarketDetails<T> value)? errorMarketDetails,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult Function(ErrorMarketDetails<T> value)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements MarketState<T> {
  const factory Error({required final String error}) = _$ErrorImpl<T>;

  String get error;

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingMarketDetailsImplCopyWith<T, $Res> {
  factory _$$LoadingMarketDetailsImplCopyWith(
          _$LoadingMarketDetailsImpl<T> value,
          $Res Function(_$LoadingMarketDetailsImpl<T>) then) =
      __$$LoadingMarketDetailsImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingMarketDetailsImplCopyWithImpl<T, $Res>
    extends _$MarketStateCopyWithImpl<T, $Res, _$LoadingMarketDetailsImpl<T>>
    implements _$$LoadingMarketDetailsImplCopyWith<T, $Res> {
  __$$LoadingMarketDetailsImplCopyWithImpl(_$LoadingMarketDetailsImpl<T> _value,
      $Res Function(_$LoadingMarketDetailsImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingMarketDetailsImpl<T> implements LoadingMarketDetails<T> {
  const _$LoadingMarketDetailsImpl();

  @override
  String toString() {
    return 'MarketState<$T>.loadingMarketDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingMarketDetailsImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Market> markets) success,
    required TResult Function(String error) error,
    required TResult Function() loadingMarketDetails,
    required TResult Function(MarketDetailsResponseModel marketDetails)
        successMarketDetails,
    required TResult Function(String error) errorMarketDetails,
  }) {
    return loadingMarketDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Market> markets)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingMarketDetails,
    TResult? Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult? Function(String error)? errorMarketDetails,
  }) {
    return loadingMarketDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Market> markets)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingMarketDetails,
    TResult Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult Function(String error)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (loadingMarketDetails != null) {
      return loadingMarketDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(LoadingMarketDetails<T> value)
        loadingMarketDetails,
    required TResult Function(SuccessMarketDetails<T> value)
        successMarketDetails,
    required TResult Function(ErrorMarketDetails<T> value) errorMarketDetails,
  }) {
    return loadingMarketDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult? Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult? Function(ErrorMarketDetails<T> value)? errorMarketDetails,
  }) {
    return loadingMarketDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult Function(ErrorMarketDetails<T> value)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (loadingMarketDetails != null) {
      return loadingMarketDetails(this);
    }
    return orElse();
  }
}

abstract class LoadingMarketDetails<T> implements MarketState<T> {
  const factory LoadingMarketDetails() = _$LoadingMarketDetailsImpl<T>;
}

/// @nodoc
abstract class _$$SuccessMarketDetailsImplCopyWith<T, $Res> {
  factory _$$SuccessMarketDetailsImplCopyWith(
          _$SuccessMarketDetailsImpl<T> value,
          $Res Function(_$SuccessMarketDetailsImpl<T>) then) =
      __$$SuccessMarketDetailsImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({MarketDetailsResponseModel marketDetails});
}

/// @nodoc
class __$$SuccessMarketDetailsImplCopyWithImpl<T, $Res>
    extends _$MarketStateCopyWithImpl<T, $Res, _$SuccessMarketDetailsImpl<T>>
    implements _$$SuccessMarketDetailsImplCopyWith<T, $Res> {
  __$$SuccessMarketDetailsImplCopyWithImpl(_$SuccessMarketDetailsImpl<T> _value,
      $Res Function(_$SuccessMarketDetailsImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? marketDetails = null,
  }) {
    return _then(_$SuccessMarketDetailsImpl<T>(
      null == marketDetails
          ? _value.marketDetails
          : marketDetails // ignore: cast_nullable_to_non_nullable
              as MarketDetailsResponseModel,
    ));
  }
}

/// @nodoc

class _$SuccessMarketDetailsImpl<T> implements SuccessMarketDetails<T> {
  const _$SuccessMarketDetailsImpl(this.marketDetails);

  @override
  final MarketDetailsResponseModel marketDetails;

  @override
  String toString() {
    return 'MarketState<$T>.successMarketDetails(marketDetails: $marketDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessMarketDetailsImpl<T> &&
            (identical(other.marketDetails, marketDetails) ||
                other.marketDetails == marketDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, marketDetails);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessMarketDetailsImplCopyWith<T, _$SuccessMarketDetailsImpl<T>>
      get copyWith => __$$SuccessMarketDetailsImplCopyWithImpl<T,
          _$SuccessMarketDetailsImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Market> markets) success,
    required TResult Function(String error) error,
    required TResult Function() loadingMarketDetails,
    required TResult Function(MarketDetailsResponseModel marketDetails)
        successMarketDetails,
    required TResult Function(String error) errorMarketDetails,
  }) {
    return successMarketDetails(marketDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Market> markets)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingMarketDetails,
    TResult? Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult? Function(String error)? errorMarketDetails,
  }) {
    return successMarketDetails?.call(marketDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Market> markets)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingMarketDetails,
    TResult Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult Function(String error)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (successMarketDetails != null) {
      return successMarketDetails(marketDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(LoadingMarketDetails<T> value)
        loadingMarketDetails,
    required TResult Function(SuccessMarketDetails<T> value)
        successMarketDetails,
    required TResult Function(ErrorMarketDetails<T> value) errorMarketDetails,
  }) {
    return successMarketDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult? Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult? Function(ErrorMarketDetails<T> value)? errorMarketDetails,
  }) {
    return successMarketDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult Function(ErrorMarketDetails<T> value)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (successMarketDetails != null) {
      return successMarketDetails(this);
    }
    return orElse();
  }
}

abstract class SuccessMarketDetails<T> implements MarketState<T> {
  const factory SuccessMarketDetails(
          final MarketDetailsResponseModel marketDetails) =
      _$SuccessMarketDetailsImpl<T>;

  MarketDetailsResponseModel get marketDetails;

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SuccessMarketDetailsImplCopyWith<T, _$SuccessMarketDetailsImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorMarketDetailsImplCopyWith<T, $Res> {
  factory _$$ErrorMarketDetailsImplCopyWith(_$ErrorMarketDetailsImpl<T> value,
          $Res Function(_$ErrorMarketDetailsImpl<T>) then) =
      __$$ErrorMarketDetailsImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorMarketDetailsImplCopyWithImpl<T, $Res>
    extends _$MarketStateCopyWithImpl<T, $Res, _$ErrorMarketDetailsImpl<T>>
    implements _$$ErrorMarketDetailsImplCopyWith<T, $Res> {
  __$$ErrorMarketDetailsImplCopyWithImpl(_$ErrorMarketDetailsImpl<T> _value,
      $Res Function(_$ErrorMarketDetailsImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorMarketDetailsImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMarketDetailsImpl<T> implements ErrorMarketDetails<T> {
  const _$ErrorMarketDetailsImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'MarketState<$T>.errorMarketDetails(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMarketDetailsImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMarketDetailsImplCopyWith<T, _$ErrorMarketDetailsImpl<T>>
      get copyWith => __$$ErrorMarketDetailsImplCopyWithImpl<T,
          _$ErrorMarketDetailsImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Market> markets) success,
    required TResult Function(String error) error,
    required TResult Function() loadingMarketDetails,
    required TResult Function(MarketDetailsResponseModel marketDetails)
        successMarketDetails,
    required TResult Function(String error) errorMarketDetails,
  }) {
    return errorMarketDetails(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Market> markets)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingMarketDetails,
    TResult? Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult? Function(String error)? errorMarketDetails,
  }) {
    return errorMarketDetails?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Market> markets)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingMarketDetails,
    TResult Function(MarketDetailsResponseModel marketDetails)?
        successMarketDetails,
    TResult Function(String error)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (errorMarketDetails != null) {
      return errorMarketDetails(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) error,
    required TResult Function(LoadingMarketDetails<T> value)
        loadingMarketDetails,
    required TResult Function(SuccessMarketDetails<T> value)
        successMarketDetails,
    required TResult Function(ErrorMarketDetails<T> value) errorMarketDetails,
  }) {
    return errorMarketDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? error,
    TResult? Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult? Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult? Function(ErrorMarketDetails<T> value)? errorMarketDetails,
  }) {
    return errorMarketDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? error,
    TResult Function(LoadingMarketDetails<T> value)? loadingMarketDetails,
    TResult Function(SuccessMarketDetails<T> value)? successMarketDetails,
    TResult Function(ErrorMarketDetails<T> value)? errorMarketDetails,
    required TResult orElse(),
  }) {
    if (errorMarketDetails != null) {
      return errorMarketDetails(this);
    }
    return orElse();
  }
}

abstract class ErrorMarketDetails<T> implements MarketState<T> {
  const factory ErrorMarketDetails({required final String error}) =
      _$ErrorMarketDetailsImpl<T>;

  String get error;

  /// Create a copy of MarketState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorMarketDetailsImplCopyWith<T, _$ErrorMarketDetailsImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
