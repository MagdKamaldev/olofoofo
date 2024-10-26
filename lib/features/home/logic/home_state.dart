import 'package:circle_sync/core/networks/api_error_handler.dart';
import 'package:circle_sync/features/home/data/models/post_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.postsLoading() = PostsLoading;
  const factory HomeState.postsLoaded(List<Post> posts) = PostsLoaded;
  const factory HomeState.postsError(ErrorHandler errorHandler) = PostsError;
  const factory HomeState.changeScreen(int index) = ChangeScreen;
}
