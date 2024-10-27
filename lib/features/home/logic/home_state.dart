import 'package:circle_sync/core/networks/api_error_handler.dart';
import 'package:circle_sync/features/home/data/models/post_details_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.postsLoading() = PostsLoading;
  const factory HomeState.postsLoaded(List<Post> posts) = PostsLoaded;
  const factory HomeState.postsError(ErrorHandler errorHandler) = PostsError;
  const factory HomeState.changeScreen(int index) = ChangeScreen;

  const factory HomeState.postLoading() = PostLoading;
  const factory HomeState.postLoaded(Post post) = PostLoaded;
  const factory HomeState.postError(ErrorHandler errorHandler) = PostError;

}
