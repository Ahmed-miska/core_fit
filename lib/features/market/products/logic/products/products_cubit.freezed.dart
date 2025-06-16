// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(List<Product> products) productsSuccess,
    required TResult Function(String error) productsError,
    required TResult Function() productByIdLoading,
    required TResult Function(ProductData product) productByIdSuccess,
    required TResult Function(String error) productByIdError,
    required TResult Function() reviewsLoading,
    required TResult Function(List<ReviewModel>? rates) reviewsSuccess,
    required TResult Function(String error) reviewsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(List<Product> products)? productsSuccess,
    TResult? Function(String error)? productsError,
    TResult? Function()? productByIdLoading,
    TResult? Function(ProductData product)? productByIdSuccess,
    TResult? Function(String error)? productByIdError,
    TResult? Function()? reviewsLoading,
    TResult? Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult? Function(String error)? reviewsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(List<Product> products)? productsSuccess,
    TResult Function(String error)? productsError,
    TResult Function()? productByIdLoading,
    TResult Function(ProductData product)? productByIdSuccess,
    TResult Function(String error)? productByIdError,
    TResult Function()? reviewsLoading,
    TResult Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult Function(String error)? reviewsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProductsLoading<T> value) productsLoading,
    required TResult Function(ProductsSuccess<T> value) productsSuccess,
    required TResult Function(ProductsError<T> value) productsError,
    required TResult Function(ProductByIdLoading<T> value) productByIdLoading,
    required TResult Function(ProductByIdSuccess<T> value) productByIdSuccess,
    required TResult Function(ProductByIdError<T> value) productByIdError,
    required TResult Function(ReviewsLoading<T> value) reviewsLoading,
    required TResult Function(ReviewsSuccess<T> value) reviewsSuccess,
    required TResult Function(ReviewsError<T> value) reviewsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProductsLoading<T> value)? productsLoading,
    TResult? Function(ProductsSuccess<T> value)? productsSuccess,
    TResult? Function(ProductsError<T> value)? productsError,
    TResult? Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult? Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult? Function(ProductByIdError<T> value)? productByIdError,
    TResult? Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult? Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult? Function(ReviewsError<T> value)? reviewsError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProductsLoading<T> value)? productsLoading,
    TResult Function(ProductsSuccess<T> value)? productsSuccess,
    TResult Function(ProductsError<T> value)? productsError,
    TResult Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult Function(ProductByIdError<T> value)? productByIdError,
    TResult Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult Function(ReviewsError<T> value)? reviewsError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<T, $Res> {
  factory $ProductsStateCopyWith(
          ProductsState<T> value, $Res Function(ProductsState<T>) then) =
      _$ProductsStateCopyWithImpl<T, $Res, ProductsState<T>>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<T, $Res, $Val extends ProductsState<T>>
    implements $ProductsStateCopyWith<T, $Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductsState
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
    extends _$ProductsStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> with DiagnosticableTreeMixin implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsState<$T>.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ProductsState<$T>.initial'));
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
    required TResult Function() productsLoading,
    required TResult Function(List<Product> products) productsSuccess,
    required TResult Function(String error) productsError,
    required TResult Function() productByIdLoading,
    required TResult Function(ProductData product) productByIdSuccess,
    required TResult Function(String error) productByIdError,
    required TResult Function() reviewsLoading,
    required TResult Function(List<ReviewModel>? rates) reviewsSuccess,
    required TResult Function(String error) reviewsError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(List<Product> products)? productsSuccess,
    TResult? Function(String error)? productsError,
    TResult? Function()? productByIdLoading,
    TResult? Function(ProductData product)? productByIdSuccess,
    TResult? Function(String error)? productByIdError,
    TResult? Function()? reviewsLoading,
    TResult? Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult? Function(String error)? reviewsError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(List<Product> products)? productsSuccess,
    TResult Function(String error)? productsError,
    TResult Function()? productByIdLoading,
    TResult Function(ProductData product)? productByIdSuccess,
    TResult Function(String error)? productByIdError,
    TResult Function()? reviewsLoading,
    TResult Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult Function(String error)? reviewsError,
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
    required TResult Function(ProductsLoading<T> value) productsLoading,
    required TResult Function(ProductsSuccess<T> value) productsSuccess,
    required TResult Function(ProductsError<T> value) productsError,
    required TResult Function(ProductByIdLoading<T> value) productByIdLoading,
    required TResult Function(ProductByIdSuccess<T> value) productByIdSuccess,
    required TResult Function(ProductByIdError<T> value) productByIdError,
    required TResult Function(ReviewsLoading<T> value) reviewsLoading,
    required TResult Function(ReviewsSuccess<T> value) reviewsSuccess,
    required TResult Function(ReviewsError<T> value) reviewsError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProductsLoading<T> value)? productsLoading,
    TResult? Function(ProductsSuccess<T> value)? productsSuccess,
    TResult? Function(ProductsError<T> value)? productsError,
    TResult? Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult? Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult? Function(ProductByIdError<T> value)? productByIdError,
    TResult? Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult? Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult? Function(ReviewsError<T> value)? reviewsError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProductsLoading<T> value)? productsLoading,
    TResult Function(ProductsSuccess<T> value)? productsSuccess,
    TResult Function(ProductsError<T> value)? productsError,
    TResult Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult Function(ProductByIdError<T> value)? productByIdError,
    TResult Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult Function(ReviewsError<T> value)? reviewsError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ProductsState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$ProductsLoadingImplCopyWith<T, $Res> {
  factory _$$ProductsLoadingImplCopyWith(_$ProductsLoadingImpl<T> value,
          $Res Function(_$ProductsLoadingImpl<T>) then) =
      __$$ProductsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ProductsLoadingImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ProductsLoadingImpl<T>>
    implements _$$ProductsLoadingImplCopyWith<T, $Res> {
  __$$ProductsLoadingImplCopyWithImpl(_$ProductsLoadingImpl<T> _value,
      $Res Function(_$ProductsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductsLoadingImpl<T>
    with DiagnosticableTreeMixin
    implements ProductsLoading<T> {
  const _$ProductsLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsState<$T>.productsLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductsState<$T>.productsLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(List<Product> products) productsSuccess,
    required TResult Function(String error) productsError,
    required TResult Function() productByIdLoading,
    required TResult Function(ProductData product) productByIdSuccess,
    required TResult Function(String error) productByIdError,
    required TResult Function() reviewsLoading,
    required TResult Function(List<ReviewModel>? rates) reviewsSuccess,
    required TResult Function(String error) reviewsError,
  }) {
    return productsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(List<Product> products)? productsSuccess,
    TResult? Function(String error)? productsError,
    TResult? Function()? productByIdLoading,
    TResult? Function(ProductData product)? productByIdSuccess,
    TResult? Function(String error)? productByIdError,
    TResult? Function()? reviewsLoading,
    TResult? Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult? Function(String error)? reviewsError,
  }) {
    return productsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(List<Product> products)? productsSuccess,
    TResult Function(String error)? productsError,
    TResult Function()? productByIdLoading,
    TResult Function(ProductData product)? productByIdSuccess,
    TResult Function(String error)? productByIdError,
    TResult Function()? reviewsLoading,
    TResult Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult Function(String error)? reviewsError,
    required TResult orElse(),
  }) {
    if (productsLoading != null) {
      return productsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProductsLoading<T> value) productsLoading,
    required TResult Function(ProductsSuccess<T> value) productsSuccess,
    required TResult Function(ProductsError<T> value) productsError,
    required TResult Function(ProductByIdLoading<T> value) productByIdLoading,
    required TResult Function(ProductByIdSuccess<T> value) productByIdSuccess,
    required TResult Function(ProductByIdError<T> value) productByIdError,
    required TResult Function(ReviewsLoading<T> value) reviewsLoading,
    required TResult Function(ReviewsSuccess<T> value) reviewsSuccess,
    required TResult Function(ReviewsError<T> value) reviewsError,
  }) {
    return productsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProductsLoading<T> value)? productsLoading,
    TResult? Function(ProductsSuccess<T> value)? productsSuccess,
    TResult? Function(ProductsError<T> value)? productsError,
    TResult? Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult? Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult? Function(ProductByIdError<T> value)? productByIdError,
    TResult? Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult? Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult? Function(ReviewsError<T> value)? reviewsError,
  }) {
    return productsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProductsLoading<T> value)? productsLoading,
    TResult Function(ProductsSuccess<T> value)? productsSuccess,
    TResult Function(ProductsError<T> value)? productsError,
    TResult Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult Function(ProductByIdError<T> value)? productByIdError,
    TResult Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult Function(ReviewsError<T> value)? reviewsError,
    required TResult orElse(),
  }) {
    if (productsLoading != null) {
      return productsLoading(this);
    }
    return orElse();
  }
}

abstract class ProductsLoading<T> implements ProductsState<T> {
  const factory ProductsLoading() = _$ProductsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ProductsSuccessImplCopyWith<T, $Res> {
  factory _$$ProductsSuccessImplCopyWith(_$ProductsSuccessImpl<T> value,
          $Res Function(_$ProductsSuccessImpl<T>) then) =
      __$$ProductsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<Product> products});
}

/// @nodoc
class __$$ProductsSuccessImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ProductsSuccessImpl<T>>
    implements _$$ProductsSuccessImplCopyWith<T, $Res> {
  __$$ProductsSuccessImplCopyWithImpl(_$ProductsSuccessImpl<T> _value,
      $Res Function(_$ProductsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$ProductsSuccessImpl<T>(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductsSuccessImpl<T>
    with DiagnosticableTreeMixin
    implements ProductsSuccess<T> {
  const _$ProductsSuccessImpl(final List<Product> products)
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsState<$T>.productsSuccess(products: $products)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductsState<$T>.productsSuccess'))
      ..add(DiagnosticsProperty('products', products));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsSuccessImplCopyWith<T, _$ProductsSuccessImpl<T>> get copyWith =>
      __$$ProductsSuccessImplCopyWithImpl<T, _$ProductsSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(List<Product> products) productsSuccess,
    required TResult Function(String error) productsError,
    required TResult Function() productByIdLoading,
    required TResult Function(ProductData product) productByIdSuccess,
    required TResult Function(String error) productByIdError,
    required TResult Function() reviewsLoading,
    required TResult Function(List<ReviewModel>? rates) reviewsSuccess,
    required TResult Function(String error) reviewsError,
  }) {
    return productsSuccess(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(List<Product> products)? productsSuccess,
    TResult? Function(String error)? productsError,
    TResult? Function()? productByIdLoading,
    TResult? Function(ProductData product)? productByIdSuccess,
    TResult? Function(String error)? productByIdError,
    TResult? Function()? reviewsLoading,
    TResult? Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult? Function(String error)? reviewsError,
  }) {
    return productsSuccess?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(List<Product> products)? productsSuccess,
    TResult Function(String error)? productsError,
    TResult Function()? productByIdLoading,
    TResult Function(ProductData product)? productByIdSuccess,
    TResult Function(String error)? productByIdError,
    TResult Function()? reviewsLoading,
    TResult Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult Function(String error)? reviewsError,
    required TResult orElse(),
  }) {
    if (productsSuccess != null) {
      return productsSuccess(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProductsLoading<T> value) productsLoading,
    required TResult Function(ProductsSuccess<T> value) productsSuccess,
    required TResult Function(ProductsError<T> value) productsError,
    required TResult Function(ProductByIdLoading<T> value) productByIdLoading,
    required TResult Function(ProductByIdSuccess<T> value) productByIdSuccess,
    required TResult Function(ProductByIdError<T> value) productByIdError,
    required TResult Function(ReviewsLoading<T> value) reviewsLoading,
    required TResult Function(ReviewsSuccess<T> value) reviewsSuccess,
    required TResult Function(ReviewsError<T> value) reviewsError,
  }) {
    return productsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProductsLoading<T> value)? productsLoading,
    TResult? Function(ProductsSuccess<T> value)? productsSuccess,
    TResult? Function(ProductsError<T> value)? productsError,
    TResult? Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult? Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult? Function(ProductByIdError<T> value)? productByIdError,
    TResult? Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult? Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult? Function(ReviewsError<T> value)? reviewsError,
  }) {
    return productsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProductsLoading<T> value)? productsLoading,
    TResult Function(ProductsSuccess<T> value)? productsSuccess,
    TResult Function(ProductsError<T> value)? productsError,
    TResult Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult Function(ProductByIdError<T> value)? productByIdError,
    TResult Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult Function(ReviewsError<T> value)? reviewsError,
    required TResult orElse(),
  }) {
    if (productsSuccess != null) {
      return productsSuccess(this);
    }
    return orElse();
  }
}

abstract class ProductsSuccess<T> implements ProductsState<T> {
  const factory ProductsSuccess(final List<Product> products) =
      _$ProductsSuccessImpl<T>;

  List<Product> get products;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsSuccessImplCopyWith<T, _$ProductsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductsErrorImplCopyWith<T, $Res> {
  factory _$$ProductsErrorImplCopyWith(_$ProductsErrorImpl<T> value,
          $Res Function(_$ProductsErrorImpl<T>) then) =
      __$$ProductsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ProductsErrorImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ProductsErrorImpl<T>>
    implements _$$ProductsErrorImplCopyWith<T, $Res> {
  __$$ProductsErrorImplCopyWithImpl(_$ProductsErrorImpl<T> _value,
      $Res Function(_$ProductsErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProductsErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductsErrorImpl<T>
    with DiagnosticableTreeMixin
    implements ProductsError<T> {
  const _$ProductsErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsState<$T>.productsError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductsState<$T>.productsError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsErrorImplCopyWith<T, _$ProductsErrorImpl<T>> get copyWith =>
      __$$ProductsErrorImplCopyWithImpl<T, _$ProductsErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(List<Product> products) productsSuccess,
    required TResult Function(String error) productsError,
    required TResult Function() productByIdLoading,
    required TResult Function(ProductData product) productByIdSuccess,
    required TResult Function(String error) productByIdError,
    required TResult Function() reviewsLoading,
    required TResult Function(List<ReviewModel>? rates) reviewsSuccess,
    required TResult Function(String error) reviewsError,
  }) {
    return productsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(List<Product> products)? productsSuccess,
    TResult? Function(String error)? productsError,
    TResult? Function()? productByIdLoading,
    TResult? Function(ProductData product)? productByIdSuccess,
    TResult? Function(String error)? productByIdError,
    TResult? Function()? reviewsLoading,
    TResult? Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult? Function(String error)? reviewsError,
  }) {
    return productsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(List<Product> products)? productsSuccess,
    TResult Function(String error)? productsError,
    TResult Function()? productByIdLoading,
    TResult Function(ProductData product)? productByIdSuccess,
    TResult Function(String error)? productByIdError,
    TResult Function()? reviewsLoading,
    TResult Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult Function(String error)? reviewsError,
    required TResult orElse(),
  }) {
    if (productsError != null) {
      return productsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProductsLoading<T> value) productsLoading,
    required TResult Function(ProductsSuccess<T> value) productsSuccess,
    required TResult Function(ProductsError<T> value) productsError,
    required TResult Function(ProductByIdLoading<T> value) productByIdLoading,
    required TResult Function(ProductByIdSuccess<T> value) productByIdSuccess,
    required TResult Function(ProductByIdError<T> value) productByIdError,
    required TResult Function(ReviewsLoading<T> value) reviewsLoading,
    required TResult Function(ReviewsSuccess<T> value) reviewsSuccess,
    required TResult Function(ReviewsError<T> value) reviewsError,
  }) {
    return productsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProductsLoading<T> value)? productsLoading,
    TResult? Function(ProductsSuccess<T> value)? productsSuccess,
    TResult? Function(ProductsError<T> value)? productsError,
    TResult? Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult? Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult? Function(ProductByIdError<T> value)? productByIdError,
    TResult? Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult? Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult? Function(ReviewsError<T> value)? reviewsError,
  }) {
    return productsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProductsLoading<T> value)? productsLoading,
    TResult Function(ProductsSuccess<T> value)? productsSuccess,
    TResult Function(ProductsError<T> value)? productsError,
    TResult Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult Function(ProductByIdError<T> value)? productByIdError,
    TResult Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult Function(ReviewsError<T> value)? reviewsError,
    required TResult orElse(),
  }) {
    if (productsError != null) {
      return productsError(this);
    }
    return orElse();
  }
}

abstract class ProductsError<T> implements ProductsState<T> {
  const factory ProductsError({required final String error}) =
      _$ProductsErrorImpl<T>;

  String get error;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductsErrorImplCopyWith<T, _$ProductsErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductByIdLoadingImplCopyWith<T, $Res> {
  factory _$$ProductByIdLoadingImplCopyWith(_$ProductByIdLoadingImpl<T> value,
          $Res Function(_$ProductByIdLoadingImpl<T>) then) =
      __$$ProductByIdLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ProductByIdLoadingImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ProductByIdLoadingImpl<T>>
    implements _$$ProductByIdLoadingImplCopyWith<T, $Res> {
  __$$ProductByIdLoadingImplCopyWithImpl(_$ProductByIdLoadingImpl<T> _value,
      $Res Function(_$ProductByIdLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProductByIdLoadingImpl<T>
    with DiagnosticableTreeMixin
    implements ProductByIdLoading<T> {
  const _$ProductByIdLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsState<$T>.productByIdLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ProductsState<$T>.productByIdLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductByIdLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(List<Product> products) productsSuccess,
    required TResult Function(String error) productsError,
    required TResult Function() productByIdLoading,
    required TResult Function(ProductData product) productByIdSuccess,
    required TResult Function(String error) productByIdError,
    required TResult Function() reviewsLoading,
    required TResult Function(List<ReviewModel>? rates) reviewsSuccess,
    required TResult Function(String error) reviewsError,
  }) {
    return productByIdLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(List<Product> products)? productsSuccess,
    TResult? Function(String error)? productsError,
    TResult? Function()? productByIdLoading,
    TResult? Function(ProductData product)? productByIdSuccess,
    TResult? Function(String error)? productByIdError,
    TResult? Function()? reviewsLoading,
    TResult? Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult? Function(String error)? reviewsError,
  }) {
    return productByIdLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(List<Product> products)? productsSuccess,
    TResult Function(String error)? productsError,
    TResult Function()? productByIdLoading,
    TResult Function(ProductData product)? productByIdSuccess,
    TResult Function(String error)? productByIdError,
    TResult Function()? reviewsLoading,
    TResult Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult Function(String error)? reviewsError,
    required TResult orElse(),
  }) {
    if (productByIdLoading != null) {
      return productByIdLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProductsLoading<T> value) productsLoading,
    required TResult Function(ProductsSuccess<T> value) productsSuccess,
    required TResult Function(ProductsError<T> value) productsError,
    required TResult Function(ProductByIdLoading<T> value) productByIdLoading,
    required TResult Function(ProductByIdSuccess<T> value) productByIdSuccess,
    required TResult Function(ProductByIdError<T> value) productByIdError,
    required TResult Function(ReviewsLoading<T> value) reviewsLoading,
    required TResult Function(ReviewsSuccess<T> value) reviewsSuccess,
    required TResult Function(ReviewsError<T> value) reviewsError,
  }) {
    return productByIdLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProductsLoading<T> value)? productsLoading,
    TResult? Function(ProductsSuccess<T> value)? productsSuccess,
    TResult? Function(ProductsError<T> value)? productsError,
    TResult? Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult? Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult? Function(ProductByIdError<T> value)? productByIdError,
    TResult? Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult? Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult? Function(ReviewsError<T> value)? reviewsError,
  }) {
    return productByIdLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProductsLoading<T> value)? productsLoading,
    TResult Function(ProductsSuccess<T> value)? productsSuccess,
    TResult Function(ProductsError<T> value)? productsError,
    TResult Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult Function(ProductByIdError<T> value)? productByIdError,
    TResult Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult Function(ReviewsError<T> value)? reviewsError,
    required TResult orElse(),
  }) {
    if (productByIdLoading != null) {
      return productByIdLoading(this);
    }
    return orElse();
  }
}

abstract class ProductByIdLoading<T> implements ProductsState<T> {
  const factory ProductByIdLoading() = _$ProductByIdLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ProductByIdSuccessImplCopyWith<T, $Res> {
  factory _$$ProductByIdSuccessImplCopyWith(_$ProductByIdSuccessImpl<T> value,
          $Res Function(_$ProductByIdSuccessImpl<T>) then) =
      __$$ProductByIdSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ProductData product});
}

/// @nodoc
class __$$ProductByIdSuccessImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ProductByIdSuccessImpl<T>>
    implements _$$ProductByIdSuccessImplCopyWith<T, $Res> {
  __$$ProductByIdSuccessImplCopyWithImpl(_$ProductByIdSuccessImpl<T> _value,
      $Res Function(_$ProductByIdSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductByIdSuccessImpl<T>(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductData,
    ));
  }
}

/// @nodoc

class _$ProductByIdSuccessImpl<T>
    with DiagnosticableTreeMixin
    implements ProductByIdSuccess<T> {
  const _$ProductByIdSuccessImpl(this.product);

  @override
  final ProductData product;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsState<$T>.productByIdSuccess(product: $product)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductsState<$T>.productByIdSuccess'))
      ..add(DiagnosticsProperty('product', product));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductByIdSuccessImpl<T> &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductByIdSuccessImplCopyWith<T, _$ProductByIdSuccessImpl<T>>
      get copyWith => __$$ProductByIdSuccessImplCopyWithImpl<T,
          _$ProductByIdSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(List<Product> products) productsSuccess,
    required TResult Function(String error) productsError,
    required TResult Function() productByIdLoading,
    required TResult Function(ProductData product) productByIdSuccess,
    required TResult Function(String error) productByIdError,
    required TResult Function() reviewsLoading,
    required TResult Function(List<ReviewModel>? rates) reviewsSuccess,
    required TResult Function(String error) reviewsError,
  }) {
    return productByIdSuccess(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(List<Product> products)? productsSuccess,
    TResult? Function(String error)? productsError,
    TResult? Function()? productByIdLoading,
    TResult? Function(ProductData product)? productByIdSuccess,
    TResult? Function(String error)? productByIdError,
    TResult? Function()? reviewsLoading,
    TResult? Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult? Function(String error)? reviewsError,
  }) {
    return productByIdSuccess?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(List<Product> products)? productsSuccess,
    TResult Function(String error)? productsError,
    TResult Function()? productByIdLoading,
    TResult Function(ProductData product)? productByIdSuccess,
    TResult Function(String error)? productByIdError,
    TResult Function()? reviewsLoading,
    TResult Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult Function(String error)? reviewsError,
    required TResult orElse(),
  }) {
    if (productByIdSuccess != null) {
      return productByIdSuccess(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProductsLoading<T> value) productsLoading,
    required TResult Function(ProductsSuccess<T> value) productsSuccess,
    required TResult Function(ProductsError<T> value) productsError,
    required TResult Function(ProductByIdLoading<T> value) productByIdLoading,
    required TResult Function(ProductByIdSuccess<T> value) productByIdSuccess,
    required TResult Function(ProductByIdError<T> value) productByIdError,
    required TResult Function(ReviewsLoading<T> value) reviewsLoading,
    required TResult Function(ReviewsSuccess<T> value) reviewsSuccess,
    required TResult Function(ReviewsError<T> value) reviewsError,
  }) {
    return productByIdSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProductsLoading<T> value)? productsLoading,
    TResult? Function(ProductsSuccess<T> value)? productsSuccess,
    TResult? Function(ProductsError<T> value)? productsError,
    TResult? Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult? Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult? Function(ProductByIdError<T> value)? productByIdError,
    TResult? Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult? Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult? Function(ReviewsError<T> value)? reviewsError,
  }) {
    return productByIdSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProductsLoading<T> value)? productsLoading,
    TResult Function(ProductsSuccess<T> value)? productsSuccess,
    TResult Function(ProductsError<T> value)? productsError,
    TResult Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult Function(ProductByIdError<T> value)? productByIdError,
    TResult Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult Function(ReviewsError<T> value)? reviewsError,
    required TResult orElse(),
  }) {
    if (productByIdSuccess != null) {
      return productByIdSuccess(this);
    }
    return orElse();
  }
}

abstract class ProductByIdSuccess<T> implements ProductsState<T> {
  const factory ProductByIdSuccess(final ProductData product) =
      _$ProductByIdSuccessImpl<T>;

  ProductData get product;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductByIdSuccessImplCopyWith<T, _$ProductByIdSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductByIdErrorImplCopyWith<T, $Res> {
  factory _$$ProductByIdErrorImplCopyWith(_$ProductByIdErrorImpl<T> value,
          $Res Function(_$ProductByIdErrorImpl<T>) then) =
      __$$ProductByIdErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ProductByIdErrorImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ProductByIdErrorImpl<T>>
    implements _$$ProductByIdErrorImplCopyWith<T, $Res> {
  __$$ProductByIdErrorImplCopyWithImpl(_$ProductByIdErrorImpl<T> _value,
      $Res Function(_$ProductByIdErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProductByIdErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductByIdErrorImpl<T>
    with DiagnosticableTreeMixin
    implements ProductByIdError<T> {
  const _$ProductByIdErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsState<$T>.productByIdError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductsState<$T>.productByIdError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductByIdErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductByIdErrorImplCopyWith<T, _$ProductByIdErrorImpl<T>> get copyWith =>
      __$$ProductByIdErrorImplCopyWithImpl<T, _$ProductByIdErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(List<Product> products) productsSuccess,
    required TResult Function(String error) productsError,
    required TResult Function() productByIdLoading,
    required TResult Function(ProductData product) productByIdSuccess,
    required TResult Function(String error) productByIdError,
    required TResult Function() reviewsLoading,
    required TResult Function(List<ReviewModel>? rates) reviewsSuccess,
    required TResult Function(String error) reviewsError,
  }) {
    return productByIdError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(List<Product> products)? productsSuccess,
    TResult? Function(String error)? productsError,
    TResult? Function()? productByIdLoading,
    TResult? Function(ProductData product)? productByIdSuccess,
    TResult? Function(String error)? productByIdError,
    TResult? Function()? reviewsLoading,
    TResult? Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult? Function(String error)? reviewsError,
  }) {
    return productByIdError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(List<Product> products)? productsSuccess,
    TResult Function(String error)? productsError,
    TResult Function()? productByIdLoading,
    TResult Function(ProductData product)? productByIdSuccess,
    TResult Function(String error)? productByIdError,
    TResult Function()? reviewsLoading,
    TResult Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult Function(String error)? reviewsError,
    required TResult orElse(),
  }) {
    if (productByIdError != null) {
      return productByIdError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProductsLoading<T> value) productsLoading,
    required TResult Function(ProductsSuccess<T> value) productsSuccess,
    required TResult Function(ProductsError<T> value) productsError,
    required TResult Function(ProductByIdLoading<T> value) productByIdLoading,
    required TResult Function(ProductByIdSuccess<T> value) productByIdSuccess,
    required TResult Function(ProductByIdError<T> value) productByIdError,
    required TResult Function(ReviewsLoading<T> value) reviewsLoading,
    required TResult Function(ReviewsSuccess<T> value) reviewsSuccess,
    required TResult Function(ReviewsError<T> value) reviewsError,
  }) {
    return productByIdError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProductsLoading<T> value)? productsLoading,
    TResult? Function(ProductsSuccess<T> value)? productsSuccess,
    TResult? Function(ProductsError<T> value)? productsError,
    TResult? Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult? Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult? Function(ProductByIdError<T> value)? productByIdError,
    TResult? Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult? Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult? Function(ReviewsError<T> value)? reviewsError,
  }) {
    return productByIdError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProductsLoading<T> value)? productsLoading,
    TResult Function(ProductsSuccess<T> value)? productsSuccess,
    TResult Function(ProductsError<T> value)? productsError,
    TResult Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult Function(ProductByIdError<T> value)? productByIdError,
    TResult Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult Function(ReviewsError<T> value)? reviewsError,
    required TResult orElse(),
  }) {
    if (productByIdError != null) {
      return productByIdError(this);
    }
    return orElse();
  }
}

abstract class ProductByIdError<T> implements ProductsState<T> {
  const factory ProductByIdError({required final String error}) =
      _$ProductByIdErrorImpl<T>;

  String get error;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductByIdErrorImplCopyWith<T, _$ProductByIdErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewsLoadingImplCopyWith<T, $Res> {
  factory _$$ReviewsLoadingImplCopyWith(_$ReviewsLoadingImpl<T> value,
          $Res Function(_$ReviewsLoadingImpl<T>) then) =
      __$$ReviewsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ReviewsLoadingImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ReviewsLoadingImpl<T>>
    implements _$$ReviewsLoadingImplCopyWith<T, $Res> {
  __$$ReviewsLoadingImplCopyWithImpl(_$ReviewsLoadingImpl<T> _value,
      $Res Function(_$ReviewsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReviewsLoadingImpl<T>
    with DiagnosticableTreeMixin
    implements ReviewsLoading<T> {
  const _$ReviewsLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsState<$T>.reviewsLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductsState<$T>.reviewsLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReviewsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(List<Product> products) productsSuccess,
    required TResult Function(String error) productsError,
    required TResult Function() productByIdLoading,
    required TResult Function(ProductData product) productByIdSuccess,
    required TResult Function(String error) productByIdError,
    required TResult Function() reviewsLoading,
    required TResult Function(List<ReviewModel>? rates) reviewsSuccess,
    required TResult Function(String error) reviewsError,
  }) {
    return reviewsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(List<Product> products)? productsSuccess,
    TResult? Function(String error)? productsError,
    TResult? Function()? productByIdLoading,
    TResult? Function(ProductData product)? productByIdSuccess,
    TResult? Function(String error)? productByIdError,
    TResult? Function()? reviewsLoading,
    TResult? Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult? Function(String error)? reviewsError,
  }) {
    return reviewsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(List<Product> products)? productsSuccess,
    TResult Function(String error)? productsError,
    TResult Function()? productByIdLoading,
    TResult Function(ProductData product)? productByIdSuccess,
    TResult Function(String error)? productByIdError,
    TResult Function()? reviewsLoading,
    TResult Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult Function(String error)? reviewsError,
    required TResult orElse(),
  }) {
    if (reviewsLoading != null) {
      return reviewsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProductsLoading<T> value) productsLoading,
    required TResult Function(ProductsSuccess<T> value) productsSuccess,
    required TResult Function(ProductsError<T> value) productsError,
    required TResult Function(ProductByIdLoading<T> value) productByIdLoading,
    required TResult Function(ProductByIdSuccess<T> value) productByIdSuccess,
    required TResult Function(ProductByIdError<T> value) productByIdError,
    required TResult Function(ReviewsLoading<T> value) reviewsLoading,
    required TResult Function(ReviewsSuccess<T> value) reviewsSuccess,
    required TResult Function(ReviewsError<T> value) reviewsError,
  }) {
    return reviewsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProductsLoading<T> value)? productsLoading,
    TResult? Function(ProductsSuccess<T> value)? productsSuccess,
    TResult? Function(ProductsError<T> value)? productsError,
    TResult? Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult? Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult? Function(ProductByIdError<T> value)? productByIdError,
    TResult? Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult? Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult? Function(ReviewsError<T> value)? reviewsError,
  }) {
    return reviewsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProductsLoading<T> value)? productsLoading,
    TResult Function(ProductsSuccess<T> value)? productsSuccess,
    TResult Function(ProductsError<T> value)? productsError,
    TResult Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult Function(ProductByIdError<T> value)? productByIdError,
    TResult Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult Function(ReviewsError<T> value)? reviewsError,
    required TResult orElse(),
  }) {
    if (reviewsLoading != null) {
      return reviewsLoading(this);
    }
    return orElse();
  }
}

abstract class ReviewsLoading<T> implements ProductsState<T> {
  const factory ReviewsLoading() = _$ReviewsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$ReviewsSuccessImplCopyWith<T, $Res> {
  factory _$$ReviewsSuccessImplCopyWith(_$ReviewsSuccessImpl<T> value,
          $Res Function(_$ReviewsSuccessImpl<T>) then) =
      __$$ReviewsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<ReviewModel>? rates});
}

/// @nodoc
class __$$ReviewsSuccessImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ReviewsSuccessImpl<T>>
    implements _$$ReviewsSuccessImplCopyWith<T, $Res> {
  __$$ReviewsSuccessImplCopyWithImpl(_$ReviewsSuccessImpl<T> _value,
      $Res Function(_$ReviewsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rates = freezed,
  }) {
    return _then(_$ReviewsSuccessImpl<T>(
      freezed == rates
          ? _value._rates
          : rates // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>?,
    ));
  }
}

/// @nodoc

class _$ReviewsSuccessImpl<T>
    with DiagnosticableTreeMixin
    implements ReviewsSuccess<T> {
  const _$ReviewsSuccessImpl(final List<ReviewModel>? rates) : _rates = rates;

  final List<ReviewModel>? _rates;
  @override
  List<ReviewModel>? get rates {
    final value = _rates;
    if (value == null) return null;
    if (_rates is EqualUnmodifiableListView) return _rates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsState<$T>.reviewsSuccess(rates: $rates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductsState<$T>.reviewsSuccess'))
      ..add(DiagnosticsProperty('rates', rates));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other._rates, _rates));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rates));

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsSuccessImplCopyWith<T, _$ReviewsSuccessImpl<T>> get copyWith =>
      __$$ReviewsSuccessImplCopyWithImpl<T, _$ReviewsSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(List<Product> products) productsSuccess,
    required TResult Function(String error) productsError,
    required TResult Function() productByIdLoading,
    required TResult Function(ProductData product) productByIdSuccess,
    required TResult Function(String error) productByIdError,
    required TResult Function() reviewsLoading,
    required TResult Function(List<ReviewModel>? rates) reviewsSuccess,
    required TResult Function(String error) reviewsError,
  }) {
    return reviewsSuccess(rates);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(List<Product> products)? productsSuccess,
    TResult? Function(String error)? productsError,
    TResult? Function()? productByIdLoading,
    TResult? Function(ProductData product)? productByIdSuccess,
    TResult? Function(String error)? productByIdError,
    TResult? Function()? reviewsLoading,
    TResult? Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult? Function(String error)? reviewsError,
  }) {
    return reviewsSuccess?.call(rates);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(List<Product> products)? productsSuccess,
    TResult Function(String error)? productsError,
    TResult Function()? productByIdLoading,
    TResult Function(ProductData product)? productByIdSuccess,
    TResult Function(String error)? productByIdError,
    TResult Function()? reviewsLoading,
    TResult Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult Function(String error)? reviewsError,
    required TResult orElse(),
  }) {
    if (reviewsSuccess != null) {
      return reviewsSuccess(rates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProductsLoading<T> value) productsLoading,
    required TResult Function(ProductsSuccess<T> value) productsSuccess,
    required TResult Function(ProductsError<T> value) productsError,
    required TResult Function(ProductByIdLoading<T> value) productByIdLoading,
    required TResult Function(ProductByIdSuccess<T> value) productByIdSuccess,
    required TResult Function(ProductByIdError<T> value) productByIdError,
    required TResult Function(ReviewsLoading<T> value) reviewsLoading,
    required TResult Function(ReviewsSuccess<T> value) reviewsSuccess,
    required TResult Function(ReviewsError<T> value) reviewsError,
  }) {
    return reviewsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProductsLoading<T> value)? productsLoading,
    TResult? Function(ProductsSuccess<T> value)? productsSuccess,
    TResult? Function(ProductsError<T> value)? productsError,
    TResult? Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult? Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult? Function(ProductByIdError<T> value)? productByIdError,
    TResult? Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult? Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult? Function(ReviewsError<T> value)? reviewsError,
  }) {
    return reviewsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProductsLoading<T> value)? productsLoading,
    TResult Function(ProductsSuccess<T> value)? productsSuccess,
    TResult Function(ProductsError<T> value)? productsError,
    TResult Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult Function(ProductByIdError<T> value)? productByIdError,
    TResult Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult Function(ReviewsError<T> value)? reviewsError,
    required TResult orElse(),
  }) {
    if (reviewsSuccess != null) {
      return reviewsSuccess(this);
    }
    return orElse();
  }
}

abstract class ReviewsSuccess<T> implements ProductsState<T> {
  const factory ReviewsSuccess(final List<ReviewModel>? rates) =
      _$ReviewsSuccessImpl<T>;

  List<ReviewModel>? get rates;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewsSuccessImplCopyWith<T, _$ReviewsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewsErrorImplCopyWith<T, $Res> {
  factory _$$ReviewsErrorImplCopyWith(_$ReviewsErrorImpl<T> value,
          $Res Function(_$ReviewsErrorImpl<T>) then) =
      __$$ReviewsErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ReviewsErrorImplCopyWithImpl<T, $Res>
    extends _$ProductsStateCopyWithImpl<T, $Res, _$ReviewsErrorImpl<T>>
    implements _$$ReviewsErrorImplCopyWith<T, $Res> {
  __$$ReviewsErrorImplCopyWithImpl(
      _$ReviewsErrorImpl<T> _value, $Res Function(_$ReviewsErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ReviewsErrorImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReviewsErrorImpl<T>
    with DiagnosticableTreeMixin
    implements ReviewsError<T> {
  const _$ReviewsErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductsState<$T>.reviewsError(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductsState<$T>.reviewsError'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsErrorImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsErrorImplCopyWith<T, _$ReviewsErrorImpl<T>> get copyWith =>
      __$$ReviewsErrorImplCopyWithImpl<T, _$ReviewsErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() productsLoading,
    required TResult Function(List<Product> products) productsSuccess,
    required TResult Function(String error) productsError,
    required TResult Function() productByIdLoading,
    required TResult Function(ProductData product) productByIdSuccess,
    required TResult Function(String error) productByIdError,
    required TResult Function() reviewsLoading,
    required TResult Function(List<ReviewModel>? rates) reviewsSuccess,
    required TResult Function(String error) reviewsError,
  }) {
    return reviewsError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? productsLoading,
    TResult? Function(List<Product> products)? productsSuccess,
    TResult? Function(String error)? productsError,
    TResult? Function()? productByIdLoading,
    TResult? Function(ProductData product)? productByIdSuccess,
    TResult? Function(String error)? productByIdError,
    TResult? Function()? reviewsLoading,
    TResult? Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult? Function(String error)? reviewsError,
  }) {
    return reviewsError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? productsLoading,
    TResult Function(List<Product> products)? productsSuccess,
    TResult Function(String error)? productsError,
    TResult Function()? productByIdLoading,
    TResult Function(ProductData product)? productByIdSuccess,
    TResult Function(String error)? productByIdError,
    TResult Function()? reviewsLoading,
    TResult Function(List<ReviewModel>? rates)? reviewsSuccess,
    TResult Function(String error)? reviewsError,
    required TResult orElse(),
  }) {
    if (reviewsError != null) {
      return reviewsError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(ProductsLoading<T> value) productsLoading,
    required TResult Function(ProductsSuccess<T> value) productsSuccess,
    required TResult Function(ProductsError<T> value) productsError,
    required TResult Function(ProductByIdLoading<T> value) productByIdLoading,
    required TResult Function(ProductByIdSuccess<T> value) productByIdSuccess,
    required TResult Function(ProductByIdError<T> value) productByIdError,
    required TResult Function(ReviewsLoading<T> value) reviewsLoading,
    required TResult Function(ReviewsSuccess<T> value) reviewsSuccess,
    required TResult Function(ReviewsError<T> value) reviewsError,
  }) {
    return reviewsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(ProductsLoading<T> value)? productsLoading,
    TResult? Function(ProductsSuccess<T> value)? productsSuccess,
    TResult? Function(ProductsError<T> value)? productsError,
    TResult? Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult? Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult? Function(ProductByIdError<T> value)? productByIdError,
    TResult? Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult? Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult? Function(ReviewsError<T> value)? reviewsError,
  }) {
    return reviewsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(ProductsLoading<T> value)? productsLoading,
    TResult Function(ProductsSuccess<T> value)? productsSuccess,
    TResult Function(ProductsError<T> value)? productsError,
    TResult Function(ProductByIdLoading<T> value)? productByIdLoading,
    TResult Function(ProductByIdSuccess<T> value)? productByIdSuccess,
    TResult Function(ProductByIdError<T> value)? productByIdError,
    TResult Function(ReviewsLoading<T> value)? reviewsLoading,
    TResult Function(ReviewsSuccess<T> value)? reviewsSuccess,
    TResult Function(ReviewsError<T> value)? reviewsError,
    required TResult orElse(),
  }) {
    if (reviewsError != null) {
      return reviewsError(this);
    }
    return orElse();
  }
}

abstract class ReviewsError<T> implements ProductsState<T> {
  const factory ReviewsError({required final String error}) =
      _$ReviewsErrorImpl<T>;

  String get error;

  /// Create a copy of ProductsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReviewsErrorImplCopyWith<T, _$ReviewsErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
