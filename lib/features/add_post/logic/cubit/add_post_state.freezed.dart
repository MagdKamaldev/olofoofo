// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddPostState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreatePostResponse createPostResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
    required TResult Function(List<File> images) imageSelected,
    required TResult Function(List<File> images) removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreatePostResponse createPostResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
    TResult? Function(List<File> images)? imageSelected,
    TResult? Function(List<File> images)? removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreatePostResponse createPostResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    TResult Function(List<File> images)? imageSelected,
    TResult Function(List<File> images)? removeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) failure,
    required TResult Function(ImageSelected<T> value) imageSelected,
    required TResult Function(RemoveImage<T> value) removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? failure,
    TResult? Function(ImageSelected<T> value)? imageSelected,
    TResult? Function(RemoveImage<T> value)? removeImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? failure,
    TResult Function(ImageSelected<T> value)? imageSelected,
    TResult Function(RemoveImage<T> value)? removeImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPostStateCopyWith<T, $Res> {
  factory $AddPostStateCopyWith(
          AddPostState<T> value, $Res Function(AddPostState<T>) then) =
      _$AddPostStateCopyWithImpl<T, $Res, AddPostState<T>>;
}

/// @nodoc
class _$AddPostStateCopyWithImpl<T, $Res, $Val extends AddPostState<T>>
    implements $AddPostStateCopyWith<T, $Res> {
  _$AddPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddPostState
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
    extends _$AddPostStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddPostState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AddPostState<$T>.initial()';
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
    required TResult Function(CreatePostResponse createPostResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
    required TResult Function(List<File> images) imageSelected,
    required TResult Function(List<File> images) removeImage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreatePostResponse createPostResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
    TResult? Function(List<File> images)? imageSelected,
    TResult? Function(List<File> images)? removeImage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreatePostResponse createPostResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    TResult Function(List<File> images)? imageSelected,
    TResult Function(List<File> images)? removeImage,
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
    required TResult Function(Error<T> value) failure,
    required TResult Function(ImageSelected<T> value) imageSelected,
    required TResult Function(RemoveImage<T> value) removeImage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? failure,
    TResult? Function(ImageSelected<T> value)? imageSelected,
    TResult? Function(RemoveImage<T> value)? removeImage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? failure,
    TResult Function(ImageSelected<T> value)? imageSelected,
    TResult Function(RemoveImage<T> value)? removeImage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements AddPostState<T> {
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
    extends _$AddPostStateCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddPostState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AddPostState<$T>.loading()';
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
    required TResult Function(CreatePostResponse createPostResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
    required TResult Function(List<File> images) imageSelected,
    required TResult Function(List<File> images) removeImage,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreatePostResponse createPostResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
    TResult? Function(List<File> images)? imageSelected,
    TResult? Function(List<File> images)? removeImage,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreatePostResponse createPostResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    TResult Function(List<File> images)? imageSelected,
    TResult Function(List<File> images)? removeImage,
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
    required TResult Function(Error<T> value) failure,
    required TResult Function(ImageSelected<T> value) imageSelected,
    required TResult Function(RemoveImage<T> value) removeImage,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? failure,
    TResult? Function(ImageSelected<T> value)? imageSelected,
    TResult? Function(RemoveImage<T> value)? removeImage,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? failure,
    TResult Function(ImageSelected<T> value)? imageSelected,
    TResult Function(RemoveImage<T> value)? removeImage,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements AddPostState<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<T, $Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl<T> value, $Res Function(_$SuccessImpl<T>) then) =
      __$$SuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({CreatePostResponse createPostResponse});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<T, $Res>
    extends _$AddPostStateCopyWithImpl<T, $Res, _$SuccessImpl<T>>
    implements _$$SuccessImplCopyWith<T, $Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl<T> _value, $Res Function(_$SuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createPostResponse = null,
  }) {
    return _then(_$SuccessImpl<T>(
      null == createPostResponse
          ? _value.createPostResponse
          : createPostResponse // ignore: cast_nullable_to_non_nullable
              as CreatePostResponse,
    ));
  }
}

/// @nodoc

class _$SuccessImpl<T> implements Success<T> {
  const _$SuccessImpl(this.createPostResponse);

  @override
  final CreatePostResponse createPostResponse;

  @override
  String toString() {
    return 'AddPostState<$T>.success(createPostResponse: $createPostResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl<T> &&
            (identical(other.createPostResponse, createPostResponse) ||
                other.createPostResponse == createPostResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, createPostResponse);

  /// Create a copy of AddPostState
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
    required TResult Function(CreatePostResponse createPostResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
    required TResult Function(List<File> images) imageSelected,
    required TResult Function(List<File> images) removeImage,
  }) {
    return success(createPostResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreatePostResponse createPostResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
    TResult? Function(List<File> images)? imageSelected,
    TResult? Function(List<File> images)? removeImage,
  }) {
    return success?.call(createPostResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreatePostResponse createPostResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    TResult Function(List<File> images)? imageSelected,
    TResult Function(List<File> images)? removeImage,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(createPostResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) failure,
    required TResult Function(ImageSelected<T> value) imageSelected,
    required TResult Function(RemoveImage<T> value) removeImage,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? failure,
    TResult? Function(ImageSelected<T> value)? imageSelected,
    TResult? Function(RemoveImage<T> value)? removeImage,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? failure,
    TResult Function(ImageSelected<T> value)? imageSelected,
    TResult Function(RemoveImage<T> value)? removeImage,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements AddPostState<T> {
  const factory Success(final CreatePostResponse createPostResponse) =
      _$SuccessImpl<T>;

  CreatePostResponse get createPostResponse;

  /// Create a copy of AddPostState
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
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<T, $Res>
    extends _$AddPostStateCopyWithImpl<T, $Res, _$ErrorImpl<T>>
    implements _$$ErrorImplCopyWith<T, $Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl<T> _value, $Res Function(_$ErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$ErrorImpl<T>(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$ErrorImpl<T> implements Error<T> {
  const _$ErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'AddPostState<$T>.failure(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl<T> &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of AddPostState
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
    required TResult Function(CreatePostResponse createPostResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
    required TResult Function(List<File> images) imageSelected,
    required TResult Function(List<File> images) removeImage,
  }) {
    return failure(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreatePostResponse createPostResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
    TResult? Function(List<File> images)? imageSelected,
    TResult? Function(List<File> images)? removeImage,
  }) {
    return failure?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreatePostResponse createPostResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    TResult Function(List<File> images)? imageSelected,
    TResult Function(List<File> images)? removeImage,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) failure,
    required TResult Function(ImageSelected<T> value) imageSelected,
    required TResult Function(RemoveImage<T> value) removeImage,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? failure,
    TResult? Function(ImageSelected<T> value)? imageSelected,
    TResult? Function(RemoveImage<T> value)? removeImage,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? failure,
    TResult Function(ImageSelected<T> value)? imageSelected,
    TResult Function(RemoveImage<T> value)? removeImage,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements AddPostState<T> {
  const factory Error(final ApiErrorModel apiErrorModel) = _$ErrorImpl<T>;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of AddPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<T, _$ErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageSelectedImplCopyWith<T, $Res> {
  factory _$$ImageSelectedImplCopyWith(_$ImageSelectedImpl<T> value,
          $Res Function(_$ImageSelectedImpl<T>) then) =
      __$$ImageSelectedImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<File> images});
}

/// @nodoc
class __$$ImageSelectedImplCopyWithImpl<T, $Res>
    extends _$AddPostStateCopyWithImpl<T, $Res, _$ImageSelectedImpl<T>>
    implements _$$ImageSelectedImplCopyWith<T, $Res> {
  __$$ImageSelectedImplCopyWithImpl(_$ImageSelectedImpl<T> _value,
      $Res Function(_$ImageSelectedImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$ImageSelectedImpl<T>(
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$ImageSelectedImpl<T> implements ImageSelected<T> {
  const _$ImageSelectedImpl(final List<File> images) : _images = images;

  final List<File> _images;
  @override
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'AddPostState<$T>.imageSelected(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageSelectedImpl<T> &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  /// Create a copy of AddPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageSelectedImplCopyWith<T, _$ImageSelectedImpl<T>> get copyWith =>
      __$$ImageSelectedImplCopyWithImpl<T, _$ImageSelectedImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreatePostResponse createPostResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
    required TResult Function(List<File> images) imageSelected,
    required TResult Function(List<File> images) removeImage,
  }) {
    return imageSelected(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreatePostResponse createPostResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
    TResult? Function(List<File> images)? imageSelected,
    TResult? Function(List<File> images)? removeImage,
  }) {
    return imageSelected?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreatePostResponse createPostResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    TResult Function(List<File> images)? imageSelected,
    TResult Function(List<File> images)? removeImage,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) failure,
    required TResult Function(ImageSelected<T> value) imageSelected,
    required TResult Function(RemoveImage<T> value) removeImage,
  }) {
    return imageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? failure,
    TResult? Function(ImageSelected<T> value)? imageSelected,
    TResult? Function(RemoveImage<T> value)? removeImage,
  }) {
    return imageSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? failure,
    TResult Function(ImageSelected<T> value)? imageSelected,
    TResult Function(RemoveImage<T> value)? removeImage,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(this);
    }
    return orElse();
  }
}

abstract class ImageSelected<T> implements AddPostState<T> {
  const factory ImageSelected(final List<File> images) = _$ImageSelectedImpl<T>;

  List<File> get images;

  /// Create a copy of AddPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageSelectedImplCopyWith<T, _$ImageSelectedImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveImageImplCopyWith<T, $Res> {
  factory _$$RemoveImageImplCopyWith(_$RemoveImageImpl<T> value,
          $Res Function(_$RemoveImageImpl<T>) then) =
      __$$RemoveImageImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({List<File> images});
}

/// @nodoc
class __$$RemoveImageImplCopyWithImpl<T, $Res>
    extends _$AddPostStateCopyWithImpl<T, $Res, _$RemoveImageImpl<T>>
    implements _$$RemoveImageImplCopyWith<T, $Res> {
  __$$RemoveImageImplCopyWithImpl(
      _$RemoveImageImpl<T> _value, $Res Function(_$RemoveImageImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AddPostState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? images = null,
  }) {
    return _then(_$RemoveImageImpl<T>(
      null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<File>,
    ));
  }
}

/// @nodoc

class _$RemoveImageImpl<T> implements RemoveImage<T> {
  const _$RemoveImageImpl(final List<File> images) : _images = images;

  final List<File> _images;
  @override
  List<File> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'AddPostState<$T>.removeImage(images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveImageImpl<T> &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_images));

  /// Create a copy of AddPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveImageImplCopyWith<T, _$RemoveImageImpl<T>> get copyWith =>
      __$$RemoveImageImplCopyWithImpl<T, _$RemoveImageImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CreatePostResponse createPostResponse) success,
    required TResult Function(ApiErrorModel apiErrorModel) failure,
    required TResult Function(List<File> images) imageSelected,
    required TResult Function(List<File> images) removeImage,
  }) {
    return removeImage(images);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CreatePostResponse createPostResponse)? success,
    TResult? Function(ApiErrorModel apiErrorModel)? failure,
    TResult? Function(List<File> images)? imageSelected,
    TResult? Function(List<File> images)? removeImage,
  }) {
    return removeImage?.call(images);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CreatePostResponse createPostResponse)? success,
    TResult Function(ApiErrorModel apiErrorModel)? failure,
    TResult Function(List<File> images)? imageSelected,
    TResult Function(List<File> images)? removeImage,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(images);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(Loading<T> value) loading,
    required TResult Function(Success<T> value) success,
    required TResult Function(Error<T> value) failure,
    required TResult Function(ImageSelected<T> value) imageSelected,
    required TResult Function(RemoveImage<T> value) removeImage,
  }) {
    return removeImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(Success<T> value)? success,
    TResult? Function(Error<T> value)? failure,
    TResult? Function(ImageSelected<T> value)? imageSelected,
    TResult? Function(RemoveImage<T> value)? removeImage,
  }) {
    return removeImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(Loading<T> value)? loading,
    TResult Function(Success<T> value)? success,
    TResult Function(Error<T> value)? failure,
    TResult Function(ImageSelected<T> value)? imageSelected,
    TResult Function(RemoveImage<T> value)? removeImage,
    required TResult orElse(),
  }) {
    if (removeImage != null) {
      return removeImage(this);
    }
    return orElse();
  }
}

abstract class RemoveImage<T> implements AddPostState<T> {
  const factory RemoveImage(final List<File> images) = _$RemoveImageImpl<T>;

  List<File> get images;

  /// Create a copy of AddPostState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveImageImplCopyWith<T, _$RemoveImageImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
