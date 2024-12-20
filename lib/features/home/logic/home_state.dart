// ignore_for_file: depend_on_referenced_packages
import 'package:circle_sync/core/networks/api_error_model.dart';
import 'package:circle_sync/features/home/data/models/home_responses.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.postsLoading() = PostsLoading;
  const factory HomeState.postsLoaded(List<Post> posts) = PostsLoaded;
  const factory HomeState.postsError(ApiErrorModel apiErrorModel) = PostsError;
  const factory HomeState.changeScreen(int index) = ChangeScreen;

  const factory HomeState.postLoading() = PostLoading;
  const factory HomeState.postLoaded(Post post) = PostLoaded;
  const factory HomeState.postError(ApiErrorModel apiErrorModel) = PostError;

  const factory HomeState.likePostLoading() = LikePostLoading;
  const factory HomeState.likePostSuccess() = LikePostSuccess;
  const factory HomeState.likePostError(ApiErrorModel apiErrorModel) = LikePostError;

  const factory HomeState.unlikePostLoading() = UnlikePostLoading;
  const factory HomeState.unlikePostSuccess() = UnlikePostSuccess;
  const factory HomeState.unlikePostError(ApiErrorModel apiErrorModel) = UnlikePostError;

  const factory HomeState.commentLoading() = CommentLoading;
  const factory HomeState.localCommentAdded(List<Comment> comments) = LocalCommentAdded;
  const factory HomeState.commentSuccess() = CommentSuccess;
  const factory HomeState.commentError(ApiErrorModel apiErrorModel) = CommentError;

  const factory HomeState.updateCommentLoading() = UpdateCommentLoading;
  const factory HomeState.updateCommentSuccess() = UpdateCommentSuccess;
  const factory HomeState.updateCommentError(ApiErrorModel apiErrorModel) = UpdateCommentError;

  const factory HomeState.deleteCommentLoading() = DeleteCommentLoading;
  const factory HomeState.deleteCommentSuccess() = DeleteCommentSuccess;
  const factory HomeState.deleteCommentError(ApiErrorModel apiErrorModel) = DeleteCommentError;

  const factory HomeState.updatePostLoading() = UpdatePostLoading;
  const factory HomeState.updatePostSuccess() = UpdatePostSuccess;
  const factory HomeState.updatePostError(ApiErrorModel apiErrorModel) = UpdatePostError;

  const factory HomeState.deletePostLoading() = DeletePostLoading;
  const factory HomeState.deletePostSuccess() = DeletePostSuccess;
  const factory HomeState.deletePostError(ApiErrorModel apiErrorModel) = DeletePostError;

  const factory HomeState.toggleLike() = ToggleLike;

  const factory HomeState.toggleExpanded() = ToggleExpanded;

  const factory HomeState.getUserId() = GetUserId;

  const factory HomeState.updateLikeStatusOnServer() = UpdateLikeStatusOnServer;




}
