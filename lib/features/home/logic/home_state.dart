import 'package:circle_sync/core/networks/api_error_model.dart';
import 'package:circle_sync/features/home/data/models/home_responses.dart';
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

}
