// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() postsLoading,
    required TResult Function(List<Post> posts) postsLoaded,
    required TResult Function(ErrorHandler errorHandler) postsError,
    required TResult Function(int index) changeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? postsLoading,
    TResult? Function(List<Post> posts)? postsLoaded,
    TResult? Function(ErrorHandler errorHandler)? postsError,
    TResult? Function(int index)? changeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? postsLoading,
    TResult Function(List<Post> posts)? postsLoaded,
    TResult Function(ErrorHandler errorHandler)? postsError,
    TResult Function(int index)? changeScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PostsLoading value) postsLoading,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(PostsError value) postsError,
    required TResult Function(ChangeScreen value) changeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostsLoading value)? postsLoading,
    TResult? Function(PostsLoaded value)? postsLoaded,
    TResult? Function(PostsError value)? postsError,
    TResult? Function(ChangeScreen value)? changeScreen,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostsLoading value)? postsLoading,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(PostsError value)? postsError,
    TResult Function(ChangeScreen value)? changeScreen,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
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
    extends _$HomeStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
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
    required TResult Function() postsLoading,
    required TResult Function(List<Post> posts) postsLoaded,
    required TResult Function(ErrorHandler errorHandler) postsError,
    required TResult Function(int index) changeScreen,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? postsLoading,
    TResult? Function(List<Post> posts)? postsLoaded,
    TResult? Function(ErrorHandler errorHandler)? postsError,
    TResult? Function(int index)? changeScreen,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? postsLoading,
    TResult Function(List<Post> posts)? postsLoaded,
    TResult Function(ErrorHandler errorHandler)? postsError,
    TResult Function(int index)? changeScreen,
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
    required TResult Function(PostsLoading value) postsLoading,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(PostsError value) postsError,
    required TResult Function(ChangeScreen value) changeScreen,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostsLoading value)? postsLoading,
    TResult? Function(PostsLoaded value)? postsLoaded,
    TResult? Function(PostsError value)? postsError,
    TResult? Function(ChangeScreen value)? changeScreen,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostsLoading value)? postsLoading,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(PostsError value)? postsError,
    TResult Function(ChangeScreen value)? changeScreen,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HomeState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$PostsLoadingImplCopyWith<$Res> {
  factory _$$PostsLoadingImplCopyWith(
          _$PostsLoadingImpl value, $Res Function(_$PostsLoadingImpl) then) =
      __$$PostsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostsLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$PostsLoadingImpl>
    implements _$$PostsLoadingImplCopyWith<$Res> {
  __$$PostsLoadingImplCopyWithImpl(
      _$PostsLoadingImpl _value, $Res Function(_$PostsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PostsLoadingImpl implements PostsLoading {
  const _$PostsLoadingImpl();

  @override
  String toString() {
    return 'HomeState.postsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() postsLoading,
    required TResult Function(List<Post> posts) postsLoaded,
    required TResult Function(ErrorHandler errorHandler) postsError,
    required TResult Function(int index) changeScreen,
  }) {
    return postsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? postsLoading,
    TResult? Function(List<Post> posts)? postsLoaded,
    TResult? Function(ErrorHandler errorHandler)? postsError,
    TResult? Function(int index)? changeScreen,
  }) {
    return postsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? postsLoading,
    TResult Function(List<Post> posts)? postsLoaded,
    TResult Function(ErrorHandler errorHandler)? postsError,
    TResult Function(int index)? changeScreen,
    required TResult orElse(),
  }) {
    if (postsLoading != null) {
      return postsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PostsLoading value) postsLoading,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(PostsError value) postsError,
    required TResult Function(ChangeScreen value) changeScreen,
  }) {
    return postsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostsLoading value)? postsLoading,
    TResult? Function(PostsLoaded value)? postsLoaded,
    TResult? Function(PostsError value)? postsError,
    TResult? Function(ChangeScreen value)? changeScreen,
  }) {
    return postsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostsLoading value)? postsLoading,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(PostsError value)? postsError,
    TResult Function(ChangeScreen value)? changeScreen,
    required TResult orElse(),
  }) {
    if (postsLoading != null) {
      return postsLoading(this);
    }
    return orElse();
  }
}

abstract class PostsLoading implements HomeState {
  const factory PostsLoading() = _$PostsLoadingImpl;
}

/// @nodoc
abstract class _$$PostsLoadedImplCopyWith<$Res> {
  factory _$$PostsLoadedImplCopyWith(
          _$PostsLoadedImpl value, $Res Function(_$PostsLoadedImpl) then) =
      __$$PostsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Post> posts});
}

/// @nodoc
class __$$PostsLoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$PostsLoadedImpl>
    implements _$$PostsLoadedImplCopyWith<$Res> {
  __$$PostsLoadedImplCopyWithImpl(
      _$PostsLoadedImpl _value, $Res Function(_$PostsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$PostsLoadedImpl(
      null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$PostsLoadedImpl implements PostsLoaded {
  const _$PostsLoadedImpl(final List<Post> posts) : _posts = posts;

  final List<Post> _posts;
  @override
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString() {
    return 'HomeState.postsLoaded(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsLoadedImpl &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsLoadedImplCopyWith<_$PostsLoadedImpl> get copyWith =>
      __$$PostsLoadedImplCopyWithImpl<_$PostsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() postsLoading,
    required TResult Function(List<Post> posts) postsLoaded,
    required TResult Function(ErrorHandler errorHandler) postsError,
    required TResult Function(int index) changeScreen,
  }) {
    return postsLoaded(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? postsLoading,
    TResult? Function(List<Post> posts)? postsLoaded,
    TResult? Function(ErrorHandler errorHandler)? postsError,
    TResult? Function(int index)? changeScreen,
  }) {
    return postsLoaded?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? postsLoading,
    TResult Function(List<Post> posts)? postsLoaded,
    TResult Function(ErrorHandler errorHandler)? postsError,
    TResult Function(int index)? changeScreen,
    required TResult orElse(),
  }) {
    if (postsLoaded != null) {
      return postsLoaded(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PostsLoading value) postsLoading,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(PostsError value) postsError,
    required TResult Function(ChangeScreen value) changeScreen,
  }) {
    return postsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostsLoading value)? postsLoading,
    TResult? Function(PostsLoaded value)? postsLoaded,
    TResult? Function(PostsError value)? postsError,
    TResult? Function(ChangeScreen value)? changeScreen,
  }) {
    return postsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostsLoading value)? postsLoading,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(PostsError value)? postsError,
    TResult Function(ChangeScreen value)? changeScreen,
    required TResult orElse(),
  }) {
    if (postsLoaded != null) {
      return postsLoaded(this);
    }
    return orElse();
  }
}

abstract class PostsLoaded implements HomeState {
  const factory PostsLoaded(final List<Post> posts) = _$PostsLoadedImpl;

  List<Post> get posts;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostsLoadedImplCopyWith<_$PostsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostsErrorImplCopyWith<$Res> {
  factory _$$PostsErrorImplCopyWith(
          _$PostsErrorImpl value, $Res Function(_$PostsErrorImpl) then) =
      __$$PostsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ErrorHandler errorHandler});
}

/// @nodoc
class __$$PostsErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$PostsErrorImpl>
    implements _$$PostsErrorImplCopyWith<$Res> {
  __$$PostsErrorImplCopyWithImpl(
      _$PostsErrorImpl _value, $Res Function(_$PostsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorHandler = null,
  }) {
    return _then(_$PostsErrorImpl(
      null == errorHandler
          ? _value.errorHandler
          : errorHandler // ignore: cast_nullable_to_non_nullable
              as ErrorHandler,
    ));
  }
}

/// @nodoc

class _$PostsErrorImpl implements PostsError {
  const _$PostsErrorImpl(this.errorHandler);

  @override
  final ErrorHandler errorHandler;

  @override
  String toString() {
    return 'HomeState.postsError(errorHandler: $errorHandler)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsErrorImpl &&
            (identical(other.errorHandler, errorHandler) ||
                other.errorHandler == errorHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorHandler);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsErrorImplCopyWith<_$PostsErrorImpl> get copyWith =>
      __$$PostsErrorImplCopyWithImpl<_$PostsErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() postsLoading,
    required TResult Function(List<Post> posts) postsLoaded,
    required TResult Function(ErrorHandler errorHandler) postsError,
    required TResult Function(int index) changeScreen,
  }) {
    return postsError(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? postsLoading,
    TResult? Function(List<Post> posts)? postsLoaded,
    TResult? Function(ErrorHandler errorHandler)? postsError,
    TResult? Function(int index)? changeScreen,
  }) {
    return postsError?.call(errorHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? postsLoading,
    TResult Function(List<Post> posts)? postsLoaded,
    TResult Function(ErrorHandler errorHandler)? postsError,
    TResult Function(int index)? changeScreen,
    required TResult orElse(),
  }) {
    if (postsError != null) {
      return postsError(errorHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PostsLoading value) postsLoading,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(PostsError value) postsError,
    required TResult Function(ChangeScreen value) changeScreen,
  }) {
    return postsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostsLoading value)? postsLoading,
    TResult? Function(PostsLoaded value)? postsLoaded,
    TResult? Function(PostsError value)? postsError,
    TResult? Function(ChangeScreen value)? changeScreen,
  }) {
    return postsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostsLoading value)? postsLoading,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(PostsError value)? postsError,
    TResult Function(ChangeScreen value)? changeScreen,
    required TResult orElse(),
  }) {
    if (postsError != null) {
      return postsError(this);
    }
    return orElse();
  }
}

abstract class PostsError implements HomeState {
  const factory PostsError(final ErrorHandler errorHandler) = _$PostsErrorImpl;

  ErrorHandler get errorHandler;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostsErrorImplCopyWith<_$PostsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeScreenImplCopyWith<$Res> {
  factory _$$ChangeScreenImplCopyWith(
          _$ChangeScreenImpl value, $Res Function(_$ChangeScreenImpl) then) =
      __$$ChangeScreenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeScreenImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ChangeScreenImpl>
    implements _$$ChangeScreenImplCopyWith<$Res> {
  __$$ChangeScreenImplCopyWithImpl(
      _$ChangeScreenImpl _value, $Res Function(_$ChangeScreenImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeScreenImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeScreenImpl implements ChangeScreen {
  const _$ChangeScreenImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeState.changeScreen(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeScreenImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeScreenImplCopyWith<_$ChangeScreenImpl> get copyWith =>
      __$$ChangeScreenImplCopyWithImpl<_$ChangeScreenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() postsLoading,
    required TResult Function(List<Post> posts) postsLoaded,
    required TResult Function(ErrorHandler errorHandler) postsError,
    required TResult Function(int index) changeScreen,
  }) {
    return changeScreen(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? postsLoading,
    TResult? Function(List<Post> posts)? postsLoaded,
    TResult? Function(ErrorHandler errorHandler)? postsError,
    TResult? Function(int index)? changeScreen,
  }) {
    return changeScreen?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? postsLoading,
    TResult Function(List<Post> posts)? postsLoaded,
    TResult Function(ErrorHandler errorHandler)? postsError,
    TResult Function(int index)? changeScreen,
    required TResult orElse(),
  }) {
    if (changeScreen != null) {
      return changeScreen(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(PostsLoading value) postsLoading,
    required TResult Function(PostsLoaded value) postsLoaded,
    required TResult Function(PostsError value) postsError,
    required TResult Function(ChangeScreen value) changeScreen,
  }) {
    return changeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(PostsLoading value)? postsLoading,
    TResult? Function(PostsLoaded value)? postsLoaded,
    TResult? Function(PostsError value)? postsError,
    TResult? Function(ChangeScreen value)? changeScreen,
  }) {
    return changeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(PostsLoading value)? postsLoading,
    TResult Function(PostsLoaded value)? postsLoaded,
    TResult Function(PostsError value)? postsError,
    TResult Function(ChangeScreen value)? changeScreen,
    required TResult orElse(),
  }) {
    if (changeScreen != null) {
      return changeScreen(this);
    }
    return orElse();
  }
}

abstract class ChangeScreen implements HomeState {
  const factory ChangeScreen(final int index) = _$ChangeScreenImpl;

  int get index;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeScreenImplCopyWith<_$ChangeScreenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
