// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProfileLoading,
    required TResult Function(ProfileResponseModel data) getProfileSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getProfilefailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProfileLoading,
    TResult? Function(ProfileResponseModel data)? getProfileSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getProfilefailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProfileLoading,
    TResult Function(ProfileResponseModel data)? getProfileSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getProfilefailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetProfileLoading<T> value) getProfileLoading,
    required TResult Function(GetProfileSuccess<T> value) getProfileSuccess,
    required TResult Function(GetProfileError<T> value) getProfilefailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetProfileLoading<T> value)? getProfileLoading,
    TResult? Function(GetProfileSuccess<T> value)? getProfileSuccess,
    TResult? Function(GetProfileError<T> value)? getProfilefailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetProfileLoading<T> value)? getProfileLoading,
    TResult Function(GetProfileSuccess<T> value)? getProfileSuccess,
    TResult Function(GetProfileError<T> value)? getProfilefailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<T, $Res> {
  factory $ProfileStateCopyWith(
          ProfileState<T> value, $Res Function(ProfileState<T>) then) =
      _$ProfileStateCopyWithImpl<T, $Res, ProfileState<T>>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<T, $Res, $Val extends ProfileState<T>>
    implements $ProfileStateCopyWith<T, $Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
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
    extends _$ProfileStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProfileState<$T>.initial()';
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
    required TResult Function() getProfileLoading,
    required TResult Function(ProfileResponseModel data) getProfileSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getProfilefailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProfileLoading,
    TResult? Function(ProfileResponseModel data)? getProfileSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getProfilefailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProfileLoading,
    TResult Function(ProfileResponseModel data)? getProfileSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getProfilefailure,
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
    required TResult Function(GetProfileLoading<T> value) getProfileLoading,
    required TResult Function(GetProfileSuccess<T> value) getProfileSuccess,
    required TResult Function(GetProfileError<T> value) getProfilefailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetProfileLoading<T> value)? getProfileLoading,
    TResult? Function(GetProfileSuccess<T> value)? getProfileSuccess,
    TResult? Function(GetProfileError<T> value)? getProfilefailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetProfileLoading<T> value)? getProfileLoading,
    TResult Function(GetProfileSuccess<T> value)? getProfileSuccess,
    TResult Function(GetProfileError<T> value)? getProfilefailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements ProfileState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$GetProfileLoadingImplCopyWith<T, $Res> {
  factory _$$GetProfileLoadingImplCopyWith(_$GetProfileLoadingImpl<T> value,
          $Res Function(_$GetProfileLoadingImpl<T>) then) =
      __$$GetProfileLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetProfileLoadingImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$GetProfileLoadingImpl<T>>
    implements _$$GetProfileLoadingImplCopyWith<T, $Res> {
  __$$GetProfileLoadingImplCopyWithImpl(_$GetProfileLoadingImpl<T> _value,
      $Res Function(_$GetProfileLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetProfileLoadingImpl<T> implements GetProfileLoading<T> {
  const _$GetProfileLoadingImpl();

  @override
  String toString() {
    return 'ProfileState<$T>.getProfileLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProfileLoading,
    required TResult Function(ProfileResponseModel data) getProfileSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getProfilefailure,
  }) {
    return getProfileLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProfileLoading,
    TResult? Function(ProfileResponseModel data)? getProfileSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getProfilefailure,
  }) {
    return getProfileLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProfileLoading,
    TResult Function(ProfileResponseModel data)? getProfileSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getProfilefailure,
    required TResult orElse(),
  }) {
    if (getProfileLoading != null) {
      return getProfileLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetProfileLoading<T> value) getProfileLoading,
    required TResult Function(GetProfileSuccess<T> value) getProfileSuccess,
    required TResult Function(GetProfileError<T> value) getProfilefailure,
  }) {
    return getProfileLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetProfileLoading<T> value)? getProfileLoading,
    TResult? Function(GetProfileSuccess<T> value)? getProfileSuccess,
    TResult? Function(GetProfileError<T> value)? getProfilefailure,
  }) {
    return getProfileLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetProfileLoading<T> value)? getProfileLoading,
    TResult Function(GetProfileSuccess<T> value)? getProfileSuccess,
    TResult Function(GetProfileError<T> value)? getProfilefailure,
    required TResult orElse(),
  }) {
    if (getProfileLoading != null) {
      return getProfileLoading(this);
    }
    return orElse();
  }
}

abstract class GetProfileLoading<T> implements ProfileState<T> {
  const factory GetProfileLoading() = _$GetProfileLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetProfileSuccessImplCopyWith<T, $Res> {
  factory _$$GetProfileSuccessImplCopyWith(_$GetProfileSuccessImpl<T> value,
          $Res Function(_$GetProfileSuccessImpl<T>) then) =
      __$$GetProfileSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ProfileResponseModel data});
}

/// @nodoc
class __$$GetProfileSuccessImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$GetProfileSuccessImpl<T>>
    implements _$$GetProfileSuccessImplCopyWith<T, $Res> {
  __$$GetProfileSuccessImplCopyWithImpl(_$GetProfileSuccessImpl<T> _value,
      $Res Function(_$GetProfileSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetProfileSuccessImpl<T>(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileResponseModel,
    ));
  }
}

/// @nodoc

class _$GetProfileSuccessImpl<T> implements GetProfileSuccess<T> {
  const _$GetProfileSuccessImpl(this.data);

  @override
  final ProfileResponseModel data;

  @override
  String toString() {
    return 'ProfileState<$T>.getProfileSuccess(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileSuccessImpl<T> &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileSuccessImplCopyWith<T, _$GetProfileSuccessImpl<T>>
      get copyWith =>
          __$$GetProfileSuccessImplCopyWithImpl<T, _$GetProfileSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProfileLoading,
    required TResult Function(ProfileResponseModel data) getProfileSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getProfilefailure,
  }) {
    return getProfileSuccess(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProfileLoading,
    TResult? Function(ProfileResponseModel data)? getProfileSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getProfilefailure,
  }) {
    return getProfileSuccess?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProfileLoading,
    TResult Function(ProfileResponseModel data)? getProfileSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getProfilefailure,
    required TResult orElse(),
  }) {
    if (getProfileSuccess != null) {
      return getProfileSuccess(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetProfileLoading<T> value) getProfileLoading,
    required TResult Function(GetProfileSuccess<T> value) getProfileSuccess,
    required TResult Function(GetProfileError<T> value) getProfilefailure,
  }) {
    return getProfileSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetProfileLoading<T> value)? getProfileLoading,
    TResult? Function(GetProfileSuccess<T> value)? getProfileSuccess,
    TResult? Function(GetProfileError<T> value)? getProfilefailure,
  }) {
    return getProfileSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetProfileLoading<T> value)? getProfileLoading,
    TResult Function(GetProfileSuccess<T> value)? getProfileSuccess,
    TResult Function(GetProfileError<T> value)? getProfilefailure,
    required TResult orElse(),
  }) {
    if (getProfileSuccess != null) {
      return getProfileSuccess(this);
    }
    return orElse();
  }
}

abstract class GetProfileSuccess<T> implements ProfileState<T> {
  const factory GetProfileSuccess(final ProfileResponseModel data) =
      _$GetProfileSuccessImpl<T>;

  ProfileResponseModel get data;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileSuccessImplCopyWith<T, _$GetProfileSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetProfileErrorImplCopyWith<T, $Res> {
  factory _$$GetProfileErrorImplCopyWith(_$GetProfileErrorImpl<T> value,
          $Res Function(_$GetProfileErrorImpl<T>) then) =
      __$$GetProfileErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$GetProfileErrorImplCopyWithImpl<T, $Res>
    extends _$ProfileStateCopyWithImpl<T, $Res, _$GetProfileErrorImpl<T>>
    implements _$$GetProfileErrorImplCopyWith<T, $Res> {
  __$$GetProfileErrorImplCopyWithImpl(_$GetProfileErrorImpl<T> _value,
      $Res Function(_$GetProfileErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$GetProfileErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$GetProfileErrorImpl<T> implements GetProfileError<T> {
  const _$GetProfileErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'ProfileState<$T>.getProfilefailure(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProfileErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProfileErrorImplCopyWith<T, _$GetProfileErrorImpl<T>> get copyWith =>
      __$$GetProfileErrorImplCopyWithImpl<T, _$GetProfileErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getProfileLoading,
    required TResult Function(ProfileResponseModel data) getProfileSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) getProfilefailure,
  }) {
    return getProfilefailure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getProfileLoading,
    TResult? Function(ProfileResponseModel data)? getProfileSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? getProfilefailure,
  }) {
    return getProfilefailure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getProfileLoading,
    TResult Function(ProfileResponseModel data)? getProfileSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? getProfilefailure,
    required TResult orElse(),
  }) {
    if (getProfilefailure != null) {
      return getProfilefailure(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(GetProfileLoading<T> value) getProfileLoading,
    required TResult Function(GetProfileSuccess<T> value) getProfileSuccess,
    required TResult Function(GetProfileError<T> value) getProfilefailure,
  }) {
    return getProfilefailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(GetProfileLoading<T> value)? getProfileLoading,
    TResult? Function(GetProfileSuccess<T> value)? getProfileSuccess,
    TResult? Function(GetProfileError<T> value)? getProfilefailure,
  }) {
    return getProfilefailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(GetProfileLoading<T> value)? getProfileLoading,
    TResult Function(GetProfileSuccess<T> value)? getProfileSuccess,
    TResult Function(GetProfileError<T> value)? getProfilefailure,
    required TResult orElse(),
  }) {
    if (getProfilefailure != null) {
      return getProfilefailure(this);
    }
    return orElse();
  }
}

abstract class GetProfileError<T> implements ProfileState<T> {
  const factory GetProfileError(final ApiErrorModel apiErrorModel) =
      _$GetProfileErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetProfileErrorImplCopyWith<T, _$GetProfileErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
