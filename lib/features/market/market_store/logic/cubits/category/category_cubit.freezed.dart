// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel categoriesResponseModel)
        categoriesSuccess,
    required TResult Function(String error) categoriesError,
    required TResult Function() subCategoriesLoading,
    required TResult Function(
            SubCategoriesResponseModel subCategoriesResponseModel)
        subCategoriesSuccess,
    required TResult Function(String error) subCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult? Function(String error)? categoriesError,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult? Function(String error)? subCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult Function(String error)? categoriesError,
    TResult Function()? subCategoriesLoading,
    TResult Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult Function(String error)? subCategoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
    required TResult Function(SubCategoriesLoading<T> value)
        subCategoriesLoading,
    required TResult Function(SubCategoriesSuccess<T> value)
        subCategoriesSuccess,
    required TResult Function(SubCategoriesError<T> value) subCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
    TResult? Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult? Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult? Function(SubCategoriesError<T> value)? subCategoriesError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    TResult Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult Function(SubCategoriesError<T> value)? subCategoriesError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<T, $Res> {
  factory $CategoryStateCopyWith(
          CategoryState<T> value, $Res Function(CategoryState<T>) then) =
      _$CategoryStateCopyWithImpl<T, $Res, CategoryState<T>>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<T, $Res, $Val extends CategoryState<T>>
    implements $CategoryStateCopyWith<T, $Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryState
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
    extends _$CategoryStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CategoryState<$T>.initial()';
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
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel categoriesResponseModel)
        categoriesSuccess,
    required TResult Function(String error) categoriesError,
    required TResult Function() subCategoriesLoading,
    required TResult Function(
            SubCategoriesResponseModel subCategoriesResponseModel)
        subCategoriesSuccess,
    required TResult Function(String error) subCategoriesError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult? Function(String error)? categoriesError,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult? Function(String error)? subCategoriesError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult Function(String error)? categoriesError,
    TResult Function()? subCategoriesLoading,
    TResult Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult Function(String error)? subCategoriesError,
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
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
    required TResult Function(SubCategoriesLoading<T> value)
        subCategoriesLoading,
    required TResult Function(SubCategoriesSuccess<T> value)
        subCategoriesSuccess,
    required TResult Function(SubCategoriesError<T> value) subCategoriesError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
    TResult? Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult? Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult? Function(SubCategoriesError<T> value)? subCategoriesError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    TResult Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult Function(SubCategoriesError<T> value)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements CategoryState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$CategoriesLoadingImplCopyWith<T, $Res> {
  factory _$$CategoriesLoadingImplCopyWith(_$CategoriesLoadingImpl<T> value,
          $Res Function(_$CategoriesLoadingImpl<T>) then) =
      __$$CategoriesLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$CategoriesLoadingImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res, _$CategoriesLoadingImpl<T>>
    implements _$$CategoriesLoadingImplCopyWith<T, $Res> {
  __$$CategoriesLoadingImplCopyWithImpl(_$CategoriesLoadingImpl<T> _value,
      $Res Function(_$CategoriesLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CategoriesLoadingImpl<T> implements CategoriesLoading<T> {
  const _$CategoriesLoadingImpl();

  @override
  String toString() {
    return 'CategoryState<$T>.categoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel categoriesResponseModel)
        categoriesSuccess,
    required TResult Function(String error) categoriesError,
    required TResult Function() subCategoriesLoading,
    required TResult Function(
            SubCategoriesResponseModel subCategoriesResponseModel)
        subCategoriesSuccess,
    required TResult Function(String error) subCategoriesError,
  }) {
    return categoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult? Function(String error)? categoriesError,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult? Function(String error)? subCategoriesError,
  }) {
    return categoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult Function(String error)? categoriesError,
    TResult Function()? subCategoriesLoading,
    TResult Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult Function(String error)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
    required TResult Function(SubCategoriesLoading<T> value)
        subCategoriesLoading,
    required TResult Function(SubCategoriesSuccess<T> value)
        subCategoriesSuccess,
    required TResult Function(SubCategoriesError<T> value) subCategoriesError,
  }) {
    return categoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
    TResult? Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult? Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult? Function(SubCategoriesError<T> value)? subCategoriesError,
  }) {
    return categoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    TResult Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult Function(SubCategoriesError<T> value)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (categoriesLoading != null) {
      return categoriesLoading(this);
    }
    return orElse();
  }
}

abstract class CategoriesLoading<T> implements CategoryState<T> {
  const factory CategoriesLoading() = _$CategoriesLoadingImpl<T>;
}

/// @nodoc
abstract class _$$CategoriesSuccessImplCopyWith<T, $Res> {
  factory _$$CategoriesSuccessImplCopyWith(_$CategoriesSuccessImpl<T> value,
          $Res Function(_$CategoriesSuccessImpl<T>) then) =
      __$$CategoriesSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({CategoriesResponseModel categoriesResponseModel});
}

/// @nodoc
class __$$CategoriesSuccessImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res, _$CategoriesSuccessImpl<T>>
    implements _$$CategoriesSuccessImplCopyWith<T, $Res> {
  __$$CategoriesSuccessImplCopyWithImpl(_$CategoriesSuccessImpl<T> _value,
      $Res Function(_$CategoriesSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoriesResponseModel = null,
  }) {
    return _then(_$CategoriesSuccessImpl<T>(
      null == categoriesResponseModel
          ? _value.categoriesResponseModel
          : categoriesResponseModel // ignore: cast_nullable_to_non_nullable
              as CategoriesResponseModel,
    ));
  }
}

/// @nodoc

class _$CategoriesSuccessImpl<T> implements CategoriesSuccess<T> {
  const _$CategoriesSuccessImpl(this.categoriesResponseModel);

  @override
  final CategoriesResponseModel categoriesResponseModel;

  @override
  String toString() {
    return 'CategoryState<$T>.categoriesSuccess(categoriesResponseModel: $categoriesResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesSuccessImpl<T> &&
            (identical(
                    other.categoriesResponseModel, categoriesResponseModel) ||
                other.categoriesResponseModel == categoriesResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoriesResponseModel);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesSuccessImplCopyWith<T, _$CategoriesSuccessImpl<T>>
      get copyWith =>
          __$$CategoriesSuccessImplCopyWithImpl<T, _$CategoriesSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel categoriesResponseModel)
        categoriesSuccess,
    required TResult Function(String error) categoriesError,
    required TResult Function() subCategoriesLoading,
    required TResult Function(
            SubCategoriesResponseModel subCategoriesResponseModel)
        subCategoriesSuccess,
    required TResult Function(String error) subCategoriesError,
  }) {
    return categoriesSuccess(categoriesResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult? Function(String error)? categoriesError,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult? Function(String error)? subCategoriesError,
  }) {
    return categoriesSuccess?.call(categoriesResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult Function(String error)? categoriesError,
    TResult Function()? subCategoriesLoading,
    TResult Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult Function(String error)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (categoriesSuccess != null) {
      return categoriesSuccess(categoriesResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
    required TResult Function(SubCategoriesLoading<T> value)
        subCategoriesLoading,
    required TResult Function(SubCategoriesSuccess<T> value)
        subCategoriesSuccess,
    required TResult Function(SubCategoriesError<T> value) subCategoriesError,
  }) {
    return categoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
    TResult? Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult? Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult? Function(SubCategoriesError<T> value)? subCategoriesError,
  }) {
    return categoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    TResult Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult Function(SubCategoriesError<T> value)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (categoriesSuccess != null) {
      return categoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class CategoriesSuccess<T> implements CategoryState<T> {
  const factory CategoriesSuccess(
          final CategoriesResponseModel categoriesResponseModel) =
      _$CategoriesSuccessImpl<T>;

  CategoriesResponseModel get categoriesResponseModel;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesSuccessImplCopyWith<T, _$CategoriesSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoriesErrorImplCopyWith<T, $Res> {
  factory _$$CategoriesErrorImplCopyWith(_$CategoriesErrorImpl<T> value,
          $Res Function(_$CategoriesErrorImpl<T>) then) =
      __$$CategoriesErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CategoriesErrorImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res, _$CategoriesErrorImpl<T>>
    implements _$$CategoriesErrorImplCopyWith<T, $Res> {
  __$$CategoriesErrorImplCopyWithImpl(_$CategoriesErrorImpl<T> _value,
      $Res Function(_$CategoriesErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CategoriesErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoriesErrorImpl<T> implements CategoriesError<T> {
  const _$CategoriesErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CategoryState<$T>.categoriesError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesErrorImplCopyWith<T, _$CategoriesErrorImpl<T>> get copyWith =>
      __$$CategoriesErrorImplCopyWithImpl<T, _$CategoriesErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel categoriesResponseModel)
        categoriesSuccess,
    required TResult Function(String error) categoriesError,
    required TResult Function() subCategoriesLoading,
    required TResult Function(
            SubCategoriesResponseModel subCategoriesResponseModel)
        subCategoriesSuccess,
    required TResult Function(String error) subCategoriesError,
  }) {
    return categoriesError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult? Function(String error)? categoriesError,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult? Function(String error)? subCategoriesError,
  }) {
    return categoriesError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult Function(String error)? categoriesError,
    TResult Function()? subCategoriesLoading,
    TResult Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult Function(String error)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (categoriesError != null) {
      return categoriesError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
    required TResult Function(SubCategoriesLoading<T> value)
        subCategoriesLoading,
    required TResult Function(SubCategoriesSuccess<T> value)
        subCategoriesSuccess,
    required TResult Function(SubCategoriesError<T> value) subCategoriesError,
  }) {
    return categoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
    TResult? Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult? Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult? Function(SubCategoriesError<T> value)? subCategoriesError,
  }) {
    return categoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    TResult Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult Function(SubCategoriesError<T> value)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (categoriesError != null) {
      return categoriesError(this);
    }
    return orElse();
  }
}

abstract class CategoriesError<T> implements CategoryState<T> {
  const factory CategoriesError({required final String error}) =
      _$CategoriesErrorImpl<T>;

  String get error;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoriesErrorImplCopyWith<T, _$CategoriesErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubCategoriesLoadingImplCopyWith<T, $Res> {
  factory _$$SubCategoriesLoadingImplCopyWith(
          _$SubCategoriesLoadingImpl<T> value,
          $Res Function(_$SubCategoriesLoadingImpl<T>) then) =
      __$$SubCategoriesLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SubCategoriesLoadingImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res, _$SubCategoriesLoadingImpl<T>>
    implements _$$SubCategoriesLoadingImplCopyWith<T, $Res> {
  __$$SubCategoriesLoadingImplCopyWithImpl(_$SubCategoriesLoadingImpl<T> _value,
      $Res Function(_$SubCategoriesLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubCategoriesLoadingImpl<T> implements SubCategoriesLoading<T> {
  const _$SubCategoriesLoadingImpl();

  @override
  String toString() {
    return 'CategoryState<$T>.subCategoriesLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoriesLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel categoriesResponseModel)
        categoriesSuccess,
    required TResult Function(String error) categoriesError,
    required TResult Function() subCategoriesLoading,
    required TResult Function(
            SubCategoriesResponseModel subCategoriesResponseModel)
        subCategoriesSuccess,
    required TResult Function(String error) subCategoriesError,
  }) {
    return subCategoriesLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult? Function(String error)? categoriesError,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult? Function(String error)? subCategoriesError,
  }) {
    return subCategoriesLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult Function(String error)? categoriesError,
    TResult Function()? subCategoriesLoading,
    TResult Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult Function(String error)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (subCategoriesLoading != null) {
      return subCategoriesLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
    required TResult Function(SubCategoriesLoading<T> value)
        subCategoriesLoading,
    required TResult Function(SubCategoriesSuccess<T> value)
        subCategoriesSuccess,
    required TResult Function(SubCategoriesError<T> value) subCategoriesError,
  }) {
    return subCategoriesLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
    TResult? Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult? Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult? Function(SubCategoriesError<T> value)? subCategoriesError,
  }) {
    return subCategoriesLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    TResult Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult Function(SubCategoriesError<T> value)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (subCategoriesLoading != null) {
      return subCategoriesLoading(this);
    }
    return orElse();
  }
}

abstract class SubCategoriesLoading<T> implements CategoryState<T> {
  const factory SubCategoriesLoading() = _$SubCategoriesLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SubCategoriesSuccessImplCopyWith<T, $Res> {
  factory _$$SubCategoriesSuccessImplCopyWith(
          _$SubCategoriesSuccessImpl<T> value,
          $Res Function(_$SubCategoriesSuccessImpl<T>) then) =
      __$$SubCategoriesSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({SubCategoriesResponseModel subCategoriesResponseModel});
}

/// @nodoc
class __$$SubCategoriesSuccessImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res, _$SubCategoriesSuccessImpl<T>>
    implements _$$SubCategoriesSuccessImplCopyWith<T, $Res> {
  __$$SubCategoriesSuccessImplCopyWithImpl(_$SubCategoriesSuccessImpl<T> _value,
      $Res Function(_$SubCategoriesSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subCategoriesResponseModel = null,
  }) {
    return _then(_$SubCategoriesSuccessImpl<T>(
      null == subCategoriesResponseModel
          ? _value.subCategoriesResponseModel
          : subCategoriesResponseModel // ignore: cast_nullable_to_non_nullable
              as SubCategoriesResponseModel,
    ));
  }
}

/// @nodoc

class _$SubCategoriesSuccessImpl<T> implements SubCategoriesSuccess<T> {
  const _$SubCategoriesSuccessImpl(this.subCategoriesResponseModel);

  @override
  final SubCategoriesResponseModel subCategoriesResponseModel;

  @override
  String toString() {
    return 'CategoryState<$T>.subCategoriesSuccess(subCategoriesResponseModel: $subCategoriesResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoriesSuccessImpl<T> &&
            (identical(other.subCategoriesResponseModel,
                    subCategoriesResponseModel) ||
                other.subCategoriesResponseModel ==
                    subCategoriesResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subCategoriesResponseModel);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoriesSuccessImplCopyWith<T, _$SubCategoriesSuccessImpl<T>>
      get copyWith => __$$SubCategoriesSuccessImplCopyWithImpl<T,
          _$SubCategoriesSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel categoriesResponseModel)
        categoriesSuccess,
    required TResult Function(String error) categoriesError,
    required TResult Function() subCategoriesLoading,
    required TResult Function(
            SubCategoriesResponseModel subCategoriesResponseModel)
        subCategoriesSuccess,
    required TResult Function(String error) subCategoriesError,
  }) {
    return subCategoriesSuccess(subCategoriesResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult? Function(String error)? categoriesError,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult? Function(String error)? subCategoriesError,
  }) {
    return subCategoriesSuccess?.call(subCategoriesResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult Function(String error)? categoriesError,
    TResult Function()? subCategoriesLoading,
    TResult Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult Function(String error)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (subCategoriesSuccess != null) {
      return subCategoriesSuccess(subCategoriesResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
    required TResult Function(SubCategoriesLoading<T> value)
        subCategoriesLoading,
    required TResult Function(SubCategoriesSuccess<T> value)
        subCategoriesSuccess,
    required TResult Function(SubCategoriesError<T> value) subCategoriesError,
  }) {
    return subCategoriesSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
    TResult? Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult? Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult? Function(SubCategoriesError<T> value)? subCategoriesError,
  }) {
    return subCategoriesSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    TResult Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult Function(SubCategoriesError<T> value)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (subCategoriesSuccess != null) {
      return subCategoriesSuccess(this);
    }
    return orElse();
  }
}

abstract class SubCategoriesSuccess<T> implements CategoryState<T> {
  const factory SubCategoriesSuccess(
          final SubCategoriesResponseModel subCategoriesResponseModel) =
      _$SubCategoriesSuccessImpl<T>;

  SubCategoriesResponseModel get subCategoriesResponseModel;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubCategoriesSuccessImplCopyWith<T, _$SubCategoriesSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubCategoriesErrorImplCopyWith<T, $Res> {
  factory _$$SubCategoriesErrorImplCopyWith(_$SubCategoriesErrorImpl<T> value,
          $Res Function(_$SubCategoriesErrorImpl<T>) then) =
      __$$SubCategoriesErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SubCategoriesErrorImplCopyWithImpl<T, $Res>
    extends _$CategoryStateCopyWithImpl<T, $Res, _$SubCategoriesErrorImpl<T>>
    implements _$$SubCategoriesErrorImplCopyWith<T, $Res> {
  __$$SubCategoriesErrorImplCopyWithImpl(_$SubCategoriesErrorImpl<T> _value,
      $Res Function(_$SubCategoriesErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SubCategoriesErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SubCategoriesErrorImpl<T> implements SubCategoriesError<T> {
  const _$SubCategoriesErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CategoryState<$T>.subCategoriesError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoriesErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoriesErrorImplCopyWith<T, _$SubCategoriesErrorImpl<T>>
      get copyWith => __$$SubCategoriesErrorImplCopyWithImpl<T,
          _$SubCategoriesErrorImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() categoriesLoading,
    required TResult Function(CategoriesResponseModel categoriesResponseModel)
        categoriesSuccess,
    required TResult Function(String error) categoriesError,
    required TResult Function() subCategoriesLoading,
    required TResult Function(
            SubCategoriesResponseModel subCategoriesResponseModel)
        subCategoriesSuccess,
    required TResult Function(String error) subCategoriesError,
  }) {
    return subCategoriesError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? categoriesLoading,
    TResult? Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult? Function(String error)? categoriesError,
    TResult? Function()? subCategoriesLoading,
    TResult? Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult? Function(String error)? subCategoriesError,
  }) {
    return subCategoriesError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? categoriesLoading,
    TResult Function(CategoriesResponseModel categoriesResponseModel)?
        categoriesSuccess,
    TResult Function(String error)? categoriesError,
    TResult Function()? subCategoriesLoading,
    TResult Function(SubCategoriesResponseModel subCategoriesResponseModel)?
        subCategoriesSuccess,
    TResult Function(String error)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (subCategoriesError != null) {
      return subCategoriesError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(CategoriesLoading<T> value) categoriesLoading,
    required TResult Function(CategoriesSuccess<T> value) categoriesSuccess,
    required TResult Function(CategoriesError<T> value) categoriesError,
    required TResult Function(SubCategoriesLoading<T> value)
        subCategoriesLoading,
    required TResult Function(SubCategoriesSuccess<T> value)
        subCategoriesSuccess,
    required TResult Function(SubCategoriesError<T> value) subCategoriesError,
  }) {
    return subCategoriesError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult? Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult? Function(CategoriesError<T> value)? categoriesError,
    TResult? Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult? Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult? Function(SubCategoriesError<T> value)? subCategoriesError,
  }) {
    return subCategoriesError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(CategoriesLoading<T> value)? categoriesLoading,
    TResult Function(CategoriesSuccess<T> value)? categoriesSuccess,
    TResult Function(CategoriesError<T> value)? categoriesError,
    TResult Function(SubCategoriesLoading<T> value)? subCategoriesLoading,
    TResult Function(SubCategoriesSuccess<T> value)? subCategoriesSuccess,
    TResult Function(SubCategoriesError<T> value)? subCategoriesError,
    required TResult orElse(),
  }) {
    if (subCategoriesError != null) {
      return subCategoriesError(this);
    }
    return orElse();
  }
}

abstract class SubCategoriesError<T> implements CategoryState<T> {
  const factory SubCategoriesError({required final String error}) =
      _$SubCategoriesErrorImpl<T>;

  String get error;

  /// Create a copy of CategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubCategoriesErrorImplCopyWith<T, _$SubCategoriesErrorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
