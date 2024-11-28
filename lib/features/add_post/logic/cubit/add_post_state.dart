// ignore_for_file: depend_on_referenced_packages
import 'package:circle_sync/core/networks/api_error_model.dart';
import 'package:circle_sync/features/add_post/data/models/create_post_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_post_state.freezed.dart';


@freezed
 class AddPostState<T> with _$AddPostState<T> {
  const factory AddPostState.initial() = _Initial;
  const factory AddPostState.loading() = Loading;
  const factory AddPostState.success(CreatePostResponse createPostResponse) = Success;
  const factory AddPostState.failure(ApiErrorModel apiErrorModel) = Error;
 }

