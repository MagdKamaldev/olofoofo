// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userProfileLoading,
    required TResult Function(UserProfileResponseModel userProfileResponseModel)
        userProfileLoaded,
    required TResult Function(ApiErrorModel apiErrorModel) userProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userProfileLoading,
    TResult? Function(UserProfileResponseModel userProfileResponseModel)?
        userProfileLoaded,
    TResult? Function(ApiErrorModel apiErrorModel)? userProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userProfileLoading,
    TResult Function(UserProfileResponseModel userProfileResponseModel)?
        userProfileLoaded,
    TResult Function(ApiErrorModel apiErrorModel)? userProfileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserProfileLoading value) userProfileLoading,
    required TResult Function(UserProfileLoaded value) userProfileLoaded,
    required TResult Function(UserProfileError value) userProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserProfileLoading value)? userProfileLoading,
    TResult? Function(UserProfileLoaded value)? userProfileLoaded,
    TResult? Function(UserProfileError value)? userProfileError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserProfileLoading value)? userProfileLoading,
    TResult Function(UserProfileLoaded value)? userProfileLoaded,
    TResult Function(UserProfileError value)? userProfileError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileStateCopyWith<$Res> {
  factory $UserProfileStateCopyWith(
          UserProfileState value, $Res Function(UserProfileState) then) =
      _$UserProfileStateCopyWithImpl<$Res, UserProfileState>;
}

/// @nodoc
class _$UserProfileStateCopyWithImpl<$Res, $Val extends UserProfileState>
    implements $UserProfileStateCopyWith<$Res> {
  _$UserProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserProfileState
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
    extends _$UserProfileStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements _Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'UserProfileState.initial'));
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
    required TResult Function() userProfileLoading,
    required TResult Function(UserProfileResponseModel userProfileResponseModel)
        userProfileLoaded,
    required TResult Function(ApiErrorModel apiErrorModel) userProfileError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userProfileLoading,
    TResult? Function(UserProfileResponseModel userProfileResponseModel)?
        userProfileLoaded,
    TResult? Function(ApiErrorModel apiErrorModel)? userProfileError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userProfileLoading,
    TResult Function(UserProfileResponseModel userProfileResponseModel)?
        userProfileLoaded,
    TResult Function(ApiErrorModel apiErrorModel)? userProfileError,
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
    required TResult Function(UserProfileLoading value) userProfileLoading,
    required TResult Function(UserProfileLoaded value) userProfileLoaded,
    required TResult Function(UserProfileError value) userProfileError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserProfileLoading value)? userProfileLoading,
    TResult? Function(UserProfileLoaded value)? userProfileLoaded,
    TResult? Function(UserProfileError value)? userProfileError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserProfileLoading value)? userProfileLoading,
    TResult Function(UserProfileLoaded value)? userProfileLoaded,
    TResult Function(UserProfileError value)? userProfileError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserProfileState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$UserProfileLoadingImplCopyWith<$Res> {
  factory _$$UserProfileLoadingImplCopyWith(_$UserProfileLoadingImpl value,
          $Res Function(_$UserProfileLoadingImpl) then) =
      __$$UserProfileLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserProfileLoadingImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileLoadingImpl>
    implements _$$UserProfileLoadingImplCopyWith<$Res> {
  __$$UserProfileLoadingImplCopyWithImpl(_$UserProfileLoadingImpl _value,
      $Res Function(_$UserProfileLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserProfileLoadingImpl
    with DiagnosticableTreeMixin
    implements UserProfileLoading {
  const _$UserProfileLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileState.userProfileLoading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'UserProfileState.userProfileLoading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserProfileLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userProfileLoading,
    required TResult Function(UserProfileResponseModel userProfileResponseModel)
        userProfileLoaded,
    required TResult Function(ApiErrorModel apiErrorModel) userProfileError,
  }) {
    return userProfileLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userProfileLoading,
    TResult? Function(UserProfileResponseModel userProfileResponseModel)?
        userProfileLoaded,
    TResult? Function(ApiErrorModel apiErrorModel)? userProfileError,
  }) {
    return userProfileLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userProfileLoading,
    TResult Function(UserProfileResponseModel userProfileResponseModel)?
        userProfileLoaded,
    TResult Function(ApiErrorModel apiErrorModel)? userProfileError,
    required TResult orElse(),
  }) {
    if (userProfileLoading != null) {
      return userProfileLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserProfileLoading value) userProfileLoading,
    required TResult Function(UserProfileLoaded value) userProfileLoaded,
    required TResult Function(UserProfileError value) userProfileError,
  }) {
    return userProfileLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserProfileLoading value)? userProfileLoading,
    TResult? Function(UserProfileLoaded value)? userProfileLoaded,
    TResult? Function(UserProfileError value)? userProfileError,
  }) {
    return userProfileLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserProfileLoading value)? userProfileLoading,
    TResult Function(UserProfileLoaded value)? userProfileLoaded,
    TResult Function(UserProfileError value)? userProfileError,
    required TResult orElse(),
  }) {
    if (userProfileLoading != null) {
      return userProfileLoading(this);
    }
    return orElse();
  }
}

abstract class UserProfileLoading implements UserProfileState {
  const factory UserProfileLoading() = _$UserProfileLoadingImpl;
}

/// @nodoc
abstract class _$$UserProfileLoadedImplCopyWith<$Res> {
  factory _$$UserProfileLoadedImplCopyWith(_$UserProfileLoadedImpl value,
          $Res Function(_$UserProfileLoadedImpl) then) =
      __$$UserProfileLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserProfileResponseModel userProfileResponseModel});
}

/// @nodoc
class __$$UserProfileLoadedImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileLoadedImpl>
    implements _$$UserProfileLoadedImplCopyWith<$Res> {
  __$$UserProfileLoadedImplCopyWithImpl(_$UserProfileLoadedImpl _value,
      $Res Function(_$UserProfileLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfileResponseModel = null,
  }) {
    return _then(_$UserProfileLoadedImpl(
      null == userProfileResponseModel
          ? _value.userProfileResponseModel
          : userProfileResponseModel // ignore: cast_nullable_to_non_nullable
              as UserProfileResponseModel,
    ));
  }
}

/// @nodoc

class _$UserProfileLoadedImpl
    with DiagnosticableTreeMixin
    implements UserProfileLoaded {
  const _$UserProfileLoadedImpl(this.userProfileResponseModel);

  @override
  final UserProfileResponseModel userProfileResponseModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileState.userProfileLoaded(userProfileResponseModel: $userProfileResponseModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileState.userProfileLoaded'))
      ..add(DiagnosticsProperty(
          'userProfileResponseModel', userProfileResponseModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileLoadedImpl &&
            (identical(
                    other.userProfileResponseModel, userProfileResponseModel) ||
                other.userProfileResponseModel == userProfileResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfileResponseModel);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileLoadedImplCopyWith<_$UserProfileLoadedImpl> get copyWith =>
      __$$UserProfileLoadedImplCopyWithImpl<_$UserProfileLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userProfileLoading,
    required TResult Function(UserProfileResponseModel userProfileResponseModel)
        userProfileLoaded,
    required TResult Function(ApiErrorModel apiErrorModel) userProfileError,
  }) {
    return userProfileLoaded(userProfileResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userProfileLoading,
    TResult? Function(UserProfileResponseModel userProfileResponseModel)?
        userProfileLoaded,
    TResult? Function(ApiErrorModel apiErrorModel)? userProfileError,
  }) {
    return userProfileLoaded?.call(userProfileResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userProfileLoading,
    TResult Function(UserProfileResponseModel userProfileResponseModel)?
        userProfileLoaded,
    TResult Function(ApiErrorModel apiErrorModel)? userProfileError,
    required TResult orElse(),
  }) {
    if (userProfileLoaded != null) {
      return userProfileLoaded(userProfileResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserProfileLoading value) userProfileLoading,
    required TResult Function(UserProfileLoaded value) userProfileLoaded,
    required TResult Function(UserProfileError value) userProfileError,
  }) {
    return userProfileLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserProfileLoading value)? userProfileLoading,
    TResult? Function(UserProfileLoaded value)? userProfileLoaded,
    TResult? Function(UserProfileError value)? userProfileError,
  }) {
    return userProfileLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserProfileLoading value)? userProfileLoading,
    TResult Function(UserProfileLoaded value)? userProfileLoaded,
    TResult Function(UserProfileError value)? userProfileError,
    required TResult orElse(),
  }) {
    if (userProfileLoaded != null) {
      return userProfileLoaded(this);
    }
    return orElse();
  }
}

abstract class UserProfileLoaded implements UserProfileState {
  const factory UserProfileLoaded(
          final UserProfileResponseModel userProfileResponseModel) =
      _$UserProfileLoadedImpl;

  UserProfileResponseModel get userProfileResponseModel;

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileLoadedImplCopyWith<_$UserProfileLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserProfileErrorImplCopyWith<$Res> {
  factory _$$UserProfileErrorImplCopyWith(_$UserProfileErrorImpl value,
          $Res Function(_$UserProfileErrorImpl) then) =
      __$$UserProfileErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$UserProfileErrorImplCopyWithImpl<$Res>
    extends _$UserProfileStateCopyWithImpl<$Res, _$UserProfileErrorImpl>
    implements _$$UserProfileErrorImplCopyWith<$Res> {
  __$$UserProfileErrorImplCopyWithImpl(_$UserProfileErrorImpl _value,
      $Res Function(_$UserProfileErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$UserProfileErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$UserProfileErrorImpl
    with DiagnosticableTreeMixin
    implements UserProfileError {
  const _$UserProfileErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserProfileState.userProfileError(apiErrorModel: $apiErrorModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserProfileState.userProfileError'))
      ..add(DiagnosticsProperty('apiErrorModel', apiErrorModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserProfileErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserProfileErrorImplCopyWith<_$UserProfileErrorImpl> get copyWith =>
      __$$UserProfileErrorImplCopyWithImpl<_$UserProfileErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() userProfileLoading,
    required TResult Function(UserProfileResponseModel userProfileResponseModel)
        userProfileLoaded,
    required TResult Function(ApiErrorModel apiErrorModel) userProfileError,
  }) {
    return userProfileError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? userProfileLoading,
    TResult? Function(UserProfileResponseModel userProfileResponseModel)?
        userProfileLoaded,
    TResult? Function(ApiErrorModel apiErrorModel)? userProfileError,
  }) {
    return userProfileError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? userProfileLoading,
    TResult Function(UserProfileResponseModel userProfileResponseModel)?
        userProfileLoaded,
    TResult Function(ApiErrorModel apiErrorModel)? userProfileError,
    required TResult orElse(),
  }) {
    if (userProfileError != null) {
      return userProfileError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(UserProfileLoading value) userProfileLoading,
    required TResult Function(UserProfileLoaded value) userProfileLoaded,
    required TResult Function(UserProfileError value) userProfileError,
  }) {
    return userProfileError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(UserProfileLoading value)? userProfileLoading,
    TResult? Function(UserProfileLoaded value)? userProfileLoaded,
    TResult? Function(UserProfileError value)? userProfileError,
  }) {
    return userProfileError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(UserProfileLoading value)? userProfileLoading,
    TResult Function(UserProfileLoaded value)? userProfileLoaded,
    TResult Function(UserProfileError value)? userProfileError,
    required TResult orElse(),
  }) {
    if (userProfileError != null) {
      return userProfileError(this);
    }
    return orElse();
  }
}

abstract class UserProfileError implements UserProfileState {
  const factory UserProfileError(final ApiErrorModel apiErrorModel) =
      _$UserProfileErrorImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of UserProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserProfileErrorImplCopyWith<_$UserProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
